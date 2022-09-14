class Author
  attr_reader :name, :books

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @name = "#{@first_name} #{@last_name}"
    @books = []
  end
end