class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new

  end

  def create
     @job = Job.new(job_params)
     if @job.save
       redirect_to job_path(@job)
     else
       render 'new'
     end
  end

  def edit
    @job = Job.find (params[ :id])
  end

  def update
    @job = Job.find(params[:id])
    if@job = Job.update(job_params)
      redirect_to job_path(@job)
    else
      render 'edit'
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  private
  def job_params
    params.require(:job).permit(:description, :origin, :destination, :cost, :containerCount)
  end
end
