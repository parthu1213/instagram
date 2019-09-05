class Post < ApplicationRecord
  belongs_to :user,optional: true
  has_many :post_hash_tags
  has_many :hash_tags, through: :post_hash_tags
#   validate :image_presence
# def image_presence
#   errors.add(:image, "can't be blank") unless image.attached?
# end
has_one_attached :image
end
