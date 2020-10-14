class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached? #was_attached?メソッドは、self.image.attached?という記述によって、画像があればtrue、なければfalseを返す仕組み

  def was_attached?
    self.image.attached?
  end

end

