# ./photo.rb
class Photo
	attr_reader :image_source, :caption, :comments

	def initialize(image_source, caption)
		@image_source = image_source
		@caption = caption
		@comments = {}
	end

	def display
		puts "-" * 50
		puts "PHOTO"
		puts "URL: #{image_source}"
		puts "Caption: #{caption}"
		comments.each do |id, text|
			puts "#{id}: #{text}"
		end
		puts "-" * 50
	end

	def add_comment(comment)
		comments[next_comment_id] = comment
		puts "Added '#{comment}' for a total of #{total_comments} comments."
	end

	def remove_comment(id)
		comments.delete(id)
		puts "Deleted comment with ID #{id}. Comment count now at #{total_comments}"
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
