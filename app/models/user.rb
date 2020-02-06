# frozen_string_literal: true

class User < ApplicationRecord
  has_many :subscriptions, foreign_key: :follower_id, dependent: :destroy
  has_many :leaders, through: :subscriptions
  has_many :reverse_subscriptions, foreign_key: :leader_id, class_name: 'Subscription', dependent: :destroy
  has_many :followers, through: :reverse_subscriptions
  has_many :posts, dependent: :destroy
  has_many :text_posts, dependent: :destroy
  has_many :image_posts, dependent: :destroy
  has_many :comments

  def following?(leader)
    leaders.include? leader
  end

  def follow!(leader)
    leaders << leader if leader != self && !following?(leader)
  end
end
