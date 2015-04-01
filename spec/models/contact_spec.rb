require 'rails_helper'

describe Contact do
  it { should have_many :messages }
  it { should belong_to :user }

  it { should validate_presence_of :name }
  it { should validate_presence_of :phone_number }

end
