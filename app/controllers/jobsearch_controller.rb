class JobsearchController < ApplicationController
  # before_action :set_job
  # before_action :set_location 

  def job_options
   @location = params[:location]
  end

  def location_options
    @job = params[:job]
  end

  def results

    Cb.configure do |config|
    config.dev_key    = 'WDHN1FK6GYPSXRKTGV6C'
    config.time_out   = 5
    end

    job = params[:job]
    location = params[:location]

    results = Cb.job.search({ location: location,
                              keywords: job })
    jobs = results.model.jobs
    @job_data = {
      job: job,
      location: location,
      job_results: jobs
    }
	  	end 
  end

