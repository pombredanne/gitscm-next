Fabricator(:section) do
  title { sequence(:title) {|i| "Section #{i}" } }
  number { sequence(:number) {|i| i } }
  slug { SecureRandom.uuid }
  plain "hello world"
  html "<div>hello world</div>"
  source_url "http://git-scm.com/"
end
