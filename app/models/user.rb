class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  validates :name, presence: true, uniqueness: true

  has_many :games, dependent: :destroy
  has_many :players, dependent: :destroy
end
