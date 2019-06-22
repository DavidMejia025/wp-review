class PullRequest < ApplicationRecord
  belongs_to :developer, :ticket, :sub_ticket
  has_many   :comments, :commits

  validates :name, :rol,  presence: true

#TODO add scopes.
end
