class Review < ApplicationRecord

  # CONFIG

  @files = %w(image)

  include Destroyable, Fileable

  VALUES = 1..5

  # CALLBACKS

  # RELATIONS

  belongs_to :product

  # SCOPES

  default_scope -> { order created_at: :desc }

  # VALIDATIONS

  validates :author, :rating, :title, presence: true
  validates :rating, numericality: true, inclusion: { in: VALUES }

  # CLASS METHODS

  # INSTANCE METHODS

  # ALIASES

  alias_attribute :to_s, :title
  alias_attribute :to_label, :title

  # PRIVATE METHODS

  private

end
