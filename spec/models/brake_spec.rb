# == Schema Information
#
# Table name: brakes
#
#  id           :bigint(8)        not null, primary key
#  manufacturer :string
#  name         :string
#  price        :decimal(, )      default(0.0)
#  weight       :integer          default(0)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Brake, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
