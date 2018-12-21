class DesignsController < InheritedResources::Base

  private

    def design_params
      params.require(:design).permit(:selector, :guide, :area, :sectors, :finishes, :availability, :product_id)
    end
end

