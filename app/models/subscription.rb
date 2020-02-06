# frozen_string_literal: true

class Subscription < ApplicationRecord
  belongs_to :leader, class_name: 'User'
  belongs_to :follower, class_name: 'User'
end
