class ButtonClicksController < ApplicationController
  def index
    # This causes a double render - resulting in no flash messages
    render(
      IndexPageComponent.new,
      content_type: "text/html",
    )
    
    # This works fine
    # render "/view_component_page", locals: { component: IndexPageComponent.new }
  end

  def create
    redirect_to root_path, notice: "This flash message won't show up due to the double render."
  end
end
