class Tournament < ActiveRecord::Base
  attr_accessible :category, :n_part, :name, :t_type, :user_id
  belongs_to :user
  validates :user_id, presence: true
  default_scope order: 'tournaments.created_at DESC'

end
