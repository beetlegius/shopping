class Order < ApplicationRecord

  # CONFIG

  include Destroyable

  STATUSES = [PREORDER = 'preorder', SENT = 'sent', FINISHED = 'finished']

  # CALLBACKS

  # RELATIONS

  belongs_to :coupon, counter_cache: true
  has_many :experiences

  # SCOPES

  default_scope -> { order created_at: :desc }

  # VALIDATIONS

  validates :status, presence: true, inclusion: { in: STATUSES }
  # validates :first_name, :last_name, :address, :city, :zip_code, :phone, presence: true

  # CLASS METHODS

  # INSTANCE METHODS

  def can_delete?
    status == PREORDER
  end

  # ALIASES

  alias_attribute :to_s, :id
  alias_attribute :to_label, :id

  # PRIVATE METHODS

  private

end
