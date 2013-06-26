Fabricator(:chapter) do
  title { sequence(:title) {|i| "Chapter #{i}" } }
  number { sequence(:number) {|i| i } }
  sha  { SecureRandom.hex }
  sections(count: 3)
end
