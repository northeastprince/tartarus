module Recorded
  extend ActiveSupport::Concern

  included do
    has_many :events, as: :recordable

    after_create { record :created }
  end

  private

  def record(action, **details)
    events.create! action:, details:
  end
end
