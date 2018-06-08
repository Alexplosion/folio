# == Schema Information
#
# Table name: skills
#
#  id               :bigint(8)        not null, primary key
#  title            :string
#  percent_utilized :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  badge            :text
#

class Skill < ApplicationRecord
    includes Placeholder
    validates_presence_of :title, :percent_utilized

    after_initialize :set_defaults

    def set_defaults
        self.badge ||= Placeholder.image_generator(250, 250)
    end
end
