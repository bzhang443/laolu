module Api
  # Define custom error subclasses - rescue catches `StandardErrors`
  class AuthenticationError < StandardError; end
  class MissingToken < StandardError; end
  class InvalidToken < StandardError; end

  class ApiController < ActionController::API
    # Define custom handlers
    rescue_from ActiveRecord::RecordInvalid, with: :four_twenty_two
    rescue_from AuthenticationError, with: :unauthorized_request
    rescue_from MissingToken, with: :four_twenty_two
    rescue_from InvalidToken, with: :four_twenty_two

    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ message: e.message }, :not_found)
    end

    def json_response(object, status = :ok)
      render json: object, status: status
    end

    private

    # JSON response with message; Status code 422 - unprocessable entity
    def four_twenty_two(e)
      json_response({ message: e.message }, :unprocessable_entity)
    end

    # JSON response with message; Status code 401 - Unauthorized
    def unauthorized_request(e)
      json_response({ message: e.message }, :unauthorized)
    end
  end
end
