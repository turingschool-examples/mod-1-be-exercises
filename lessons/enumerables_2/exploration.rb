ice_cream_locations = {
  jenis: 0.4,
  margies: 0.1, 
  rainbow_cone: 8.4,
  annetes: 2.3,
  scooters: 4.1
}

list_of_places = ["jenis", "scooters", "annetes"]

found_ice_cream = ice_cream_locations.find_all do |place, distance|
  distance < 1.0
end


select_ice_cream = ice_cream_locations.select do |place, distance|
  distance < 1.0
end

require 'pry'; binding.pry