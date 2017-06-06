class Like < ApplicationRecord

  belongs_to :user
  belongs_to :manga
  validates :user_id, :presence => true
  validates :user_id, :uniqueness => { :scope => [:manga_id] }
  validates :manga_id, :presence => true




end
