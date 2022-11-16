class Paper < ApplicationRecord
  validate :title, allow_blank: false
end
