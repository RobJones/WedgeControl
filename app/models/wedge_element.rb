class WedgeElement < ActiveRecord::Base
  belongs_to :input_type, :class_name => "QueryableObject"
  belongs_to :output_type, :class_name => "QueryableObject"
  has_and_belongs_to_many :wedges
  # belongs_to :wedge, foreign_key: "output_wedge_id"
  
  belongs_to :output_wedge, :class_name => "Wedge"
  
end
