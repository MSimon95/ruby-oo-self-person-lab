# # your code goes here
# - First you need to create a person class that is initialized with a name that cannot be changed.
# - Each instance of class `Person`should be able to remember their name
# - Each instance of  class `Person` should start with $25 in their bank accounts
# - Each instance of  class `Person` should start with eight happiness points
# - Each instance of  class `Person` should start with eight hygiene points
# - The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and  0 respectively
# - The amount in the bank account should also be able to change, though it has no max or min.
require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name_par, bank_account = 25)
        @name = name_par
        @bank_account = bank_account
        @happiness = 8
        @hygiene = 8
    end
end
