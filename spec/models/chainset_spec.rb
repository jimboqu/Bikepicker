# == Schema Information
#
# Table name: chainsets
#
#  id           :integer          not null, primary key
#  name         :string
#  manufacturer :string
#  weight       :integer          default(0)
#  price        :decimal(5, 2)    default(0.0)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Chainset, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
