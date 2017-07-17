module ApplicationHelper

	def after_sign_in_path_for(resource)
  stored_location_for(resource) ||
    if resource.is_a?(User) && resource.can_publish?
      user_movie_path
    else
      super
    end
	end
	
end
