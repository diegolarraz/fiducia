class EnquiriesController < ApplicationController
  def new
    @enquiry = Enquiry.new
    @contractor = User.find(params[:contractor_id])

  end

  def create
    @enquiry = Enquiry.new(enquiry_params)
    @enquiry.user = current_user
    @enquiry.contractor = User.find(params['enquiry']['contractor_id'].to_i)

    if @enquiry.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:title, :property_address, :information, :timeslot, :date, :contractor_id)
  end

end
