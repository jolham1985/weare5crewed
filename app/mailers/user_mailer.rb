class UserMailer < ApplicationMailer
  def welcome(user, issue)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: "Welcome to 5crewed! #{issue.name}!!!")
    # This will render a view in `app/views/user_mailer`!
  end

  def invitation(email, apartment_id)
    @apartment_id = apartment_id
    @email = email
    mail(to: email, subject: "Someone invites you on 5crewed!")


  end
end
