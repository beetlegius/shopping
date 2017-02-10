class Brand < ApplicationRecord

  # CONFIG

  @files = %w(image)

  extend FriendlyId
  friendly_id :name

  include Destroyable, Fileable

  # CALLBACKS

  # RELATIONS

  has_many :products

  # SCOPES

  default_scope -> { order :name }

  # VALIDATIONS

  validates :name, presence: true

  # CLASS METHODS

  # INSTANCE METHODS

  def can_delete?
    products.empty?
  end

  # ALIASES

  alias_attribute :to_s, :name
  alias_attribute :to_label, :name

  # PRIVATE METHODS

  private

end
