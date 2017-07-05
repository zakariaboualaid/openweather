class FetchWeatherJob < ApplicationJob
  queue_as :default
  require 'open_weather'

  def perform
    Openweather::Application.config.cities.each do |city_name|
      city = City.find_by_name(city_name)
      raw_data = OpenWeather::Forecast.city(city_name, Openweather::Application.config.owopts)
      data = JsonBaseConvert.encode(raw_data)
      Weather.create!(city: city, data: data) if Weather.where(data: data).empty?
    end
  end
end
