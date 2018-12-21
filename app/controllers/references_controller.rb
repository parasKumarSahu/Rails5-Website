class ReferencesController < InheritedResources::Base

  private

    def reference_params
      params.require(:reference).permit(:tag, :project, :country_city, :address, :address_link, :installer, :installer_link, :owner, :owner_link)
    end
end

