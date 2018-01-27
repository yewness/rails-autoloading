class Leave::Setting < ApplicationRecord
  belongs_to :group, class_name: 'Leave#Group', optional: true
end
