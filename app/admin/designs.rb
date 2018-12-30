ActiveAdmin.register Design do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :selector, :guide, :area, :sectors, :finishes, :availability, :product_id

form do |f|
  f.inputs do
	f.input :product_id , label: 'Product', as: :select, collection: Product.pluck( :name, :id)
	f.input :selector, :as => :ckeditor
	f.input :guide, :as => :ckeditor
	f.input :area, :as => :ckeditor
	f.input :sectors, :as => :ckeditor
	f.input :finishes, :as => :ckeditor
	f.input :availability, :as => :ckeditor
  end
  f.actions
end

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
