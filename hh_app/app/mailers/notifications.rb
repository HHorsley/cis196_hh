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
    @greeting = "Oh, hey there!"
    @id = course.topic


    mail to: course.user.email
  end
end
