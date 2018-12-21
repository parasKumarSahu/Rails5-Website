class DecorsController < InheritedResources::Base

  private

    def decor_params
      params.require(:decor).permit(:name, :number, :type, :image_path, :image_type, :image_size)
    end
end

