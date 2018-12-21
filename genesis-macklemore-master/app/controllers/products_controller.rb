class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:name, :family_id)
    end
end

