class Event::Request < ApplicationRecord
  belongs_to :event

  before_validation :set_from_current, on: :create
  validates_presence_of :uuid, :ip_address

  private

  def set_from_current
    self.uuid ||= Current.request_uuid
    self.ip_address ||= Current.ip_address
    self.user_agent ||= Current.user_agent
  end
end
