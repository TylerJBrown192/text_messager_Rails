require 'rails_helper'

describe Message, vcr: true do
  it "doesn't save the message if twilio gives an error" do
    message = Message.new(:body => 'hi', :to => '1111111', :from => '5005550006')
    message.save.should be false
  end

  it 'adds an error if the to number is invalid' do
    message = Message.new(:body => 'hi', :to => '1111111', :from => '5005550006')
    message.save
    message.errors.messages[:base].should eq ["The 'To' number 1111111 is not a valid phone number."]
  end

  it "saves the message into the object" do
    message = Message.new(:body => 'hi', :to => '5035771111', :from => '5005550006')
    message.save.should be true
  end
end
