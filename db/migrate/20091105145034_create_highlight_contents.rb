class CreateHighlightContents < ActiveRecord::Migration
  def self.up
    create_content_table :highlight_contents do |t|
      t.string :name 
      t.date :date 
      t.belongs_to :attachment
      t.integer :attachment_version 
      t.string :title 
      t.text :description, :size => (64.kilobytes + 1) 
    end
    
    unless Section.with_path('/highlight_contents').exists?
      Section.create!(:name => "Highlight Content", :parent => Section.system.first, :path => '/highlight_contents', :group_ids => Group.all(&:id))
    end
    ContentType.create!(:name => "HighlightContent", :group_name => "HighlightContent")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'HighlightContent'])
    CategoryType.all(:conditions => ['name = ?', 'Highlight Content']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :highlight_content_versions
    drop_table :highlight_contents
  end
end
