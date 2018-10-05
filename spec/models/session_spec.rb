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

require 'rails_helper'

RSpec.describe Session, type: :model do
  it {should belong_to(:customer)}
  it {should belong_to(:device)}
end
