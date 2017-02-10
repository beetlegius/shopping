class Experience < ApplicationRecord

  # CONFIG

  include Destroyable

  VALUES = 1..5

  # CALLBACKS

  # RELATIONS

  belongs_to :order, counter_cache: true

  # SCOPES

  default_scope -> { order created_at: :desc }

  # VALIDATIONS

  validates :rating, presence: true, numericality: true, inclusion: { in: VALUES }

  # CLASS METHODS

  # INSTANCE METHODS

  # ALIASES

  alias_attribute :to_s, :rating
  alias_attribute :to_label, :rating

  # PRIVATE METHODS

  private

end
