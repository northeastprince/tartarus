class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  before_action :set_current_request_details

  private

  def set_current_request_details
    Current.request_uuid = request.uuid
    Current.ip_address = request.remote_ip
    Current.user_agent = request.user_agent
  end
end
