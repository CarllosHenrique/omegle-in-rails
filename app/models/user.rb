class User < ApplicationRecord
    has_many :messages, dependent: :destroy

    validates_presence_of :nick, message: "can't be blank"
end
