require './Predictor'
require 'json'

# This class takes the news dataset and generates an array that represents alarms for important news.
# If there is no important news the output of that day will be 0.
# The score will correspond with the number of alarms found on a day.
# Each day is scored

class DataMiner

	# Takes the all the log files from the dataset_news folder and runs the score method for each file
	# It collects the output into an array
	# TODO: it receives the period time to analyze
	def run
		alarm_score = []

		Dir["../dataset/news/*"].each do |file|
			alarm_score << score(file)
		end

		p alarm_score
	end

	def score(relative_path)
		# We are going to open the file 
		text = File.open(File.expand_path( relative_path, File.dirname(__FILE__)), "r:iso-8859-1:utf-8")
		text_splitted = text.read().split('}')
		score = 0

		# We are going to deal with the format of the tweet. It is not possible to parse it with JSON
		# TODO: solve the issue with JSON.
		tweets = []

		text_splitted.each do |tweet|
			tweets << tweet.split('"')[7]
		end

		predictor = Predictor.new

		# Scoring each tweet
		tweets.each do |tweet|
			if tweet != nil
				predictor.predict(tweet) ==1 ? score += 1 : 0
			end
		end

		score
	end


end