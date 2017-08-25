module ReadingTimeFilter
	def reading_time( input )
		words_per_minute = 180

		words = input.split.size;
		minutes = ( words / words_per_minute ).floor
		minutes_label = ( ( minutes % 10 ) === 1 ) ? " минуты" : " минут"
		minutes > 0 ? "около #{minutes} #{minutes_label}" : "менее минуты"
	end
end

Liquid::Template.register_filter(ReadingTimeFilter)
