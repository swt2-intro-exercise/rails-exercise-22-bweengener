class Author < ApplicationRecord

  validates :last_name, presence: true, allow_blank: false

  def name
    self.first_name + " " + self.last_name
  end

  def papers
    []
  end

end
