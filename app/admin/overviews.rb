ActiveAdmin.register Overview do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :body, :product_id

form do |f|
  f.inputs do
	f.input :product_id , label: 'Product', as: :select, collection: Product.pluck( :name, :id)
	f.input :body, :as => :ckeditor
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
