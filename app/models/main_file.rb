class MainFile < ActiveRecord::Base
	validates :family_name, 
      :job_position,  
      :family_name, 
      :given_name,  
      :application_date, 
      :sex,  
      :height_ft,
      :height_in,
      :weight,
      :birth_date, 
      :birth_place,  
      :citizenship, 
      :hair_color, 
      :religion, 
      :job_skills, 
      :emergency_name, 
      :emergency_address, 
      :emergency_relationship, 
      :emergency_number, 
      :language, 
      :interviewing_officer,
      :emp_status_id,
      :emp_type_id,
      :mar_status_id,
      :presence => true
    validates :sss_number, presence: true, length: 12..12
    validates :tin_number, presence: true, length: 11..16
    validates :philhealth, presence: true, length: 14..14
    validates :pagibig_number, presence: true, length: 14..14
    validates_numericality_of :weight, :greater_than_or_equal_to => 0
    validates_numericality_of :height_in, :greater_than_or_equal_to => 0, :only_integer => true
    validates_numericality_of :height_ft, :greater_than_or_equal_to => 0, :only_integer => true

  belongs_to :emp_type
	belongs_to :emp_status
	belongs_to :mar_status

	has_one :guard_ext_file, :dependent => :destroy
	accepts_nested_attributes_for :guard_ext_file, :reject_if => :all_blank, allow_destroy: true
	has_many :spouses, :dependent => :destroy
	accepts_nested_attributes_for :spouses, :reject_if => :all_blank, allow_destroy: true
	has_many :clubs, :dependent => :destroy
	accepts_nested_attributes_for :clubs, :reject_if => :all_blank, allow_destroy: true
	has_many :educations, :dependent => :destroy
	accepts_nested_attributes_for :educations, :reject_if => :all_blank, allow_destroy: true
	has_many :emp_histories, :dependent => :destroy
	accepts_nested_attributes_for :emp_histories, :reject_if => :all_blank, allow_destroy: true
	has_many :emp_references, :dependent => :destroy
	accepts_nested_attributes_for :emp_references, :reject_if => :all_blank, allow_destroy: true
	has_many :family_ms, :dependent => :destroy
	accepts_nested_attributes_for :family_ms, :reject_if => :all_blank, allow_destroy: true
	has_many :res_histories, :dependent => :destroy
	accepts_nested_attributes_for :res_histories, :reject_if => :all_blank, allow_destroy: true
	has_many :dependents, :dependent => :destroy
	accepts_nested_attributes_for :dependents, :reject_if => :all_blank, allow_destroy: true

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" },
  :url => "/assets/main_files/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/main_files/:id/:style/:basename.:extension"
  validates_attachment_content_type :picture, :content_type => ["image/jpeg", "image/gif", "image/png", "image/bmp"]
end