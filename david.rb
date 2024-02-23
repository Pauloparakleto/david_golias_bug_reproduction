require_relative 'golias'

class David
  include Golias

  def initialize(number)
    @number = number
  end

  def decorate_number
    pretty_number(NUMBER_TO_BE_PRETTY_INSTANCE)
  end

  def self.decorate_number
    pretty_number(self::NUMBER_TO_BE_PRETTY)
  end

  private

  NUMBER_TO_BE_PRETTY_INSTANCE = 10
  NUMBER_TO_BE_PRETTY = 7
end