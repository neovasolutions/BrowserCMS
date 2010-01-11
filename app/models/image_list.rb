class ImageList < ActiveRecord::Base
  acts_as_content_block
  
  def self.find_images(image_name1, image_name2, image_name3, image_name4)
	#file_block=FileBlock.find(:first, :conditions=>["name=? and type = 'ImageBlock'", image_name])
	image_name=[]
	image_name << image_name1 << image_name2 << image_name3 << image_name4
	attachment=Attachment.find_by_sql ["select a.* from attachments as a, file_blocks as fb where fb.attachment_id=a.id and fb.name in (?) and type = 'ImageBlock'", image_name]
	p attachment
	return attachment
  end
  

end
