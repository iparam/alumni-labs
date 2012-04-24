
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
	
	def active_class
   classes = {
     'home' => 'home',
     'university_profiles'=>'profile'
     
     }
 
	  classes[controller.controller_name + '.' + controller.action_name] || classes[controller.controller_name] || ''
 end		


 def active_nav_class(class_name)
	 active_class == class_name ? "active" : ""
	end
	
	def is_active?(controller, action)   
	 return 'active' if params[:controller].to_sym == controller && params[:action].to_sym == action     
  end
   def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
  def delete_btn(text="Delete")
    "<i class='icon-trash icon-white'></i> #{text}".html_safe
  end
  def markdown(content)
    markdown =Redcarpet::Markdown.new(Redcarpet::Render::XHTML,:hard_wrap=>true,:filter_html=>true,:autolink=>true,:no_intra_emphasis=>true)
    markdown.render(content).html_safe
  end
   def set_display_class(user)
    user.is_alumni? ? "" : "none"
  end
  def set_year_class(user)
    user.is_alumni? ? "none" : ""
  end
  
end
