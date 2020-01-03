class Post < ApplicationRecord
  validates :content, { presence: :true, length: {maximum:100} }
  validates :food_name, { presence: :true, length: {maximum:15} }
  validates :photo, {presence: true}
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def user
    return User.find_by(id: self.user_id)
  end
end
