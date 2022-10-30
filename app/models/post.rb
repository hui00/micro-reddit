# id int
# user_id int
# title string
# body text

class Post < ApplicationRecord
  belongs_to :user
end
