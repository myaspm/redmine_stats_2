require 'redmine'
require 'redmine_stats/redmine_stats'


Redmine::Plugin.register :redmine_stats do
  name 'Redmine Stats plugin'
  author 'Luis Fontes <mail.fontes@gmail.com>'
  description 'Plugin to display global statistics of projects'
  version '0.0.3'
  #url 'http://example.com/path/to/plugin'
  #author_url 'http://example.com/about'


  permission :access_statistics, :stats => :index



  menu :top_menu, :stats, { :controller => 'stats', :action => 'index', :time_filter => "current_week"}, 
  			:caption => :stats_label_stats, :after => :my_page,
  			:if => Proc.new {
    					User.current.allowed_to?(:access_statistics, nil, {:global => true})
   			}


end