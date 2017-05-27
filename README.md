# GRand

I needed something similar to `nrand` in numpy. see - https://docs.scipy.org/doc/numpy/reference/generated/numpy.random.randn.html

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'grand'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grand

## Usage

    > require 'grand'
    => true
    > GRand::randn
     => 0.8459468356387407
    > GRand::randn(1, 2)
     => [[-0.5259311445434742, 0.5058339155942712]]
    > GRand::rand(n3, 2)
     => [[1.0015454079393156, -0.2544992806165275], [-0.7978337095145441, -1.7813946216288779], [0.9631364295796622, 2.157358119782299]]
    > GRand::randn(2, 1)
     => [[-0.634759160869425], [0.549004503513128]]
    > GRand::randn(3, 3, 3)
     => [[[-1.689589847133065, -0.41054654640696786, 0.36381728856120105], [-0.9437196021569799, 1.19558636009585, -1.1605453269136559], [1.0837506708104712, -1.1395537425254014, 0.5925022408229144]], [[-1.7133014088074843, -0.805051352081152, 0.3746241803203248], [0.3642622933280586, 0.5843943798812012, 1.141236536447513], [-0.25543269419159714, 1.1743836190357984, -0.5161554049975062]], [[-0.03303459622587511, -3.5547854922416438, 0.17581738567933877], [-0.979119743081027, 1.397273496753393, 0.18670646583239753], [-0.26985128879011183, -0.5662975999343106, 0.46600852896034334]]]

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gregors/grand.

