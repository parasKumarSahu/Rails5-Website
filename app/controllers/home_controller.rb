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
  def events
    @events = Event.paginate(:page => params[:page], :per_page => 5)   
  end  
  def business
  end	
  def downloads    
    @resources = Resource.paginate(:page => params[:page], :per_page => 10)   
  end
  def references
    @references = Reference.paginate(:page => params[:page], :per_page => 5)  
    @residentials = Reference.all.where(project_type: "Residential").paginate(:page => params[:page], :per_page => 5)       
    @commercials = Reference.all.where(project_type: "Commercial").paginate(:page => params[:page], :per_page => 5)       
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
