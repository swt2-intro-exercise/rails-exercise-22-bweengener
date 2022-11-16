class Author < ApplicationRecord

  validates :last_name, presence: true, allow_blank: false

  has_and_belongs_to_many :papers

  def name
    self.first_name + " " + self.last_name
  end

  def papers
    []
  end

end
