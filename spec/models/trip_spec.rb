# == Schema Information
#
# Table name: trips
#
#  id                    :integer          not null, primary key
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  leader                :string(255)
#  agency                :string(255)
#  agency_contact        :string(255)
#  num_participants      :string(255)
#  num_guides            :string(255)
#  report_link           :string(255)
#  flow                  :string(255)
#  start_date            :datetime
#  duration              :integer
#  summary               :text
#  river_id              :integer
#  pictures_file_name    :string(255)
#  pictures_content_type :string(255)
#  pictures_file_size    :integer
#  pictures_updated_at   :datetime
#  cover_image_uid       :string(255)
#  cover_image_name      :string(255)
#  image                 :string(255)
#

require 'spec_helper'

describe Trip do
  pending "add some examples to (or delete) #{__FILE__}"
end
