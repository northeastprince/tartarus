class Event < ApplicationRecord
  belongs_to :recordable, polymorphic: true

  validates_presence_of :action
  serialize :details, coder: JSON

  has_one :request, dependent: :destroy
  before_create :build_request
end
