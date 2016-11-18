require('rspec')
require('word_count')
require('pry')

describe('Fixnum#word_count') do
  it('returns a word count of 1 if the single calling word and argument word match') do
  expect(("ruby").word_count("ruby", false)).to(eq(1))
  end

  it('returns a word count of 0 if the single calling word and argument word dont match') do
  expect(("javascript").word_count("ruby", false)).to(eq(0))
  end

  it('returns a word count of matches if the multi word calling sting and argument string match') do
  expect(("ruby is the best I love ruby").word_count("ruby", false)).to(eq(2))
  end

  it('returns a word count of multi word 0 if the calling sting and argument dont string dont have matches') do
  expect(("ruby is the best I love ruby").word_count("javascript", false)).to(eq(0))
  end

  it('ignores capital letter and special symbols, returns a word count of words that match if the calling sting and argument dont string have matches') do
  expect(("ru?b%y is the best I love Ruby").word_count("ruby", false)).to(eq(2))
  end

  it('count partial words if the calling sting and argument string have matches and true is passed as argument') do
  expect(("javascript is the best I love javascript").word_count("java", true)).to(eq(2))
  end

end
