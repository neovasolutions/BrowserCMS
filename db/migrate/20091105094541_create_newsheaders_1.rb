class CreateNewsheaders < ActiveRecord::Migration
  def self.up
    create_content_table :newsheaders do |t|
      t.string :name 
      t.string :image 
    end
    
    
    ContentType.create!(:name => "Newsheader", :group_name => "Newsheader")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Newsheader'])
    CategoryType.all(:conditions => ['name = ?', 'Newsheader']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :newsheader_versions
    drop_table :newsheaders
  end
end
