class AboutController < ApplicationController
  skip_before_action :ensure_current_user

  def about
    @about_text = "This is 'about' text, and you are now rivoted with my idea and the design of the page."
  end
end