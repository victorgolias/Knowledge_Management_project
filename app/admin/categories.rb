ActiveAdmin.register Category do
  form :partial => "create_category_form"

  filter :parent,
         :label => 'Hierarchy', :as => :select,
         :collection => proc{Category.roots}

  scope :all, :default => true
  scope :only_categories do |categories|
    categories.where("parent_id IS NOT NULL")
  end
  scope :only_hierarchies do |categories|
    categories.where("parent_id IS NULL")
  end

  index do
          column :name
          column :parent
          column "Documents" do |categories|
             categories.class
          end
          column :level
          default_actions
  end


  #form  do |f|
  #  f.inputs "Taxonomy" do
  #    f.input :parent {}
  #  end
  #  f.inputs "Details" do
  #    f.input :name
  #  end
  #  f.buttons
  #end



end
