class UserInfosController < InheritedResources::Base

  private

    def user_info_params
      params.require(:user_info).permit(:name, :image, :user_id, :designation, :permanent_office, :current_office, :extension, :mob_number, :alt_number, :birthday)
    end
end

