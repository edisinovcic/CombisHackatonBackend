class UserController < ActionController::API
  #index, create, new, edit, show, update, destroy
  def create
    #user = User.new(:params[:user])
  end

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def get_user_id
    user = User.find_by_email(params[:email])
    render json: user
  end

end
