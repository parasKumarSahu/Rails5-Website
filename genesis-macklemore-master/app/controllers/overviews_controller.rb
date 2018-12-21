class OverviewsController < InheritedResources::Base

  private

    def overview_params
      params.require(:overview).permit(:body, :product_id)
    end
end

