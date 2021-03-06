require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
    def setup
      @user = User.new(first_name: "Example User", last_name: "Example User", email: "user@example.com",
      password: "foobar", password_confirmation: "foobar")
    end
  
    test "email addresses should be unique" do
      duplicate_user = @user.dup
      duplicate_user.email = @user.email.upcase
      @user.save
      assert_not duplicate_user.valid?
      end
end
