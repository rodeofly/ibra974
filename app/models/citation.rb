class Citation < ActiveRecord::Base
  def title
    "'#{self.quote}' #{self.author}"
  end
end
