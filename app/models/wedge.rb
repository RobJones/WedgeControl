class Wedge < ActiveRecord::Base
  belongs_to :input_type, :class_name => "QueryableObject"
  belongs_to :output_type, :class_name => "QueryableObject"
  has_and_belongs_to_many :wedge_elements
end
