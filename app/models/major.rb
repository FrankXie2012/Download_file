class Major < ActiveRecord::Base
  attr_accessible :classname, :dfile_id

  has_many :dfiles, :dependent => :destroy

  validates :classname, presence: true
end
