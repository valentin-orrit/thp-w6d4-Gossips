class Gossip < ApplicationRecord
    belongs_to :user
    has_many :gossip_tags
    has_many :tags, through: :gossip_tags
    validates :title, presence: true, length: { in: 3..14 } 
    validates :description, presence: true
    has_many :comments
    has_many :users, through: :comments
end
