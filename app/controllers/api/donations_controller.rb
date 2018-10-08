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
  end
end
