class EventsController < InheritedResources::Base

  private

    def event_params
      params.require(:event).permit(:name, :caption, :other)
    end
end

