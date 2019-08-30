class Post < ApplicationRecord
  validates :content, { presence: :true, length: {maximum:100} }
  mount_uploader :photo, PhotoUploader

  def user
    return User.find_by(id: self.user_id)
  end
end
