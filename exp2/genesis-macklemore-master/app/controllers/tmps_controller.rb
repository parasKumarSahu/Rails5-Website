class TmpsController < InheritedResources::Base

  private

    def tmp_params
      params.require(:tmp).permit(:name)
    end
end

