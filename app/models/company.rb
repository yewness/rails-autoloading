class Company < ApplicationRecord
  has_many :leave_types, class_name: 'Leave::Type', dependent: :destroy
  has_many :leave_groups, class_name: 'Leave::Group', dependent: :destroy
end
