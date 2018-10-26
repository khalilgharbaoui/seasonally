# https://github.com/rails/rails/pull/21192/commits/4bedecd4d5f46c15aa50fd532cae69dba4ce3186
# https://stackoverflow.com/questions/19093487/ruby-create-range-of-dates#answer-19094504
#
# example usage:
# a = DateTime.new(2018, 6, 1)
# b = DateTime.new(2018, 6, 30)
# x = a...b
# x.step(1.day).map{|x| puts x}
# x.step(1.day).map{|x| x.between?(a,b)}

module RangeWithStepTime
  def step(step_size = 1, &block)
    return to_enum(:step, step_size) unless block_given?

    # Defer to Range for steps other than durations on times
    return super unless step_size.is_a? ActiveSupport::Duration

    # Advance through time using steps
    time = self.begin
    op = exclude_end? ? :< : :<=
    while time.send(op, self.end)
      yield time
      time = step_size.parts.inject(time) { |t, (type, number)| t.advance(type => number) }
    end

    self
  end
end

Range.prepend(RangeWithStepTime)
