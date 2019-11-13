class User < ApplicationRecord
    validates :username, uniqueness: true
    has_many :operators
    has_secure_password
end
