class InstallationsController < InheritedResources::Base

  private

    def installation_params
      params.require(:installation).permit(:safety, :fabrication, :product_id)
    end
end

