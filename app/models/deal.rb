class Deal < ActiveRecord::Base
     belongs_to :city
     has_and_belongs_to_many :users

     has_many :dealattendees
     has_many :users, :through => :dealattendee

end
