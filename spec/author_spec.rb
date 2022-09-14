require './lib/book'
require './lib/author'

RSpec.describe Author do
  before (:each) do
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    # @jane_eyre = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Jane Eyre", publication_date: "October 16, 1847"})
    # @villette = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Villette", publication_date: "1853"})
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

  end

  describe '#initialize' do
    it 'exists' do
      expect(@charlotte_bronte).to be_instance_of Author
    end

    it 'has a name' do
      expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
    end

    it 'has no books to start' do
      expect(@charlotte_bronte.books).to eq([])
    end
  end

  describe '#write' do
    xit 'can add a book to the books array' do
      # require 'pry'; binding.pry
      jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      # expect(@charlotte_bronte.books.jane_eyre).to be_instance_of Book
      expect(@charlotte_bronte.books).to eq([jane_eyre])
      
      villette = @charlotte_bronte.write("Villette", "1853")
      # expect(@charlotte_bronte.villette).to be_instance_of Book
      expect(@charlotte_bronte.books).to be([jane_eyre, villette])
    end
  end
end