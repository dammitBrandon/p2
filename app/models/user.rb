class User < ActiveRecord::Base
  has_many :event_attendances
  has_many :events, :through => :event_attendances

  validates :email, :format => { :with => /[a-zA-z0-9]+@[a-zA-z0-9]+.[a-zA-z0-9]+/ }
end
