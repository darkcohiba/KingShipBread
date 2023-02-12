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



# rails routes

# index
# def index
#     render json: Object.all
# end

# get "/objects", to: 'objects#index'

# show
# def show
#     render json: @object
# end

# def show
#     object = Object.find(params[:id])
#     render json: object
# end

# get "/objects/:id", to: 'objects#show'


# create
# def create
#     object = Object.create!(object_params)
#     render json: object, status: :created
# end

# post "/objects", to: 'objects#create'


# patch
# def update
#     @object.update!(object_params)
#     render json: @object, status: :accepted
# end

# patch "/objects/:id", to: 'objects#update'

# delete
# def destroy
#     @object.destroy
#     head :no_content
# end

# delete "/objects/:id", to: 'objects#delete'

# private methods

# find by id method
# def select_object_by_id
#     @object = Object.find(params[:id])
# end

# def object_params
#     params.permit(:first_name, :last_name)
# end