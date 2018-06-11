# == Schema Information
#
# Table name: books
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  subtitle   :string
#  body       :text
#  main_img   :text
#  thumb_img  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ApplicationRecord
    
    has_many :technologies
    accepts_nested_attributes_for :technologies, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true
    
    validates_presence_of :title, :subtitle, :body 
    
    mount_uploader :thumb_img, BookUploader
    mount_uploader :main_img, BookUploader
    




    def self.angular
        where(subtitle:"Angular")
    end

    def set_defaults
       
    end
end


 