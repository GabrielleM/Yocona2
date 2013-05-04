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

# MH 3/24/13 -- Create association between River and Trip, where a trip belongs to a river. Also make attributes accessible by rest of app
# A trip cannot be created with a river (validates presence of)

class Trip < ActiveRecord::Base
  attr_accessible :leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :attachments_attributes, :river_id
  belongs_to :river
  validates_presence_of :river
  # mount_uploader :image, ImageUploader
  #MH 4/23/13 Code for Multiple photo upload in CarrierWave
  has_many :attachments, :as => :attachable
  accepts_nested_attributes_for :attachments, :allow_destroy => true

  validates :start_date, :uniqueness => {:scope => :leader} 

end