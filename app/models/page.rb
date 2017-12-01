class Page < ApplicationRecord
  scope :published, -> { where('published_at <= ?', Time.zone.now) }
  validates :slug, uniqueness: { case_sensitive: false }
end
