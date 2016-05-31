class User < ActiveRecord::Base
  devise :zxcvbnable

  # Optionally add more weak words to check against:
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :zxcvbnable

  has_many :posts
end
