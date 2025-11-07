class Post < ApplicationRecord
  belongs_to :user
  belongs_to :issue

  has_one_attached :avatar
end
