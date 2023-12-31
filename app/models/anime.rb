class Anime < ApplicationRecord
  has_one_attached :cover_image

  serialize :genres, JSON
  serialize :studios, JSON

  include PgSearch::Model
  pg_search_scope :search_title, against: :title,  using: { tsearch: { dictionary: 'english' } }
end
