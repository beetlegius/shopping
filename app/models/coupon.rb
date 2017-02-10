class Coupon < ApplicationRecord

  # CONFIG

  include Destroyable

  # CALLBACKS

  # RELATIONS

  has_many :orders

  # SCOPES

  default_scope -> { order created_at: :desc }

  # VALIDATIONS

  validates :code, :discount, :valid_until, presence: true
  validates :code, uniqueness: true
  validates :discount, numericality: { greater_than: 0 }

  # CLASS METHODS

  # INSTANCE METHODS

  def can_delete?
    orders.empty?
  end

  # ALIASES

  alias_attribute :to_s, :code
  alias_attribute :to_label, :code

  # PRIVATE METHODS

  private

end
