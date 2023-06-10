class ButtonClicksController < ApplicationController
  # get / - This causes a double render - resulting in no flash messages
  def broken
      render(PageComponent.new(redirect_to_broken_path),)
  end

  # get /fixed - This works as expected
  def fixed
    render "/view_component_page", locals: { component: PageComponent.new(redirect_to_fixed_path) }
  end

  def redirect_to_broken
    redirect_to root_path, notice: "This flash message won't show up due to the double render."
  end

  def redirect_to_fixed
    redirect_to fixed_path, notice: "This flash message will show up."
  end
end
