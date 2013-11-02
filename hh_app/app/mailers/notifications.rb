class Notifications < ActionMailer::Base
  default from: "hello@duecourse.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_user.subject
  #
  def new_course
    @greeting = "Oh, hey there!"
    @id = tasklist.id

    mail to: course.user.email
  end
end
