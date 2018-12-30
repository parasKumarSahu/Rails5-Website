ActiveAdmin.register Installation do
	permit_params :safety, :fabrication, :product_id

	form do |f|
	  f.inputs do
		f.input :product_id , label: 'Product', as: :select, collection: Product.pluck( :name, :id)
		f.input :safety, :as => :ckeditor
		f.input :fabrication, :as => :ckeditor
	  end
	  f.actions
	end

end
