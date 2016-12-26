class Collection < ActiveRecord::Base

  include Filterable

  after_initialize :default_values

  belongs_to :collectioner
  has_many :products, dependent: :destroy

  validates :title, presence: :true, uniqueness: true
  validates :collectioner, presence: :true


  # SCOPES / FILTERING / ORDERING

  # default collection sorting set to recency
  default_scope { order(created_at: :desc) }

  # all columns are available for sorting and ordered ASC | recency is ordered DESC
  scope :sort_by_recency, -> { reorder(created_at: :desc) }

  # scope is called is with nil value for name (we don't specify name in sorting)
  scope :sort_by_collectioner_name, -> (name) do
    self.joins(:collectioner).reorder("collectioner.name asc")
  end

  private

  def default_values
    self.is_live ||= false
  end
end
