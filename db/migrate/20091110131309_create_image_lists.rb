class CreateImageLists < ActiveRecord::Migration
  def self.up
    create_content_table :image_lists do |t|
      t.string :name 
      t.string :ImageName1 
      t.string :description1 
      t.string :ImageName2 
      t.string :description2 
      t.string :ImageName3 
      t.string :description3 
      t.string :ImageName4 
      t.string :description4 
    end
    
    
    ContentType.create!(:name => "ImageList", :group_name => "ImageList")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'ImageList'])
    CategoryType.all(:conditions => ['name = ?', 'Image List']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :image_list_versions
    drop_table :image_lists
  end
end
