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
end
