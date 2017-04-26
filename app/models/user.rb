class User < ApplicationRecord
    has_one :like
    has_one :post, through: :like
    has_many :comments
    has_many :posts, through: :comments
    has_many :posts


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
