# == Schema Information
#
# Table name: rivers
#
#  id                        :integer          not null, primary key
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  name                      :string(255)
#  length                    :string(255)
#  difficulty                :string(255)
#  ideal_flow                :string(255)
#  hazards                   :string(255)
#  highlights                :string(255)
#  nearest_town              :string(255)
#  description               :text
#  link                      :text
#  environmental_ed          :text
#  on_river_special_concerns :text
#  emergency_plan            :text
#  shuttle_directions        :text
#  camping_locations         :text
#  local_contacts            :text
#  nearest_store             :text
#  map                       :text
#

# MH 3/24/13 -- Create association between River and Trip, where a trip belongs to a river. Also make attributes accessible by rest of app

class River < ActiveRecord::Base
  attr_accessible :name, :length, :difficulty, :ideal_flow, :description, :map, :hazards, :highlights, :environmental_ed, :on_river_special_concerns, :nearest_town, :nearest_store, :shuttle_directions, :camping_locations, :local_contacts, :emergency_plan, :link 
  has_many :trip
end
