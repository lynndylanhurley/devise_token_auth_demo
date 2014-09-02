class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  #validate :ensure_allowed_favorite_color

  def ensure_allowed_favorite_color
    if favorite_color and favorite_color != ""
      unless ApplicationHelper::COLOR_NAMES.any?{ |s| s.casecmp(favorite_color)==0 }
        matches = ApplicationHelper::COLOR_SEARCH.search(favorite_color)
        msg = "We've never heard of the color \"#{favorite_color}\""

        if matches.length > 1
          closest_match = matches.last[:string]
          second_closest_match = matches[-2][:string]
          msg += ". Did you mean \"#{closest_match}\"? Or perhaps \"#{second_closest_match}\"?"
        end

        errors.add(:favorite_color, msg)
      end
    end
  end
end
