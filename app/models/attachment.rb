# == Schema Information
#
# Table name: attachments
#
#  id              :integer          not null, primary key
#  description     :text
#  file            :string(255)
#  attachable_id   :integer
#  attachable_type :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

# MH 4/24/13 Attachment that represents picture, multiple of which can belong to a Trip (CarrierWave)

class Attachment < ActiveRecord::Base
  belongs_to :attachable, :polymorphic => true
  attr_accessible :description, :file
  mount_uploader :file, FileUploader
end

