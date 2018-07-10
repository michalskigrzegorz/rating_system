require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  
  test 'should be valid when all attributes are set' do
    attrs = { 
      name: 'john',
      email: 'john@example.org',
      body: 'testxyz'
    }

    msg = Message.new attrs
    assert msg.valid?, 'should be valid'
  end

  # counteraction send blank email
  test 'name, email and body are required by law' do
    msg = Message.new

    refute msg.valid?, 'Blank Mesage should be invalid'

    assert_match /blank/, msg.errors[:name].to_s
    assert_match /blank/, msg.errors[:email].to_s
    assert_match /blank/, msg.errors[:body].to_s
  end

end