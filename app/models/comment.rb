class Comment < ApplicationRecord

belongs_to :user
belongs_to :manga
validates :user_id, :presence => true
validates :manga_id, :presence => true
validates :body, :presence => true


end
