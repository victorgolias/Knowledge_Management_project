ActiveAdmin.register Document do

  form :partial => "create_document_form"

  index do
    column :name
    column :description
    column "Categories" do |categories|
        categories.class
    end
    column :file_name, :as => "file URL"
    default_actions

  end

end
