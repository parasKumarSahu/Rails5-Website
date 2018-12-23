# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if AdminUser.find_by(email: 'admin@example.com').nil?
	AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
else
	puts "User already exists"
end

Design.delete_all
Overview.delete_all
Business.delete_all
Installation.delete_all
Manufacturing.delete_all
Performence.delete_all

Product.delete_all
Family.delete_all

if Family.find_by(name: 'HPL').nil?
	puts "Creating HPL Products"
	f1 = Family.create!(name: 'HPL')

	pro = f1.products.create! name: 'LAM'
	pro.create_design(selector: '<p><strong>This selector HTML is stored in Design Table</strong></p>', guide: '<p><strong>This Gudide HTML is stored in Design Table</strong></p>', area: '<p><strong>This Area HTML is stored in Design Table</strong></p>', sectors: '<p><strong>This Sector HTML is stored in Design Table</strong></p>', finishes: '<p><strong>This finishes HTML is stored in Design Table</strong></p>', availability: '<p><strong>This availability HTML is stored in Design Table</strong></p>')
	pro.create_overview(body: '<p><big>Overview HTML<br /> &nbsp; <p>&nbsp;</p> <p><strong><img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5Ds6M2i--Q0IKiKxt8P-cyYL4CAqkOkJT7iU9RlHWt29eIb5" style="width: 275px; height: 183px;" /></strong></p> </p"<big>') 

	pro = f1.products.create! name: 'MR'
	pro.create_design(selector: '<p><strong>This selector HTML is stored in Design Table</strong></p>', guide: '<p><strong>This Gudide HTML is stored in Design Table</strong></p>', area: '<p><strong>This Area HTML is stored in Design Table</strong></p>', sectors: '<p><strong>This Sector HTML is stored in Design Table</strong></p>', finishes: '<p><strong>This finishes HTML is stored in Design Table</strong></p>', availability: '<p><strong>This availability HTML is stored in Design Table</strong></p>')
	pro.create_overview(body: '<p><big>Overview HTML<br /> &nbsp; <p>&nbsp;</p> <p><strong><img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5Ds6M2i--Q0IKiKxt8P-cyYL4CAqkOkJT7iU9RlHWt29eIb5" style="width: 275px; height: 183px;" /></strong></p> </p"<big>') 

	pro = f1.products.create! name: 'MRmax'
	pro.create_design(selector: '<p><strong>This selector HTML is stored in Design Table</strong></p>', guide: '<p><strong>This Gudide HTML is stored in Design Table</strong></p>', area: '<p><strong>This Area HTML is stored in Design Table</strong></p>', sectors: '<p><strong>This Sector HTML is stored in Design Table</strong></p>', finishes: '<p><strong>This finishes HTML is stored in Design Table</strong></p>', availability: '<p><strong>This availability HTML is stored in Design Table</strong></p>')
	pro.create_overview(body: '<p><big>Overview HTML<br /> &nbsp; <p>&nbsp;</p> <p><strong><img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5Ds6M2i--Q0IKiKxt8P-cyYL4CAqkOkJT7iU9RlHWt29eIb5" style="width: 275px; height: 183px;" /></strong></p> </p"<big>') 
else
	puts "HPL already exists"
end	

if Family.find_by(name: 'PPL').nil?
	puts "Creating PPL Products"
	f1 = Family.create!(name: 'PPL')

	pro = f1.products.create! name: 'LAMo'
	pro.create_design(selector: '<p><strong>This selector HTML is stored in Design Table</strong></p>', guide: '<p><strong>This Gudide HTML is stored in Design Table</strong></p>', area: '<p><strong>This Area HTML is stored in Design Table</strong></p>', sectors: '<p><strong>This Sector HTML is stored in Design Table</strong></p>', finishes: '<p><strong>This finishes HTML is stored in Design Table</strong></p>', availability: '<p><strong>This availability HTML is stored in Design Table</strong></p>')
	pro.create_overview(body: '<p><big>Overview HTML<br /> &nbsp; <p>&nbsp;</p> <p><strong><img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5Ds6M2i--Q0IKiKxt8P-cyYL4CAqkOkJT7iU9RlHWt29eIb5" style="width: 275px; height: 183px;" /></strong></p> </p"<big>') 

	pro = f1.products.create! name: 'MRo'
	pro.create_design(selector: '<p><strong>This selector HTML is stored in Design Table</strong></p>', guide: '<p><strong>This Gudide HTML is stored in Design Table</strong></p>', area: '<p><strong>This Area HTML is stored in Design Table</strong></p>', sectors: '<p><strong>This Sector HTML is stored in Design Table</strong></p>', finishes: '<p><strong>This finishes HTML is stored in Design Table</strong></p>', availability: '<p><strong>This availability HTML is stored in Design Table</strong></p>')
	pro.create_overview(body: '<p><big>Overview HTML<br /> &nbsp; <p>&nbsp;</p> <p><strong><img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5Ds6M2i--Q0IKiKxt8P-cyYL4CAqkOkJT7iU9RlHWt29eIb5" style="width: 275px; height: 183px;" /></strong></p> </p"<big>') 

	pro = f1.products.create! name: 'MRmaxo'
	pro.create_design(selector: '<p><strong>This selector HTML is stored in Design Table</strong></p>', guide: '<p><strong>This Gudide HTML is stored in Design Table</strong></p>', area: '<p><strong>This Area HTML is stored in Design Table</strong></p>', sectors: '<p><strong>This Sector HTML is stored in Design Table</strong></p>', finishes: '<p><strong>This finishes HTML is stored in Design Table</strong></p>', availability: '<p><strong>This availability HTML is stored in Design Table</strong></p>')
	pro.create_overview(body: '<p><big>Overview HTML<br /> &nbsp; <p>&nbsp;</p> <p><strong><img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5Ds6M2i--Q0IKiKxt8P-cyYL4CAqkOkJT7iU9RlHWt29eIb5" style="width: 275px; height: 183px;" /></strong></p> </p"<big>') 
else
	puts "PPL already exists"
end	
