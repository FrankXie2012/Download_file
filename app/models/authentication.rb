class Authentication < ActiveRecord::Base
  attr_accessible :account, :password
end
