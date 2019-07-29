class FlyerAttendedByUser < ApplicationRecord
  belongs_to :user
  belongs_to :flyer
end
