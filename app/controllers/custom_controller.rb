class CustomController < ApplicationController
  
  def send_email
    recipients=params[:recipient].split(',')
    page_url=params[:page_url]
    subject=params[:subject]
    email_message=params[:email_message]
    for recipient in recipients
       Emailer.deliver_send_email(page_url, recipient, subject, email_message)
    end
  end
  
end
