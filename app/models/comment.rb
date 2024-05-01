class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gossip
  validates :user_id,
  presence: true,
  numericality: { only_integer: true }
  validates :gossip_id,
  presence: true,
  numericality: { only_integer: true }
  validates :content,
  presence: true
end
