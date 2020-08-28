# frozen_string_literal: true

##
# The Title Case method takes a string and titlecases it.
#   @param [String] title
#   @return [String]

def title_case(title)
  title.split.map(&:capitalize!).join(' ')
end
