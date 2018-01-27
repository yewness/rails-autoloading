class Leave::Group < ApplicationRecord
  has_one :setting, class_name: 'Leave::Setting'
end
