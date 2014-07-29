require 'time'

class SrtProcessing

	def srt(param)
		time_init = "1:31:51,210"
		array = time_init.gsub(/[,]/, ':').split(":")

		total_ms = (array[3].to_i + param) 
		ms =  total_ms % 1000
		total_s = (total_ms/1000) + array[2].to_i
		s = total_s % 60
		total_m = (total_s/60) + array[1].to_i
		m = total_m % 60
		total_h = (total_m/60) + array[0].to_i
		h = total_h

		time_end = [h, m, s, ms].join(":").reverse.sub(/[:]/, ',').reverse
		puts time_init + " => " + time_end
	end
end


SrtProcessing.new.srt(2500)