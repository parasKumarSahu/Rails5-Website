class QuotesController < InheritedResources::Base

  private

    def quote_params
      params.require(:quote).permit(:day_number, :content, :speaker)
    end
end

