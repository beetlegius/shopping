class Item < ApplicationRecord

  # CONFIG

  include Destroyable

  delegate :name, to: :product

  # CALLBACKS

  # RELATIONS

  belongs_to :order, counter_cache: true
  belongs_to :product

  # SCOPES

  default_scope -> { order created_at: :desc }

  # VALIDATIONS

  validates :unit_price, :quantity, presence: true, numericality: { greater_than: 0 }

  # CLASS METHODS

  # INSTANCE METHODS

  def can_delete?
    order.can_delete?
  end

  # ALIASES

  alias_attribute :to_s, :name
  alias_attribute :to_label, :name

  # PRIVATE METHODS

  private

end
