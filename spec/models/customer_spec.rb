# == Schema Information
#
# Table name: customers
#
#  id         :bigint(8)        not null, primary key
#  email      :string(255)
#  password   :string(255)
#  name       :string(255)
#  mobile     :string(255)
#  country    :string(255)
#  dob        :date
#  address    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Customer, type: :model do
  it {should have_many(:sessions)}
  it {should validate_presence_of(:email)}
end
