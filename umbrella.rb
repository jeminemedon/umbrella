# Write your solution below!
require "dotenv/load"
require "http"
require "json"

#This is to get the coordinates

Where are you located?

user_location = gets.chomp


#The URL for Google Maps API
gmaps_url = "https://maps.googleapis.com/maps/api/geocode/json? address=Merchandise%20Mart%20Chicago & key=API_KEY_FROM_COURSE_SECRETS"

#First part
first_part = "https://maps.googleapis.com/maps/api/geocode/json?"
#second part
second_part = "user_location"
#third part
third_part = ENV.fetch("gmaps_key")
#The URL for Google Maps API



gmaps


# parse the response
parsed_response = JSON.parse(raw_response)

pp parsed_response

currently_category = parsed_response.fetch("currently")

temperature = currently_category.fetch("temperature")

pp temperature

pp "The current temperature is #{temperature} degrees"
