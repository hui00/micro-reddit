# user_id
# post_id
# body string
# body with minimum length

class Comment < ApplicationRecord
  validates :body, presence: true, length: { minimum: 20 }
  belongs_to :user
  belongs_to :post
end
