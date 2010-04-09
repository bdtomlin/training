require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  should_validate_presence_of :title, :body
  
  should_have_many :comments
  
  test "published method only returns published articles" do
    article1 = Factory.create(:article, :title => "published article", :published => true)
    article2 = Factory.create(:article, :title => "unpublished article", :published => false)
    
    assert_equal [article1], Article.published_articles
  end
  
    
end
