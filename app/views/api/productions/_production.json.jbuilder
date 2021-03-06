json.id production.id
json.title production.title
json.synopsis_short production.synopsis_short
json.synopsis_long production.synopsis_long
json.image_small production.image_small
json.image_large production.image_large
json.start_date production.start_date
json.end_date production.end_date

json.cast do
  json.array! production.roles.each.sort_by{|o| o[:id]} do |role|
    json.role_id role.id
    json.current_role role.title
    json.name role.professional.name
    json.bio role.professional.bio
    json.professional_image role.professional.image
  end
end

json.performances do
  json.array! production.performances.sort_by{|o| o[:id]}, partial: "api/performances/performance", as: :performance
end

