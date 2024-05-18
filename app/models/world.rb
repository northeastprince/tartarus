class World < ApplicationRecord
  has_secure_token

  include Name
  include Recorded

  has_many :prisons, dependent: :destroy
end
