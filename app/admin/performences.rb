ActiveAdmin.register Performence do
	permit_params :features, :maintenance, :warranty, :product_id

	form do |f|
	  f.inputs do
		f.input :product_id , label: 'Product', as: :select, collection: Product.pluck( :name, :id)
		f.input :features, :as => :ckeditor
		f.input :maintenance, :as => :ckeditor
		f.input :warranty, :as => :ckeditor
	  end
	  f.actions
	end

end
