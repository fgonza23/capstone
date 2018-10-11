class Api::DonationsController < ApplicationController

  before_action :authenticate_user

  def index

    render 'index.json.jbuilder'
    
  end

  def create
    @donation = Donation.new(
                            donor_id: params[:donor_id],
                            messages: params[:messages],
                            donation_request_id: 
                            )

    donation.save
    render 'show.json.jbuilder'
  end
    

  def destroy
    @donation = Donation.find(params[:id])
    @donation = Donation.update(status: 'removed')
    render json: {status: "Donation has been canceled."}
  end
end
    
