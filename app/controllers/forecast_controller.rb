require 'open-uri'

class ForecastController < ApplicationController
  def coords_to_weather_form
    # Nothing to do here.
    render("forecast/coords_to_weather_form.html.erb")
  end

  def coords_to_weather
    @lat = params[:user_latitude]
    @lng = params[:user_longitude]

    # ==========================================================================
    # Your code goes below.
    # The latitude the user input is in the string @lat.
    # The longitude the user input is in the string @lng.
    # ==========================================================================
    url1="https://api.darksky.net/forecast/fa5c8431499b20450e20b94e60bd5aa6/"+@lat+","+@lng
    parsed_data1 = JSON.parse(open(url1).read)
    # latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
    # longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

    @current_temperature = parsed_data1["currently"]["temperature"]
    @current_summary = parsed_data1["currently"]["summary"]
    @summary_of_next_sixty_minutes = parsed_data1["minutely"]["summary"]
    @summary_of_next_several_hours = parsed_data1["hourly"]["summary"]
    @summary_of_next_several_days = parsed_data1["daily"]["summary"]

    render("forecast/coords_to_weather.html.erb")
  end
end
