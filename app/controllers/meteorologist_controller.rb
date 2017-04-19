require 'open-uri'

class MeteorologistController < ApplicationController
  def street_to_weather_form
    # Nothing to do here.
    render("meteorologist/street_to_weather_form.html.erb")
  end

  def street_to_weather
    @street_address = params[:user_street_address]

    # ==========================================================================
    # Your code goes below.
    #
    # The street address that the user typed is in the variable @street_address.
    # ==========================================================================

<<<<<<< HEAD
    url="https://maps.googleapis.com/maps/api/geocode/json?address="+@street_address
    parsed_data = JSON.parse(open(url).read)
    @latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
    @longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

    url1="https://api.darksky.net/forecast/fa5c8431499b20450e20b94e60bd5aa6/"+@latitude.to_s+","+@longitude.to_s
    parsed_data1 = JSON.parse(open(url1).read)

    @current_temperature = parsed_data1["currently"]["temperature"]
    @current_summary = parsed_data1["currently"]["summary"]
    @summary_of_next_sixty_minutes = parsed_data1["minutely"]["summary"]
    @summary_of_next_several_hours = parsed_data1["hourly"]["summary"]
    @summary_of_next_several_days = parsed_data1["daily"]["summary"]
    render("street_to_weather.html.erb")
=======


    @current_temperature = "Replace this string with your answer."

    @current_summary = "Replace this string with your answer."

    @summary_of_next_sixty_minutes = "Replace this string with your answer."

    @summary_of_next_several_hours = "Replace this string with your answer."

    @summary_of_next_several_days = "Replace this string with your answer."

    render("meteorologist/street_to_weather.html.erb")
>>>>>>> parent of 770f690... latest
  end
end
