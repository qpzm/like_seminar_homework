class User < ApplicationRecord
  has_many :likes
  has_many :like_posts, through: :likes, source: :post
  has_many :comments
  has_many :commented_posts, through: :comments, source: :post
  has_many :posts


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
