class Tournament < ActiveRecord::Base
  attr_accessible :n_part, :name, :user_id, :parts
  belongs_to :user
  has_many :matches, dependent: :destroy
  has_many :participants, dependent: :destroy
  validates :name, presence: true, length: { maximum: 50 }
  validates :parts, presence: true
  validates :user_id, presence: true
  default_scope order: 'tournaments.created_at DESC'

end
