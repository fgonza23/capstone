class Api::DonationRequestsController < ApplicationController

  before_action :authenticate_user


  def index

    @donation_request = current_user.donation_requests
    # @donation_request = DonationRequest.all

    search_term = params[:search]
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]

    if search_term
      @donation_requests = @donation_requests.where("name iLIKE ?", "%#{search_term}%")
    end

    if sort_order && sort_attribute
      @donation_requests = @donation_requests.order(sort_attribute => sort_order)
    elsif sort_attribute
      @donation_requests = @donation_requests.order(sort_attribute)
    end 

    render 'index.json.jbuilder'
  end


  def create
    @donation_request = DonationRequest.new(
                                            user_id: current_user.id,
                                            date: params[:date],
                                            meal: params[:meal],
                                            family_size: params[:family_size]
                                            )
    if @donation_request.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @donation_request.errors.full_messages}, status: :unprocessable_entity
    end
  end


  def show
    @donation_request = DonationRequest.find(params[:id])
    render 'show.json.jbuilder'
  end


  def update
    @donation_request = DonationRequest.find(params[:id])

    @donation_request.date = params[:date] || @donation_request.date
    @donation_request.meal = params[:meal] || @donation_request.meal
    @donation_request.family_size = params[:family_size] || @donation_request.family_size

    if donation_request.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @donation_request.errors.full_messages}, status: :unprocessable_entity
    end
  end
    

  def destroy
    @donation_request = DonationRequest.find(params[:id])
    @donation_request.destroy
    render json: {message: "Donation request cancelled"}
  end
end

    
