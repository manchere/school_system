# frozen_string_literal: true

class Question < ApplicationRecord # rubocop:todo Style/Documentation
  include Gravtastic

  gravtastic

  def gravatar
    image_src = "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}" # rubocop:todo Lint/UselessAssignment
  end
end
