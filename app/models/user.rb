class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Establishes relationship between a user and listing table:
  has_many :listings

  #validate names are not blank or exceed a maximum length 
  validates :first_name, presence: true
  validates_length_of :first_name, within: 1..30, too_long: "Please ensure first name is less than 30 characters long"
  validates :surname, presence: true
  validates_length_of :surname, within: 1..30, too_long: "Please ensure surname is less than 30 characters long"

  #validate email is not blank or taken by another user 
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  # validates bio is not too long
  validates :bio, length: { maximum: 450, too_long: "Please ensure biography is less than 250 characters long" }

  # Uses active record to attach image file to user 
  has_one_attached :profile_photo

  # Allows user to have one location (which consists of the address attributes and ensures that is removed from database if the user is removed so it does not leave an orphaned record)
  # The attribute nesting allows the use of the attributes within location table to be used by the user (for example entering address in the sign up form)
  has_one :location, dependent: :destroy
  accepts_nested_attributes_for :location, update_only: :true

  # Allows user to make multiple transactions and creates new empty cart after each transaction
  has_many :carts

  # Set the search options for drop down selections in forms:
  def self.search_select_options
    grower_list = User.all.collect do |user|
      [user.first_name, user.first_name]
    end
  end
end
