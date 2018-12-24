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
'''
Design.delete_all
Overview.delete_all
Business.delete_all
Installation.delete_all
Manufacturing.delete_all
Performence.delete_all

Product.delete_all
Family.delete_all
'''
html_str = '<p><big> '
html_str2 = ' HTML<br /> &nbsp; <p>&nbsp;</p> <p><strong><img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf5Ds6M2i--Q0IKiKxt8P-cyYL4CAqkOkJT7iU9RlHWt29eIb5" style="width: 275px; height: 183px;" /></strong></p> </p"<big>'

if Family.find_by(name: 'HPL').nil?
	puts "Creating HPL Products"
	f = Family.create!(name: 'HPL')

	pro = f.products.create! name: 'LAM'
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

	pro = f.products.create! name: 'MR'
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


	pro = f.products.create! name: 'MRmax'
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

else
	puts "HPL already exists"
end	





if Family.find_by(name: 'PPL').nil?
	puts "Creating PPL Products"
	f = Family.create!(name: 'PPL')

	pro = f.products.create! name: 'LAMo'
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

	pro = f.products.create! name: 'MRo'
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


	pro = f.products.create! name: 'MRmaxo'
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

else
	puts "PPL already exists"
end	




if Family.find_by(name: 'KPL').nil?
	puts "Creating KPL Products"
	f = Family.create!(name: 'KPL')

	pro = f.products.create! name: 'LAMi'
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

	pro = f.products.create! name: 'MRi'
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


	pro = f.products.create! name: 'MRmaxi'
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

else
	puts "KPL already exists"
end	


if Reference.count == 0
	Reference.create!(image: "/reference/1.jpg",customer: "MR.SAMPATH SINGH",project_type: "Residential",
		project: "RESIDENTIAL HOME",product: "GLOSS MEISTER",code: "21027 IRISH CREAM",
		 location: "HOUSE NO.1005 SECTOR 27 CHD", quantity: "25 SHEETS", year: 2018)
	Reference.create!(image: "/reference/2.jpg",customer: "MR. HIRDIYA NAND",project_type: "Residential",
		project: "RESIDENTIAL HOME",product: "GLOSS MEISTER,LAM",code: "25391,21055,21055 HGL",
		 location: "Residential	HOUSE NO.3110 SECTOR 27 CHD", quantity: "4,2,1 SHEET", year: 2018)
	Reference.create!(image: "/reference/3.jpg",customer: "GEE ARR INTERIOR",project_type: "Residential",
		project: "RESIDENTIAL HOME",product: "GLOSS MEISTER",code: "21065, 25139",
		 location: "Residential	RESIDENTIAL HOME", quantity: "4", year: 2017)

	Reference.create!(image: "/reference/4.png",customer: "MR.SAMPATH SINGH",project_type: "Commercial",
		project: "COMMERCIAL D2",product: "GLOSS MEISTER",code: "21027 IRISH CREAM",
		 location: "HOUSE NO.1005 SECTOR 27 CHD", quantity: "25 SHEETS", year: 2018)
	Reference.create!(image: "/reference/5.jpg",customer: "MR. HIRDIYA NAND",project_type: "Commercial",
		project: "COMMERCIAL D1",product: "GLOSS MEISTER,LAM",code: "25391,21055,21055 HGL",
		 location: "Residential	HOUSE NO.3110 SECTOR 27 CHD", quantity: "4,2,1 SHEET", year: 2018)
	Reference.create!(image: "/reference/6.jpg",customer: "GEE ARR INTERIOR",project_type: "Commercial",
		project: "COMMERCIAL D1",product: "GLOSS MEISTER",code: "21065, 25139",
		 location: "Residential	RESIDENTIAL HOME", quantity: "4", year: 2017)
	puts "Reference Created"
end	