class User < ApplicationRecord
    validates :username, uniqueness: true
    validates :username, presence: true
    has_many :operators, dependent: :destroy
    has_secure_password
end
