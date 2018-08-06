# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# response = Unirest.get("https://api.sportradar.us/mlb/trial/v6.5/en/league/venues.json?api_key=API KEY GOES HERE")

# stadium_list = response.body

# array_of_venues = stadium_list['venues']

# current_stadiums = []
# array_of_venues.each do |venue|
#   if !venue['market'].nil?
#     current_stadiums << venue 
#   end
# end

# # number = 1
# current_stadiums.each do |venue|
#   # p number 
#   p venue['market']
#   p venue['name']
#   p venue['address']
#   p venue['city']
#   p venue['state']
#   p venue['zip']
#   p venue['stadium_type']
#   # number += 1

#   stadium = Stadium.new(
#     name: venue['name'],
#     market: venue['market'],
#     address: venue['address'],
#     city: venue['city'],
#     state: venue['state'],
#     zip: venue['zip'],
#     stadium_type: venue['stadium_type']
#     )
#     stadium.save
# end

response = Unirest.get("https://api.sportradar.us/mlb/trial/v6.5/en/games/2018/08/05/schedule.json?api_key=API KEY GOES HERE")

schedule_list = response.body['games']

# puts JSON.pretty_generate(schedule['games'][0])

  index = 0
  number = 1
  schedule_list.each do |schedule|
    schedule_list[index]['game_number']
    schedule_list[index]['scheduled']
    schedule_list[index]['home']['name']
    schedule_list[index]['away']['name']
    schedule_list[index]['double_header']
    schedule_list[index]['venue']['name']
    schedule_list[index]['venue']['address']
    schedule_list[index]['venue']['city']
    schedule_list[index]['venue']['state']
    schedule_list[index]['venue']['zip']

    schedule = Schedule.new(
    game_number: schedule_list[index]['game_number'],
    scheduled: schedule_list[index]['scheduled'],
    home_team: schedule_list[index]['home']['name'],
    away_team: schedule_list[index]['away']['name'],
    double_header: schedule_list[index]['double_header'],
    venue_name: schedule_list[index]['venue']['name'],
    venue_address: schedule_list[index]['venue']['address'],
    venue_city: schedule_list[index]['venue']['city'],
    venue_state: schedule_list[index]['venue']['state'],
    venue_zip: schedule_list[index]['venue']['zip']
    )
    schedule.save

    index += 1
    number += 1
end




# schedule['games'][0]['game_number']
# schedule['games'][0]['scheduled']
# schedule['games'][0]['double_header']
# schedule['games'][0]['home']['name']
# schedule['games'][0]['away']['name']
# schedule['games'][0]['venue']['name']
# schedule['games'][0]['venue']['address']
# schedule['games'][0]['venue']['city']
# schedule['games'][0]['venue']['state']
# schedule['games'][0]['venue']['zip']









