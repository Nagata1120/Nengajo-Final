class RecipientsUser < ApplicationRecord
    belongs_to :recipient
    belongs_to :user
end
