class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, :body, presence: true

  COLOR = ["red", "orange", "green", "syan"]
  FONT_SIZE = ["10", "20", "30", "40"]
  FONT_STYLE = ["normal", "italic", "oblique"]
end
