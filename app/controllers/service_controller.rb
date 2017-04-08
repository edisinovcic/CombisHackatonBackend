class ServiceController < ActionController::API
  def index
    @services = User.find(params[:user_id]).services.all
    render json: @services
  end

  def show
    @service = User.find(params[:user_id]).services(params[:id])
    render json: @service
  end

  def create
    parsed_json = ActiveSupport::JSON.decode(params[:user_id])
    parsed_json[]
    @service = Service.new(params[:user_id])



  end

  def new

  end

  def update
  end

  def destroy

  end
end
