class ServiceController < ActionController::API

  def index
    @services = User.find(params[:user_id]).services.find(all)
    render json: @services
  end

  def show
    @service = User.find(params[:user_id]).services.find(params[:id])
    render json: @service
  end

  def create
    service = Service.new
    service.user_id = params[:user_id]
    service.availability = params[:availability]
    service.description = params[:description]
    service.reservation_type = params[:reservation_type]
    service.title = params[:title]
    service.service_id = params[:id_service]
    @services = User.find(service.user_id).services.all
    service.id = @services.size + 1
    service.save
  end

  def new

  end

  def update
  end

  def destroy

  end
end
