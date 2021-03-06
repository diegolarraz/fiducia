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
      @job.enquiry.update(confirmed: true)
      redirect_to profile_path
    else
      redirect_to profile_path
    end
  end

  def edit
  end

  def update
    @job = Job.find(params[:id])
    if params[:completed] == 'true'
      @job.mark_as_complete
      # raise
      redirect_to profile_path
    else
      @job.update(job_params)
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to profile_path
  end

  private

  def job_params
    params.require(:job).permit(:completed)
  end

end
