class StaffMember < ActiveRecord::Base
  belongs_to :manager
end