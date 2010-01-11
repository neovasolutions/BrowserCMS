class CreateArticleContents < ActiveRecord::Migration
  def self.up
    create_content_table :article_contents do |t|
      t.string :title 
      t.string :author 
      t.date :date 
      t.belongs_to :attachment
      t.integer :attachment_version 
      t.text :description, :size => (64.kilobytes + 1) 
      t.integer :limit 
    end
    
    unless Section.with_path('/article_contents').exists?
      Section.create!(:name => "Article Content", :parent => Section.system.first, :path => '/article_contents', :group_ids => Group.all(&:id))
    end
    ContentType.create!(:name => "ArticleContent", :group_name => "ArticleContent")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'ArticleContent'])
    CategoryType.all(:conditions => ['name = ?', 'Article Content']).each(&:destroy)
    #If you aren't creating a versioned table, be sure to comment this out.
    drop_table :article_content_versions
    drop_table :article_contents
  end
end
