class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new

  end

  def create
     @job = job.new(job_params)
     if @job.save
       redirect_to job_path(@job)
     else
       render 'new'
     end
  end

  def edit
  end

  def show
  end

  def update
  end

  private
  def job_params
    params.require(:job).permit(:description, :origin, :destination, :cost, :containerCount)
  end
end
