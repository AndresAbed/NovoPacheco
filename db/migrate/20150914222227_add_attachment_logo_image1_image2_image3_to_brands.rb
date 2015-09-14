class AddAttachmentLogoImage1Image2Image3ToBrands < ActiveRecord::Migration
  def self.up
    change_table :brands do |t|
      t.attachment :logo
      t.attachment :image1
      t.attachment :image2
      t.attachment :image3
    end
  end

  def self.down
    remove_attachment :brands, :logo
    remove_attachment :brands, :image1
    remove_attachment :brands, :image2
    remove_attachment :brands, :image3
  end
end
