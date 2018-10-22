

class UserFlowTest < ActionDispatch::IntegrationTest

    tests "Login and browse" do

        get "/users/sign_in"
        post_via_redirect '/users/sign_in', user: {email:users(:juan).email, password: '123456'}

        assert_equal '/', path

    end 

end 