# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/contact_me
  def contact_me
    message = Message.new name: 'buddy',
    					  	email: 'form.ratsys@invert8.com',
    					  	body: 'This is the body of the email'

    MessageMailer.contact_me message
  end

end
