class BusinessesController < InheritedResources::Base

  private

    def business_params
      params.require(:business).permit(:body, :product_id)
    end
end

