require_relative "stacks"

describe "missing_paren" do
  it "returns index of unmatched paren" do
    expr = "1 + ( 2 * 3"
    expect(missing_paren expr).to eq 4

    expr = "1 + (2 * 3) + (5"
    expect(missing_paren expr).to eq 14

    expr = "1 + (2 * 3) + 5)"
    expect(missing_paren expr).to eq 15
  end
end
