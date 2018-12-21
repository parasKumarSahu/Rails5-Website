class QuotesController < InheritedResources::Base

  private

    def quote_params
      params.require(:quote).permit(:description, :image, :image_type, :image_size)
    end
end

