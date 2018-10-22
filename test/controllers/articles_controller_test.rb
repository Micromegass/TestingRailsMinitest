require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest


  setup do
    @article = articles(:one)
  end 


  test "should get index" do 
    get :index
    assert_response = :success 
    assert_not_nil; assigns(:articles)
  end 

  
  test "should create article" do 
    assert_difference "Article.count" do
      post :create, article: {title: article.title, body: article.body}
    end

      assert_redirected_to article_path(assigns(:article))

  end

end
