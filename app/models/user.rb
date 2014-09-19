class User < ActiveRecord::Base
  has_many :bookmarks
  has_many :weapons, through: :bookmarks

  validates :username, uniqueness: true, presence: true

  include BCrypt

  # getter
  def password
    @password ||= Password.new(password_hash)
  end

  # setter
  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end

