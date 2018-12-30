class OfficesController < InheritedResources::Base

  private

    def office_params
      params.require(:office).permit(:name, :address, :phone, :alternate_phone, :office_type, :email, :lat, :long)
    end
end

