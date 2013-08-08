require 'redmine'

Redmine::Plugin.register :redmine_recenthistory do
  name 'Redmine Recent History'
  author 'Dustin Lambert'
  description 'This is a Redmine plugin which will keep up with each user\'s history and show a recent issue list'
  version '0.0.2'
end

class RecentHistoryViewListener < Redmine::Hook::ViewListener

  # Adds javascript and stylesheet tags
  def view_layouts_base_html_head(context)
    tags = [javascript_include_tag('recenthistory', :plugin => :redmine_recenthistory)]
    tags << javascript_include_tag('jquery.cookie.js', :plugin => :redmine_recenthistory)
    return tags.join(' ')
  end

end
