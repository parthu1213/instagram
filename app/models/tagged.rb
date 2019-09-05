class Tagged < ApplicationRecord
  belongs_to :user,optional: true
end
