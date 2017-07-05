require 'rails_helper'
require 'open_weather'

RSpec.describe 'OpenWeather Fetch', type: :request do
  describe 'API Fetch' do
    it 'should get json response' do
      raw_data = OpenWeather::Forecast.city(City.first.name, Openweather::Application.config.owopts)
      expect(raw_data).to_not be_nil
    end
  end
end
