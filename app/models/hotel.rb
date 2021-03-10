class Hotel < ApplicationRecord
    belongs_to :user
    has_many :reserve_infos
end
