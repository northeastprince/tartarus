class Inmate < ApplicationRecord
  belongs_to :prison

  include Name
end
