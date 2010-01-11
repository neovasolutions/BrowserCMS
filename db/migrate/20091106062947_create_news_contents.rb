class CreateNewsContents < ActiveRecord::Migration
  def self.up
    create_content_table :news_contents do |t|
      t.string :name 
      t.belongs_to :attachment
      t.integer :attachment_version 
      t.date :date 
      t.string :linkurl
      t.string :title 
      t.text :description, :size => (64.kilobytes + 1) 
    end
    
    unless Section.with_path('/news_contents').exists?
      Section.create!(:name => "News Content", :parent => Section.system.first, :path => '/news_contents', :group_ids => Group.all(&:id))
    end
    ContentType.create!(:name => "NewsContent", :group_name => "NewsContent")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'NewsContent'])
    CategoryType.all(:conditions => ['name = ?', 'News Content']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :news_content_versions
    drop_table :news_contents
  end
end
