# ruby-sub-strings

### Instruction

Implement a method `#substrings` that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

```ruby
  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  > substrings("below", dictionary)
  => { "below" => 1, "low" => 1 }
```

Next, make sure your method can handle multiple words:

```ruby
  > substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

### Notes on My Solution

I use the `#reduce` to create a new hash of occuring substrings and count the occurence. `Hash.new(0)` creates a hash with `0` as the default value of nonexisting keys. I call this method on the `dictionary` array, but only add the substring to the hash if it occurs in the `string`. To handle multiple words and make the method case insensitive, I convert `string` into an array of lowercase words beforehand.