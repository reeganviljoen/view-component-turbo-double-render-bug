# frozen_string_literal: true

class PageComponent < ViewComponent::Base
  include Turbo::FramesHelper
  def initialize(path)
    @path = path
  end
end
