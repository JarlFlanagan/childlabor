# Load the Rails application.
require File.expand_path('../application', __FILE__)
require 'cb'
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
  Cb.configure do |config|
  config.dev_key    = 'WDHN7PJ6FTTWCSQCQP2R'
  config.time_out   = 5
  end

# Initialize the Rails application.
Rails.application.initialize!

