class User < ActiveRecord::Base
      has_many :microposts, :dependent => :destroy
      has_many :relationships, :foreign_key => "follower_id",
                               :dependent => :destroy
      has_many :following, :through => :relationships, :source => :followed

      belongs_to :city
      has_and_belongs_to_many :deals
 
      has_many :dealattendees
      has_many :deals, :through => :dealattendee

      has_many :productlikes
      has_many :products, :through => :productlike


end
