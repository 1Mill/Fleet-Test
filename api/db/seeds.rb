# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do |n|
	Customer.create(
		:name => "Customer #{n}",
		:email => "Rando#{n}@test.erb"
	)
end

shippers = ["Next Worldwde Express", "DHL", "World Class Shipping"]
3.times do |n|
	Shipper.create(
		:name => shippers[n]
	)
end
