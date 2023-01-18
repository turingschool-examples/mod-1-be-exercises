# ./photo.rb
class Photo
	attr_reader :image_source, :caption, :comments

	def initialize(image_source, caption)
		@image_source = image_source
		@caption = caption
		@comments = {}
	end

	def display
		display_string = "-" * 50 + "\n"
		display_string += "PHOTO" + "\n"
		display_string += "URL: #{image_source}" + "\n"
		display_string += "Caption: #{caption}" + "\n"
		comments.each do |id, text|
			display_string += "#{id}: #{text}" + "\n"
		end
		display_string += "-" * 50
		return display_string
	end

	def add_comment(comment)
		comments[next_comment_id] = comment
	end

	def remove_comment(id)
		comments.delete(id)
	end

	def next_comment_id
		if total_comments == 0
			total_comments + 1
		else
			comments.keys.last + 1
		end
	end

	def total_comments
		comments.count
	end
end
