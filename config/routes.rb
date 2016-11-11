# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

#get 'stats', :to => 'stats#index', :time_filter => "current_week"
#match "stats",  :to => redirect("/stats/current_week")
get 'global_stats/(:time_filter)', :to => 'stats#index'
post 'global_stats/:time_filter', :to => 'stats#index'