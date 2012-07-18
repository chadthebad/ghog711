class User < ActiveRecord::Base
  has_many :albums
  attr_accessible :name, :password

  def self.authenticate(name, password)
    # load the user based on the name
    u = User.find(:first, :conditions => {:name => name})

    # check that the user password matches what is in the database 
    if u and u.password == password
      return u
    end
  end

end
