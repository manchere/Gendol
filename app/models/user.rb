class User < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, 
            uniqueness: { case_sensitive: false }
  validates :password
  validates :encrypted_password
  validates :tel_number
  

  attr_accessor :first_name, :other_name, :last_name, :email, :guardian,
                :email, :tel_number, :encrypted_password, :password, :

  def initialize attribute = {}
    @firstname = attributes[:first_name]
    @lastname  =  attributep[:last_name]
    @email = attribute[:email]
  end


  private
    
end
