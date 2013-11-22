# Financial Predictor
Recent research studies have shown that Twitter’s mood correlates somehow to DJIA closing values. For me, everything started when, at my course of Social Media and Machine Learning, I had to analyze one of the Bollen et al. research papers about this topic. Twitter mood predicts the stock market.

Bollen’s research claimed close to 90 percent accuracy in predicting the stock’s daily changes. When people seemed calm, the Dow went up. When they became anxious, it went down.

This paper had a lot of media impact, and a lot of financial institutions started to pay attention to social media tools. I had to present the algorithm that made this possible, so if you want, you can take a look at my Prezi

With a little of research I found a startup that recently received 30M dollars of investment. Dataminr ’s algorithms mine tweets that contain information that can affect the stock market. So, what comes to my mind is, why not mixing the two systems and see what happens? I am working on analyzing Twitter mood’s (based on Bollen paper I am focused on calm dimension) and at the same time mining Twitter data looking for relevant information for DJIA closing values. After that let’s see what is the correlation (Granger correlation) and how can an efficient system be built using machine learning techniques! So here is my research project proposal

 

Anyone who wants to join is more than welcome, specially for the finance area. Right now I am talking with a CME contact and professors for mining important news that can affect the Dow, but definitely I need some help here! Also, thanks to Aron Culotta, I have a great twitter dataset to test the mining techniques.

# Install
First you need to install the following tools
- [Json tool](https://github.com/zpoley/json-command)
- [Ruby language bindings for LIBSVM](https://github.com/febeling/rb-libsvm)
- [A ruby gem that retrieves stock quotes from Yahoo](https://github.com/nas/yahoo_stock)

# Dataset format
- You will need this part
- For the sentiment classification
	- You need to store your files at dataset/sentiment . 
	- Each file will store tweets of a day prefiltered as the Filter.txt at the Twitter API folder says. The format should separate each tweet with JSON format (separated by '{}'). There is an example at this repo.
	
- For mining relevant news
	- You need to store your files at dataset/news
	- Each file will store tweets of a day prefiltered as the Filter.txt at the Twitter API folder says. The format should separate each tweet with JSON format (separated by '{}'). There is an example at this repo.
	- Each tweet should be formatted exactly as the example of this repo, for now. This way the script will be able to parse only the text of the tweet

- ##### There is a helper to know how to separate a .log or a .txt file with a lot of tweets from a period bigger than a day at the dataset folder

# Usage
Please do not forget to look at the Dataset section
- Go to src folder and run the script finance_predictor.rb. You need to give it two arguments: start date and end date. 
- It will show the sentiment score, the news alarms score and finally the Dow Jones Closing values for that period
- DO NOT FORGET to previously sort your files at the dataset folder. This should correspond with the period of the arguments.
- Example: $ ruby finance_predictor.rb "2013-11-02" "2013-11-10"

# More info
For more information, like how to collect the data check my blog:
- [How To Collect Tweets, Step By Step.](http://lolapriego.com/blog/how-to-collect-tweets-step-by-step/)
- [General Info](http://lolapriego.com/blog/can-twitter-predict-the-stock-market/)
