class Book
  attr_reader :title, :author, :publication_year

  def initialize(details)
    @title = details[:title]
    @author_first_name = details[:author_first_name]
    @author_last_name = details[:author_last_name]
    @author = "#{@author_first_name} #{@author_last_name}"
    @publication_date = details[:publication_date]
    @publication_year = @publication_date[-4..-1]
  end
end