require 'redmine'

Rails.logger.info 'Helping Charts Plugin for RedMine'

Rails.configuration.to_prepare do
	ActionView::Base.send :include, OpenFlashChart::View
	OpenFlashChart::Base.send :include, OpenFlashChart::View
	ActionController::Base.send :include, OpenFlashChart::Controller
	ActionController::Base.send :include, OpenFlashChart
	ActiveRecord::Base.send :include, OpenFlashChart::View
	ActiveRecord::Base.send :include, OpenFlashChart::Controller
	ActiveRecord::Base.send :include, OpenFlashChart
end

Redmine::Plugin.register :open_flash_chart do
  name 'Open Flash Chart'
  author 'Daisuke Miura'
  description 'Plugin for Redmine which supports drawing beautiful charts.'
  version '2.0.1'

  # Minimum version of Redmine.
  requires_redmine :version_or_higher => '2.0.0'

end