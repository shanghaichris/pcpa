# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#prepare for roles
["admin", "buyer", "common", "pro"].each do |role|    
  Role.find_or_create_by(name: role)    
end

#prepare for admin user
admin = User.where(email: "shanghaichris@gmail.com").first_or_initialize
admin.name="袁文炯"
admin.password="12345678"
admin.roles << Role.admin
admin.roles << Role.pro

puts "\n"
puts " user:#{admin.name}<#{admin.email}> is created :-)" if admin.save!