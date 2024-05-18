class World < ApplicationRecord
  has_secure_token

  include Name

  has_many :prisons, dependent: :destroy
end
