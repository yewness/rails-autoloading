# leave type
preset_leaves = %w(annual sick emergency maternity paternity compassionate)
preset_leaves.map { |e| e.humanize }.each { |type| Leave::Type.find_or_create_by(name: type) }
