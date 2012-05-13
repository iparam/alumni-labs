require "user_profile/engine"

module UserProfile

  mattr_accessor :user_class
  class << self
    def user_class
      if @@user_class.is_a?(Class)
        raise "Pase use a string "
      elsif @@user_class.is_a?(String)
        @@user_class.constantize
      end
    end 
  end
end
