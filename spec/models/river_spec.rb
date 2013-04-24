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

require 'spec_helper'

describe River do
  pending "add some examples to (or delete) #{__FILE__}"
end
