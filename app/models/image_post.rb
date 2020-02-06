# frozen_string_literal: true

class ImagePost < Post
  validates :url, presence: true
end
