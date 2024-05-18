class Inmate < ApplicationRecord
  belongs_to :prison

  include Name
  include Recorded
end
