class Request < ApplicationRecord
  #has_many :request_items, inverse_of: :request, dependent: :destroy, autosave: true
  has_many :request_items, dependent: :destroy

  has_one :report, dependent: :destroy
  belongs_to :user

  validates :user_id,  presence: true
  validates :start, presence: true
  validates :end, presence: true
  validates :region, presence: true
  validates :req_date, presence: true

  accepts_nested_attributes_for :request_items, allow_destroy: true

  def self.search(item)
    if !item.blank?
      Request.where('region LIKE ?', "%#{item}%")
    end
  end

end