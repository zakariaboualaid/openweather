ENV['RAILS_ENV'] = "development"


every 2.minutes do
  runner "FetchWeatherJob.perform_now"
end