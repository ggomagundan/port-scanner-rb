# Port-Scanner-rb

`port-scanner-rb` is Port Scanning to specific host 
Concurrent-ruby


## Prepare

```ruby
gem install concurrent-ruby-edge
```

## Usage

Default Value is 
`PORT_LIST = [21,22,23,25,53,80,443,3306,8080]`
`HOST = "127.0.0.1"`

If wanna another `port` or `host`, Change These Variables

```sh
$ ruby scanner.rb

Port 443 is open
Port 53 is open
Port 80 is open
Port 21 is closed
Port 23 is closed
Port 3306 is closed
Port 25 is closed
Port 8080 is closed
Port 22 is closed

```


## Reference(concurrent-ruby) documentation 

The Documentation is at
https://github.com/ruby-concurrency/concurrent-ruby

## Change Log


This link listing [Change Log](https://github.com/ggomagundan/port-scanner-rb/blob/master/CHANGE_LOG.md)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

The gem is available as open source under the terms of the [MIT
License](http://opensource.org/licenses/MIT).





