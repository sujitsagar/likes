class Product < ActiveRecord::Base

       has_many :productlikes
       has_many :users, :through => :productlike

end
