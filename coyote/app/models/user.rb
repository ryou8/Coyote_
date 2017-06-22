class User < ActiveRecord::Base
  validates :password, :presence => true, :confirmation => true

  
  
   def self.authenticate(email, password)
       where(:email => email, :password => password).first
   end
  
   private
     def digest_password
          self.password = Digest::SHA1.hexdigest(self.password)
     end

end
