class User < ApplicationRecord

  before_save { self.email = email.downcase }
  validates :first_name, presence: true
  validates :last_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  validates :password, presence: true, length: { minimum:6, maximum:30 }
  validates :tel_number, presence: true
  has_secure_password

  attr_accessor :first_name, :other_name, :last_name, :guardian,
                :email, :tel_number, :password

  def initialize attribute = {}
    @firstname = attribute[:first_name]
    @lastname  =  attribute[:last_name]
    @email = attribute[:email]
    @password = attribute[:password]
  end


  private
    
end
