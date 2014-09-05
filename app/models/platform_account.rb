class PlatformAccount < ActiveRecord::Base
  belongs_to :account
  belongs_to :platform_account_type
  has_one :platform, through: :platform_account_type
  validates :name, presence: true

  def stats
    if stats_uri
      conn = Faraday.new(:url => stats_uri)
      JSON.parse(conn.get.body)
    end
  end
end
