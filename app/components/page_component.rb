# frozen_string_literal: true

class PageComponent < ViewComponent::Base
  def initialize(path)
    @path = path
  end
end
