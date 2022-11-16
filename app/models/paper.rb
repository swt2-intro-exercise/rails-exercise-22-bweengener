class Paper < ApplicationRecord
  validates :title, presence: true, allow_blank: false
  validates :venue, presence: true, allow_blank: false
  validates :year, presence: true, numericality: { only_integer: true }

  scope :published_in, ->(year) { where("year = ?", year) }

  has_and_belongs_to_many :authors

  def paper_params
    params.require(:paper).permit(:title, :venue, :year, :author_ids => [])
  end
end
