class Wedge < ActiveRecord::Base
  belongs_to :input_type, :class_name => "QueryableObject"
  belongs_to :output_type, :class_name => "QueryableObject"
end
