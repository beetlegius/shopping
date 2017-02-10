class Product < ApplicationRecord

  # CONFIG

  extend FriendlyId
  friendly_id :name

  include Destroyable

  # CALLBACKS

  # RELATIONS

  belongs_to :brand, counter_cache: true
  belongs_to :category, counter_cache: true

  has_many :reviews, dependent: :destroy
  has_many :items
  has_many :orders, through: :items

  has_many :photos, as: :owner, dependent: :destroy

  # SCOPES

  default_scope -> { order :name }

  # VALIDATIONS

  validates :name, :price, presence: true
  validates :price, :promotional_price, numericality: { greater_than: 0 }, allow_nil: true

  # CLASS METHODS

  # INSTANCE METHODS

  def rating
    reviews.any? ? reviews.sum(&:rating) / reviews.count : 0
  end

  def can_delete?
    orders.empty?
  end

  # ALIASES

  alias_attribute :to_s, :name
  alias_attribute :to_label, :name

  # PRIVATE METHODS

  private

end
