class UserMailPreview < ActionMailer::UserMailPreview
  def welcome
    @user = User.first
    UserMailer.welcome(@user)
  end
end
