class Current < ActiveSupport::CurrentAttributes
  attribute :world

  attribute :request_uuid, :ip_address, :user_agent
end
