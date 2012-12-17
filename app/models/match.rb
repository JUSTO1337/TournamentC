class Match < ActiveRecord::Base
  attr_accessible :result, :tournament_id
  belongs_to :tournament
end
