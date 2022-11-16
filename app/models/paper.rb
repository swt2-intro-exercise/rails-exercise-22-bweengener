class Paper < ApplicationRecord
  validate :title, presence: true, allow_blank: false
end
