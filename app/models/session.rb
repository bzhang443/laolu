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

class Session < ApplicationRecord
  belongs_to :customer
  belongs_to :device
end
