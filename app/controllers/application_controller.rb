class ApplicationController < ActionController::API
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    # before_action :authorize_user

    def current_user
        User.find_by(id: session[:current_user])
    end

    def authorize_user
        return render json: { error: "Not Authorized" }, status: :unauthorized unless current_user
    end
    
    private
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

    def render_not_found_response(invalid)
        render json: { errors: invalid }, status: :not_found
    end
end

