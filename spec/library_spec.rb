require './lib/library'
require './lib/author'
require './lib/book'

RSpec.describe Library do
  before (:each) do
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    @jane_eyre = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Jane Eyre", publication_date: "October 16, 1847"})
    @villette = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Villette", publication_date: "1853"})
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @dpl = Library.new("Denver Public Library")
  end

  describe '#initialize' do
    it 'exists' do
      expect(@library).to be_instance_of Library
    end

    it 'has a name' do
      expect(@library.name).to eq("Denver Public Library")
    end

    it 'has no books to start' do
      expect(@library.books).to eq([])
    end

    it 'has no authors to start' do
      expect(@library.authors).to eq([])
    end
  end
end