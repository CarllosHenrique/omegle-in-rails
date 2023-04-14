class User < ApplicationRecord
    has_many :messages, dependent: :destroy

    validates_presence_of :nick, message: "can't be blank"
    after_create_commit { broadcast_append_to "users" }
end
