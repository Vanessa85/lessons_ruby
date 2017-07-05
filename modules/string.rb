# monkey patching
# https://github.com/rails/rails/blob/master/activesupport/lib/active_support/core_ext/string/inflections.rb
class String
  def palindrome?
    letters = self.downcase.scan(/\w/)
    letters == letters.reverse
  end
end
