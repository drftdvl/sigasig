class Dependent < ActiveRecord::Base
	validates :last_name, :first_name, :relationship, :birth_date, :presence => true
end
