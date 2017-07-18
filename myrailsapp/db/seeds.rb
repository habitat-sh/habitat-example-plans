# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.execute <<-SQL
INSERT INTO page_updates (motd) VALUES
 ('I love it when a plan.sh comes together'),
 ('Servers don''t ask, they tell'),
 ('Bldr build has baked your brownies!'),
 ('Back at it again with habitat.sh'),
 ('One ring to --peer them all'),
 ('Habitat loves Humans!'),
 ('Always have a plan'),
 ('We .hart you!'),
 ('Have a .hart');
SQL