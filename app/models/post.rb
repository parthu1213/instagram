class Post < ApplicationRecord
  belongs_to :user,optional: true
  has_one_attached :image
  has_one_attached :avatar


  validate :image_presence
def image_presence
  errors.add(:image, "can't be blank") unless image.attached?
end

end
