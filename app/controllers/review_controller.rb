class ReviewController < ApplicationController
    def index
      @reviews = User.find(params[:id]).services(params[:id]).reviews.all
      render json: @reviews
    end

    def show
      @review = User.find(params[:user_id]).services(params[:service_id]).reviews(params[:id])
      render json: @review
    end

    def create
      review = Review.new
      review.id_review = params[:id_review]
      review.id_service = params[:id_service]
      review.id_user_commented = params[:id_user_commented]
      review.description = params[:description]
      review.grade = params[:grade]
      review.save
    end

    def new

    end

    def update

    end

    def delete

    end



end
