class Emailer < ActionMailer::Base
  
  def send_email(page_url, recipient, subject, email_message)
    @recipients  = recipient
    @from        = 'admin@cms.com'
    @subject     = subject
    @sent_on     = Time.now
    @content_type="text/html"
    @body[:email_message] = email_message
    @body[:page_url] = page_url
  end

end
