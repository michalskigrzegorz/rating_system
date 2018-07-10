require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase
  
  test "contact_me" do
  	message = Message.new name: 'robin',
  	  						email: 'robin@example.com',
  	  							body: 'hello, how are you doing?'

  	email = MessageMailer.contact_me(message)

  	assert_emails 1 do
  	  email.deliver_now
  	end

  	assert_equal 'Message from www.ratingsys.invert8.com', email.subject
  	assert_equal ['denisberkamp@holland.com'], email.to
  	assert_equal ['robin@example.com'], email.from
  	assert_match /hello, how are you doing?/, email.body.encoded
  end

end
