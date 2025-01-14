# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

  attr_accessor :email_addresses

  def initialize(emails)
    @email_addresses = emails
  end

  def parse
    split_array = @email_addresses.split(/[," "]/)
    result = split_array.delete_if {|s| s == "" }
    result.uniq
  end


end