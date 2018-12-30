ActiveAdmin.register Manufacturing do
	permit_params :inputs, :process, :product_id

	form do |f|
	  f.inputs do
		f.input :product_id , label: 'Product', as: :select, collection: Product.pluck( :name, :id)
		f.input :inputs, :as => :ckeditor
		f.input :process, :as => :ckeditor
	  end
	  f.actions
	end

end
