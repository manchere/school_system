# frozen_string_literal: true

module HomeHelper # rubocop:todo Style/Documentation
  def articles(query)
    require 'rss'
    require 'open-uri'
    url = "https://news.google.com/search?q=#{query}&hl=en-GH&gl=GH&ceid=GH%3Aen"
    open(url) do |rss|
      rssFeed = RSS::Parser.parse(rss) # rubocop:todo Naming/VariableName
      puts "Title #{rssFeed.channel.title}" # rubocop:todo Naming/VariableName
      rssFeed.items.each do |item| # rubocop:todo Naming/VariableName
        puts "Item: #{item.title}"
      end
    end
  end
end
