class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :election

  validates_uniqueness_of :election_id, scope: [:user_id]
end
