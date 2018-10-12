class Bike < ApplicationRecord
  belongs_to :user
  belongs_to :frame
end
