class User < ApplicationRecord
    has_many :recipients_users
    has_and_belongs_to_many :recipients
    validates :username,presence: true
    validates :password, presence: true
    validates :name, presence: true
    validates :busho, presence: true
end
