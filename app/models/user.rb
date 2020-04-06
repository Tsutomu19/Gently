class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  attachment :profile_image

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
