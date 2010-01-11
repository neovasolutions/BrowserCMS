class CreateHighlightHeaders < ActiveRecord::Migration
  def self.up
    create_content_table :highlight_headers do |t|
      t.string :name 
      t.belongs_to :attachment
      t.integer :attachment_version 
    end
    
    unless Section.with_path('/highlight_headers').exists?
      Section.create!(:name => "Highlight Header", :parent => Section.system.first, :path => '/highlight_headers', :group_ids => Group.all(&:id))
    end
    ContentType.create!(:name => "HighlightHeader", :group_name => "HighlightHeader")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'HighlightHeader'])
    CategoryType.all(:conditions => ['name = ?', 'Highlight Header']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :highlight_header_versions
    drop_table :highlight_headers
  end
end
