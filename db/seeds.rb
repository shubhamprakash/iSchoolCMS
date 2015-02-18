# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# superadmin = User.where(email: 'superadmin@test.com', first_name: 'super', last_name: 'admin').first_or_initialize
# superadmin.password = 'admin@123'
# superadmin.save!
# superadmin.super_admin!

admin = User.where(email: 'amitk7075@gmail.com', first_name: 'Amit', last_name: 'Kumar').first_or_initialize
admin.password = '12345678'
admin.save!