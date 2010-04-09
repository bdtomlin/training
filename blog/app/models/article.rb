class Article < ActiveRecord::Base
  has_many :comments
  
  named_scope :published_articles, {:conditions => {:published => true}}
  
  validates_presence_of :title, :body
end
