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
  def download_file
    send_file "#{Rails.root}/public/docs/#{params[:file]}", x_sendfile: true
  end  
end
