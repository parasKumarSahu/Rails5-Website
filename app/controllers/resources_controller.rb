class ResourcesController < InheritedResources::Base

  private

    def resource_params
      params.require(:resource).permit(:name, :link, :type, :category, :product_id)
    end
end

