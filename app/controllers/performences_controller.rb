class PerformencesController < InheritedResources::Base

  private

    def performence_params
      params.require(:performence).permit(:features, :maintenance, :warranty, :product_id)
    end
end

