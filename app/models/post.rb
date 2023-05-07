class Post < ApplicationRecord

    def comments
      Comment.where(post_id: self.id)
    end
end
