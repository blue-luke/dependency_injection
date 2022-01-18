class Diary
  def initialize
    @entries = []
  end

  def add(title, body)
    @entries << Entry.new(title, body)
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end
