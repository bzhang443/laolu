# == Schema Information
#
# Table name: sessions
#
#  id          :bigint(8)        not null, primary key
#  token       :string(255)
#  customer_id :integer
#  device_id   :integer
#  ip_address  :string(255)
#  geo         :string(255)
#  expire_at   :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :session do
    token { "MyString" }
    customer_id { 1 }
    device_id { 1 }
    ip_address {"192.168.12.34"}
    geo {"113.21|40.23"}
    expire_at { "2018-10-04 09:29:17" }
  end
end
