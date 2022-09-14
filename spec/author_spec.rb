require './lib/book'
require './lib/author'

RSpec.describe Author do
  before (:each) do
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    # @villette = @charlotte_bronte.write("Villette", "1853")
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
    it 'can add a book to the books array' do
      jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      expect(@charlotte_bronte.books).to eq([jane_eyre])

      villette = @charlotte_bronte.write("Villette", "1853")
      expect(@charlotte_bronte.books).to eq([jane_eyre, villette])
    end
  end
end