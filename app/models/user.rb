class User < ActiveRecord::Base
validates :name,presence:true
validates :userid, presence:true,uniqueness:true
validates :password, presence:true

end
