class HomeController < ApplicationController
  def index
  end
  def product
  end
  def overview
  end	
  def design
  end
  def technical
  end	
  def business
  end	
  def downloads    
  end
  def references
  end 
  def academy
  end  
  def download_file
    send_file "#{Rails.root}/public/docs/#{params[:file]}", x_sendfile: true
  end  
  def contact_us
    Contact.create(name: params[:name],
     employee_number: params[:number],
     mobile: params[:mobile],
     message: params[:message])
    redirect_to request.referrer
  end  
end
