require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  
  
  test "the truth" do
    assert true
  end


 test "article should have a title" do
  @article = Article.new
  assert_not @article.save
 end 




end
