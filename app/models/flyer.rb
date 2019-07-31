class Flyer < ApplicationRecord
  belongs_to :user
  belongs_to :project
  belongs_to :category
  has_many :flyers_attended_by_users
  has_many :users, through: :flyers_attended_by_users
  def self.search(term)
    if term
      where('title ILIKE ?', "%#{term}%")
    else
      all
    end
  end
end
