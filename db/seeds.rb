Openweather::Application.config.cities.each do |city|
  City.create!(name: city) if City.find_by_name(city).nil?
end
