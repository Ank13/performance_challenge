desc "calculate_karma"
task :set_karma => :environment do
  User.all.each do |user| 
    user.update_attribute(:karma_points_count, p = user.karma_points.sum(:value))
  end
end
  # User.reset_counters(user.id, :karma_points_count)

# 1: tail -f log/development.log
# 2: get to the point where we can see the 200ms operation
# 3: add indexes one at a time, measure improvement.
