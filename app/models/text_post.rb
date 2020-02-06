# frozen_string_literal: true

class TextPost < Post
  validates :body, presence: true
end
