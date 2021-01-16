class User < ApplicationRecord
    has_many :assignments
    has_many :jobs, :through => :assignments
    has_secure_password #authenticate, validates password

    # has_many :comments
    # has_many :comments, :through => :jobs   
end