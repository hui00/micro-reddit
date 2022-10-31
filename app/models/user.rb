# email: string
# username: string
# password_digest: string
# password_confirmation: string, optional

class User < ApplicationRecord
  has_secure_password
  has_many :posts
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "must be a valid email address :)" }
  validates :password, presence: true, length: { in: 4..20 }, format: { with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+\z/, message: "must contain at least one lowercase letter, one uppercase letter, and one digit" }

end
