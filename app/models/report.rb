class Report < ApplicationRecord
  has_many :report_items, dependent: :destroy
  belongs_to :user
  belongs_to :request

  validates :user_id,  presence: true
  validates :start, presence: true
  validates :end, presence: true
  validates :region, presence: true

  accepts_nested_attributes_for :report_items, allow_destroy: true

  def self.search(item)
    if !item.blank?
      Report.where('region LIKE ?', "%#{item}%")
    end
  end

end