module Nyauth
  class ResetPasswordRequestService
    include ActiveModel::Model
    attr_reader :email, :client

    def initialize(reset_password_request_service_params = {})
      @email = reset_password_request_service_params[:email]
    end

    def save(options = {})
      options.reverse_merge!(as: :user)
      klass = options[:as].to_s.classify.constantize
      @client = klass.find_by!(email: @email)
      @client.request_reset_password
    rescue
      errors.add(:base, :invalid_email)
    end
  end
end
