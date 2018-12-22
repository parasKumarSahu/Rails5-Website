class ManufacturingsController < InheritedResources::Base

  private

    def manufacturing_params
      params.require(:manufacturing).permit(:inputs, :process, :product_id)
    end
end

