class ReserveController < ApplicationController
  def index
    @reserves = User.find(params[:user_id]).services(params[:id]).reserves.all
    render json: @reserves
  end

  def show
    @reserve = User.find(params[:user_id]).services(params[:id]).reserves(params[:id])
    render json: @reserve
  end

  def create
    reserve = Reserve.new
    reserve.id_reserve = params[:id_reserve]
    reserve.id_user = params[:id_user]
    reserve.amount = params[:amount]
    reserve.date = params[:date]
    reserve.status = params[:status]
    reserve.save
  end

  def new

  end

  def update

  end

  def delete

  end



end
