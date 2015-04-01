require 'rails_helper'

describe User do
  it { should have_many :messages }
  it { should have_many :contacts }
  
  it { should validate_uniqueness_of :phone_number }
end
