class LearnsController < InheritedResources::Base

  private

    def learn_params
      params.require(:learn).permit(:video_link, :thumbnail, :thumbnail_type, :thumbnail_size)
    end
end

