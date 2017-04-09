class ReserveController < ApplicationController
  def index
    reserves = User.find(params[:user_id]).services.find(params[:id_service]).reserve.all
    render json: reserves
  end

  def show
    reserve = User.find(params[:user_id]).services.find(params[:id_service]).reserve.find(params[:id])
    render json: reserve
  end

  def create
    reserve = Reserve.new
    #reserve.id_reserve = params[:id_reserve]
    reserve.id_user = params[:id_user]
    reserve.id_service = params[:id_service]
    reserve.amount = params[:amount]
    reserve.date = params[:date]
    reserve.status = params[:status]
    puts reserve.to_json
    #@reserves = User.find(reserve.id_user).services.find(reserve.id_service).reserve.all
    #reserve.id = @reserves.size + 1
    reserve.errors.full_messages
    reserve.save
    puts reserve.id
    puts "Saveano"
  end

  def new

  end

  def update

  end

  def delete

  end



end
