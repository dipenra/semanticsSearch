class ProductCache < ApplicationRecord
  validates :key, presence:true
  validates :name, presence: true
  validates :values, presence: true

  def self.getKey(name, offset)
    return Digest::MD5.hexdigest(name + offset.to_s)
  end
end
