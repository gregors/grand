require 'grand/version'
require 'rubystats'
require 'matrix'
require 'core_ext/enumerable'

module GRand
  def self.array_randn(*d)
    return normal_distribution.rng if d.size == 0

    x  = d.shift
    x.times.map{ self.array_randn(*d) }
  end

  def self.randn(*d)
    return normal_distribution.rng if d.size == 0

    x  = d.shift
    Vector[*x.times.map{ self.randn(*d) }]
  end

  def self.normal_distribution
    @@nd ||= Rubystats::NormalDistribution.new(0, 1)
  end

  def self.zeros(*d)
    return 0 if d.size == 0

    x = d.shift
    Vector[*x.times.map{ self.zeros(*d) } ]
  end
end
