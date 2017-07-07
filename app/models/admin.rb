class Admin < ApplicationRecord
  attr_accessor :password
  validates_confirmation_of :password
  validates :email, presence: true, uniqueness: true
  before_save :encrypt_password

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
  end

  def self.authenticate(email, password)
    admin = Admin.find_by "email = ?", email
    if admin && admin.password_hash == BCrypt::Engine.hash_secret(password, admin.password_salt)
      admin
    else
      nil
    end
  end
end
