class TechnicalsController < InheritedResources::Base

  private

    def technical_params
      params.require(:technical).permit(:composition, :manufacturing, :install, :perform, :product_id)
    end
end

