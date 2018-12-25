# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

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

html_str = '<p><big> '
html_str2 = ' HTML<br /> &nbsp; <p>&nbsp;</p> <p><strong><img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5Ds6M2i--Q0IKiKxt8P-cyYL4CAqkOkJT7iU9RlHWt29eIb5" style="width: 275px; height: 183px;" /></strong></p> </p"<big>'

if Family.count == 0
	csv_text = File.read(Rails.root.join('db', 'data', 'product.csv'))
	csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
	csv.each do |row|
		if row["family"].length >=2
			t = Family.find_by name: row["family"]
			if t == nil
				t = Family.new
				t.name = row["family"]
				t.save
			end
			product_name = row["product"]
			product_name = product_name.gsub("+", "plus")
			t.products.create! name: product_name
			pro = Product.find_by name: product_name
			pro.create_design(selector: html_str+"selector"+html_str2,
			 guide: html_str+"guide"+html_str2,
			  area: html_str+"area"+html_str2,
			   sectors: html_str+"sectors"+html_str2,
			    finishes: html_str+"finishes"+html_str2,
			     availability: html_str+"availability"+html_str2)
			pro.create_installation(safety: html_str+"safety"+html_str2,
			 fabrication: html_str+"fabrication"+html_str2)
			pro.create_manufacturing(inputs: html_str+"inputs"+html_str2,
			 process: html_str+"process"+html_str2)
			pro.create_performence(features: html_str+"features"+html_str2,
			 maintenance: html_str+"maintenance"+html_str2,
			  warranty: html_str+"warranty"+html_str2)
			pro.create_overview(body: html_str+"Overview"+html_str2) 
			pro.create_business(body: html_str+"Business"+html_str2)
			puts "created #{row["family"]} > #{row["product"]}"
		end
	end
end	


#Reference.delete_all

if Reference.count == 0
	csv_text = File.read(Rails.root.join('db', 'data', 'references.csv'))
	csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
	csv.each do |row|
		t = Reference.new
		t.image = "/reference/1.jpg"
		t.project_type = row["type"]
		t.project = row["project"]
		t.product = row["product"]
		t.code = row["code"]
		t.location = row["location"]
		t.quantity = row["quantity"]
		t.customer = row["customer"]
		t.year = row["year"].to_i
		t.save
		puts row["customer"]
	end
end
