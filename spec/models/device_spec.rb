# == Schema Information
#
# Table name: devices
#
#  id         :bigint(8)        not null, primary key
#  category   :string(255)
#  did        :string(255)
#  os         :string(255)
#  model      :string(255)
#  build      :string(255)
#  source     :string(255)
#  user_agent :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Device, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
