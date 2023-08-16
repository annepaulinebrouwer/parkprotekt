puts "Cleaning the database"
Animal.destroy_all
Marker.destroy_all

puts 'Create Black Bear'
black_bear = Animal.create(name: 'Black Bear')

puts 'Create markers for Black Bear'
black_bear.markers.create!(
  latitude: '37.865101',
  longitude: '-119.538330',
  category: 'accident',
  title: 'Car coalition',
  description: 'Car coalition with black bear on Southside Drive'
)

black_bear.markers.create!(
  latitude: '37.8308',
  longitude: '-119.4583',
  category: 'fire',
  title: 'Smoke detaction',
  description: 'Smoke detected around Tenaya Lake'
)
puts 'Finished'
