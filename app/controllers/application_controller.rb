class ApplicationController < ActionController::API
    include ActionController::Cookies


    def hello_world
        session[:count] = (session[:count] || 0) + 1
        render json: { count: session[:count] }
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