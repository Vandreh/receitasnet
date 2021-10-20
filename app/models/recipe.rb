class Recipe < ActiveRecord::Base
	
	validates :name, :stuff, :duration, :prepare_mode, presence:true
	validates_length_of :stuff, maximum: 200
	validates_length_of :prepare_mode, maximum: 300
	validates_numericality_of :calories, greater_than_or_equal_to:0, presence:true
	#validates_format_of :poster, with: /\w+\.(gif|jpg|png)\z\i, message:"utilizar somente arquivo GIF, JPEG, ou PNG."
	validates_format_of :poster, allow_blank: true, with: %r{.(gif|jpg|jpeg|png)\Z}i, message:"utilizar somente arquivo GIF, JPEG, ou PNG."
	#validates :poster, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }


	KIND = %w(Carnes Aves Peixes Massas Saladas Doces Outros)
	validates_inclusion_of :kind, in: KIND

	def light?
		calories.blank? || calories < 100
	end

	def self.created_at
		where('created_at <= ?', Time.now).order('created_at desc')
	end

end
