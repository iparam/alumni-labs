module ApplicationHelper
  def sidebar_enabled?
		current_page = "#{controller.controller_name}.#{controller.action_name}"
		current_controller = controller.controller_name
		pages = %w(home)

		return pages.include?(current_page) || pages.include?(current_controller)
	end
	def main_content_css_class
		sidebar_enabled? ? "span9" : "span12"
	end

	# Returns the CSS class for the 'sidebar' div depending on sidebar requirement
	def sidebar_css_class
		sidebar_enabled? ? "span3" : "dont-show"
	end
end
