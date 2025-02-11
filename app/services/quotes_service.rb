class QuotesService
  def self.search_quotes(query)
    response = conn.get("/search/quotes?query=#{query}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("https://api.quotable.io")
  end
end