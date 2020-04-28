class JobsController < ApplicationController
  def new
    @enquiry = Enquiry.find(params[:enquiry].to_i)
    @job = Job.new
  end

  def create
    @job = Job.new
    @job.enquiry = Enquiry.find(params[:job][:enquiry_id].to_i)
    @job.time = DateTime.new(@job.enquiry.date.year, @job.enquiry.date.month, @job.enquiry.date.mday, Time.parse(params[:job][:time]).hour, Time.parse(params[:job][:time]).min, 0)
    if @job.save
      @job.enquiry.confirm
      redirect_to profile_path
    else
      raise
    end
    # @job.time = Time.parse(params[:job][:time], @job.enquiry.date)
    # raise
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
