class CertificationsController < InheritedResources::Base

  private

    def certification_params
      params.require(:certification).permit(:name)
    end
end

