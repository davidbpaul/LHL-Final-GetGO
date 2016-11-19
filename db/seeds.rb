# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

csv_path = Rails.root.join('lib', 'seeds', 'agency.csv')
sql = "COPY agencies(agency_id, name, url, timezone, lang, phone, fare_url) FROM " + "'" + csv_path.to_s + "'" + " DELIMITER ',' CSV HEADER;"
records_array = ActiveRecord::Base.connection.execute(sql)
puts 'agency seeded'

# csv_path = Rails.root.join('lib', 'seeds', 'routes.csv')
# sql = "COPY routes(route_id, agency_id, short_name, long_name,route_type,color, text_color) FROM " + "'" + csv_path.to_s + "'" + " DELIMITER ',' CSV HEADER;"
# records_array = ActiveRecord::Base.connection.execute(sql)
# puts 'routes seeded'
