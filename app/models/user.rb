class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :igtvs, dependent: :destroy
  has_many :taggeds, dependent: :destroy
  has_many :saveds, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  acts_as_followable
  acts_as_follower
  has_one_attached :avatar
end
