# frozen_string_literal: true

class User < ApplicationRecord
  has_many :microposts, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true

  # 試作feedの定義
  # 完全な実装は次章の「ユーザーをフォローする」を参照
  def feed
    Micropost.where('user_id = ?', id)
  end
end
