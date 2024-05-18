class Prison < ApplicationRecord
  belongs_to :world

  include Name

  enum :security_level, %w[minimum maximum].index_by(&:itself), suffix: "_security"
  validates_presence_of :security_level

  has_many :inmates, dependent: :destroy
end
