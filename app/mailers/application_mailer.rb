class ApplicationMailer < ActionMailer::Base
  default from: "#{Figaro.env.gmail_username }@gmail.com"
  layout 'mailer'
end
