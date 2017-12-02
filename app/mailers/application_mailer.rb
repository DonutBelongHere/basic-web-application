class ApplicationMailer < ActionMailer::Base
  default to: "info@musiclibrary.com", from: "info@musiclibrary.com"
  layout 'mailer'
end
