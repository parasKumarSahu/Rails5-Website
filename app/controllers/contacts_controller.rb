class ContactsController < InheritedResources::Base
  private

    def contact_params
      params.require(:contact).permit(:name, :mobile, :employee_number, :message)
    end
end

