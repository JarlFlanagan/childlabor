class JobsearchController < ApplicationController
  before_action :set_job
  before_action :set_location 

  def location

  end

  def job

  end

  def results
  	  	if @location && @job 
	  		results = Cb.job.search({ location:@location, jobtitle:@job })
			# response = results.response
			# response_job_search = response["ResponseJobSearch"]
			# errors = response_job_search["Errors"]
			# total_count = response_job_search["TotalCount"]
			# result_data = response_job_search["Results"]
			# real_result_data = result_data["JobSearchResult"]
			@job_results = results.model.jobs
	  	end 
  end

  private 
  def set_job
  	@job = params[:job]
    if @job
      session[:job] = @job
    else
      @job = session[:job]
    end  
  end

  def set_location
  	@location = params[:location]
    if @location
      session[:location] = @location
    else
      @location = session[:location]
    end
  end
end
