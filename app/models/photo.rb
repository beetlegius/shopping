class Photo < ApplicationRecord

  # CONFIG

  @files = %w(image)

  include Destroyable, Fileable

  # CALLBACKS

  before_create :set_order

  # RELATIONS

  belongs_to :owner, polymorphic: true

  # SCOPES

  default_scope -> { order :order }

  # VALIDATIONS

  validates :image, presence: true

  # CLASS METHODS

  # INSTANCE METHODS

  # ALIASES

  alias_attribute :to_s, :image_name
  alias_attribute :to_label, :image_name

  # PRIVATE METHODS

  private

  def set_order
    self.order ||= owner.photos.count.next
  end

end
