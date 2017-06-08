class Manga < ApplicationRecord

  belongs_to :user
  has_many :likes, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :fans, :through => :likes, :source => :user

  validates :user_id, :presence => true
validates :title, :presence => true
validates :image, :presence => true
validates :year, :presence => true
validates :author, :presence => true
validates :character, :presence => true
validates :magazine, :presence => true
end
