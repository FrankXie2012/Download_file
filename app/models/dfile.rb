class Dfile < ActiveRecord::Base
  belongs_to :major
  attr_accessible :store, :store_cache
  mount_uploader :store, StoreUploader

  def file_name
    self.store.to_s.split('/').last
  end
end
