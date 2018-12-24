class ReferencesController < InheritedResources::Base

  private

    def reference_params
      params.require(:reference).permit(:image, :customer, :type, :project, :product, :code, :location, :quantity, :year)
    end
end

