json.stadium_id @trip.stadium_id
json.schedule_id @trip.schedule_id
json.stadium do
  json.partial! trip.stadium, partial: 'stadium', as: :stadium
end