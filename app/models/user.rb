class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :listings

  #validate names have chars and max length 
  validates :first_name, presence: true
  validates_length_of :first_name, within: 1..30, too_long: "Please ensure first name is less than 30 characters long"

  validates :surname, presence: true
  validates_length_of :surname, within: 1..30, too_long: "Please ensure surname is less than 30 characters long"

  #validate email is present and unique 

  validates :email, presence: true, uniqueness: { case_sensitive: false }

  # validates bio is not too long
  validates :bio, length: { maximum: 450, too_long: "Please ensure biography is less than 250 characters long" }

  has_one_attached :profile_photo

  has_one :location, dependent: :destroy
  accepts_nested_attributes_for :location

  has_one :cart
end
