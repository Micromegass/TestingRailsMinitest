require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  
  
  test "the truth" do
    assert true
  end


 test "article should have a title" do
  @article = Article.new
  assert_not @article.save
 end 

# test "this test should throw an error" do
#   undefined variable
#   assert true
# end 


test "capitalize title should return an article with capitalized title" do
  @article = Article.new(title: "hola")
  @article.capitalize_title
  assert_equal 'Hola', @article.title
end 

end
