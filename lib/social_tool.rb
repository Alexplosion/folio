module SocialTool
    def self.twitter_search
        client = Twitter::REST::Client.new do |config|
        config.consumer_key        =  ENV.fetch("TCONSUMER_KEY")
        config.consumer_secret     =  ENV.fetch("TCONSUMER_SECRET")
        config.access_token        =  ENV.fetch("TACCESS_TOKEN")
        config.access_token_secret =  ENV.fetch("TACCESS_SECRET")
        end



        client.search("#rails", result_type: "recent").take(7).collect do |tweet|
             "#{tweet.user.screen_name}: #{tweet.text}"
        end
    end
end