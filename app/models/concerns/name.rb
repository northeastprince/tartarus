module Name
  extend ActiveSupport::Concern

  included do
    normalizes :name, with: ->(name) { name.strip }
    validates :name, presence: true, length: {maximum: 20}
  end
end
