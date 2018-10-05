module Api
  class CustomerController < ApiController

    def sign_up
      raise AuthenticationError
    end

    def sign_in
    end

    def get_info
      he = Customer.first
      obj = {
          email: he.email,
          name: he.name,
          mobile: he.mobile,
          birthday: he.dob,
          kick: CustomerService.kick
      }
      json_response(obj)
    end

    def reset_pass
    end

    def update_info
    end

  end
end
