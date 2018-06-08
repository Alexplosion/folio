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
    include Placeholder
    
    has_many :technologies
    accepts_nested_attributes_for :technologies, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true
    
    validates_presence_of :title, :subtitle, :body, :main_img, :thumb_img
    
    
    def self.angular
        where(subtitle:"Angular")
    end
    after_initialize :set_defaults

    def set_defaults
        self.main_img ||= Placeholder.image_generator(600, 400)
        self.thumb_img ||= Placeholder.image_generator(350, 250)
    end
end
