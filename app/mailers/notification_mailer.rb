class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomster-bhays.com"

  def comment_added
  	mail(to: "brian.hays@gmail.com",
         subject: "A comment has been added to your place")
  end
end
