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

FactoryBot.define do
  factory :customer do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    name { Faker::Name.name }
    mobile { Faker::PhoneNumber.cell_phone }
    country { Faker::Address.country_code }
    dob {Faker::Date.birthday(18, 65) }
    address { Faker::Address.full_address }
  end
end
