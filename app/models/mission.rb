class Mission < ApplicationRecord
  belongs_to :destination
  belongs_to :spaceship
  belongs_to :user
end
