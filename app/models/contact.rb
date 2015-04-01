class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :messages

  validates :phone_number, presence: true
  validates :name, presence: true
end
