module HomeHelper
  def articles(query)
    require 'rss'
    require 'open-uri'
    url = "https://news.google.com/search?q=#{query}&hl=en-GH&gl=GH&ceid=GH%3Aen"
    open(url) do |rss|
      rssFeed = RSS::Parser.parse(rss)
      puts "Title #{rssFeed.channel.title}"
      rssFeed.items.each do |item|
        puts "Item: #{item.title}"
      end
    end
  end
end
