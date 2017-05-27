require 'grand/version'
require 'rubystats'

module GRand
  def self.randn(*d)
    return normal_distribution.rng if d.size == 0

    x  = d.shift
    x.times.map{ self.randn(*d) }
  end

  def self.normal_distribution
    @@nd ||= Rubystats::NormalDistribution.new(0, 1)
  end
end
