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
    service = Service.new
    service.user_id = params[:user_id]
    service.availability = params[:availability]
    service.description = params[:description]
    service.reservation_type = params[:reservation_type]
    service.title = params[:title]
    service.service_id = 1
    service.save

  end

  def new

  end

  def update
  end

  def destroy

  end
end
