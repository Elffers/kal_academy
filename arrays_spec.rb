require_relative "arrays"

describe "find_duplicate_in" do

  it "returns element that only appears once" do
    array = [1, 1, 2 ]
    expect(find_duplicate_in(array)).to eq 2

    array = [1, 1, 3, 5, 5 ]
    expect(find_duplicate_in(array)).to eq 3

    array = [1, 3, 3, 5, 5 ]
    expect(find_duplicate_in(array)).to eq 1

    array = [1, 1, 3, 3, 5 ]
    expect(find_duplicate_in(array)).to eq 5

    array = [1, 1, 3, 3, 5, 7, 7 ]
    expect(find_duplicate_in(array)).to eq 5

    array = [1, 1, 3, 3, 5, 5, 7 ]
    expect(find_duplicate_in(array)).to eq 7

    array = [1, 1, 3, 3, 4, 7, 7, 8, 8, 9, 9]
    expect(find_duplicate_in(array)).to eq 4
  end
end

describe "find_duplicate_in" do
  it "returns the duplicated element" do
    array = [1, 1, 2 ]
    expect(find_dup_number(array)).to eq 1

    array = [1, 2, 2, 3 ]
    expect(find_dup_number(array)).to eq 2
  end
end
