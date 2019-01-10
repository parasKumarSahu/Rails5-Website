# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

if AdminUser.find_by(email: 'admin@example.com').nil?
	AdminUser.create!(email: 'admin@example.com', password: 'suraj123', password_confirmation: 'suraj123')
	puts "Created Admin User"
else
	puts "Admin User already exists"
end

puts "Do you want to import users data data? Enter yes to continue."
user_string = STDIN.gets.strip

if user_string == "yes"
	UserInfo.delete_all
	User.delete_all
end

if UserInfo.count == 0
	csv_text = File.read(Rails.root.join('db', 'data', 'user.csv'))
	csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
	csv.each do |row|
		t = User.find_by email: row["email"]
		if t == nil
			User.create!({:email => row["email"],
			 :password => row["password"],
			  :password_confirmation => row["password"] })
		end	
		t = User.find_by email: row["email"]
		t.create_user_info( name: row["name"],
			image: row["image"],
			designation: row["designation"],
			permanent_office: row["permanent_office"],
			current_office: row["current_office"],
			extension: row["extension"],
			mob_number: row["mob_number"],
			alt_number: row["alt_number"],
			birthday: row["birthday"])
		puts row["email"]+" profile created"
	end
else
	puts "Quotes already exist"		
end

puts "Do you want to import product data? Enter yes to continue."
user_string = STDIN.gets.strip

if user_string == "yes"
	Design.delete_all
	Overview.delete_all
	Business.delete_all
	Installation.delete_all
	Manufacturing.delete_all
	Performence.delete_all

	Product.delete_all
	Family.delete_all
end

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
			product_name = product_name
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
else
	puts "Products already exist"	
end	

puts "Do you want to import reference data? Enter yes to continue."
user_string = STDIN.gets.strip

if user_string == "yes"
	Reference.delete_all
end

ref_img_path = ["/reference/1.jpg", "/reference/2.jpg", "/reference/3.jpg", "/reference/4.jpg"]

if Reference.count == 0
	csv_text = File.read(Rails.root.join('db', 'data', 'references.csv'))
	csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
	csv.each do |row|
		t = Reference.new
		t.image = ref_img_path.sample
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
else
	puts "Refrences already exist"		
end

puts "Do you want to import quotes data? Enter yes to continue."
user_string = STDIN.gets.strip

if user_string == "yes"
	Quote.delete_all
end

if Quote.count == 0
	csv_text = File.read(Rails.root.join('db', 'data', 'quotes.csv'))
	csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
	csv.each do |row|
		t = Quote.new
		t.day_number = row["day"]
		t.content = row["content"]
		t.speaker = row["speaker"]
		t.save
		puts row["content"]
	end
else
	puts "Quotes already exist"		
end

puts "Do you want to import resource data? Enter yes to continue."
user_string = STDIN.gets.strip

if user_string == "yes"
	Resource.delete_all
end

if Resource.count == 0
	csv_text = File.read(Rails.root.join('db', 'data', 'downloads.csv'))
	csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
	csv.each do |row|
		resource_arr = row["FILE"].split("_")
		p = Product.find_by(name: resource_arr[0].gsub("-", " "))
		if p != nil
			t = Resource.new
			t.name = resource_arr[2]
			t.link = "https://s3.ap-south-1.amazonaws.com/mymerino-assets/downloads/" + row["FILE"].gsub("+", "%2B")
			t.category = resource_arr[1]
			t.product = p
			t.save           
		else
			puts resource_arr[0] + " was not found"	
		end	
	end
else
	puts "Resource already exists"	
end

puts "Do you want to import events data? Enter yes to continue."
user_string = STDIN.gets.strip

if user_string == "yes"
	Event.delete_all
end

if Event.count == 0
	Event.create!(name: "Sales Meeting", caption: "Sales meeting at myMerino", other:"/events/1.jpg")
	Event.create!(name: "Showroom Launch", caption: "Latest showroom inagurated at New Delhi", other:"/events/2.jpg")
else
	puts "Events already exists"	
end

puts "Do you want to import Learning course videos data? Enter yes to continue."
user_string = STDIN.gets.strip

if user_string == "yes"
	Course.delete_all
	Learn.delete_all
end

if Learn.count == 0 && Course.count == 0
	csv_text = File.read(Rails.root.join('db', 'data', 'courses.csv'))
	csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
	csv.each do |row|
		t = Course.find_by name: row["course"]
		if t == nil
			t = Course.new
			t.name = row["course"]
			t.save
		end	
		t.learns.create(video_link: row["video"], thumbnail: row["thumbnail"])
		puts row["course"] + row["video"]
	end

else
	puts "Learniing videos or courses already exist"	
end