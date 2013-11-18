class Notifications < ActionMailer::Base
  default from: "hello@duecourse.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_user.subject
  #
  def protect_against_forgery?
      false
  end

  def new_course (course)

    @course = course
    mail( :to => @course.user.email,
    :subject => 'Idea submitted!')
    @greeting = "Oh, hey there!"
    @id = course.topic

  end

  def new_user (user)

    @user = user
    mail( :to => @user.email,
    :subject => 'Welcome to DueCourse!')
    @greeting = "Oh, hey there!"
    @id = user.name

  end

end
