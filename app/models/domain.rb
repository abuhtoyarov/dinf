class Domain < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates_format_of :name, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
