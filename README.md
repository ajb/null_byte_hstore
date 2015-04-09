1. Update `database.yml` with Postgres connection deets
2. `bundle install && rake db:create && rake db:migrate && rake db:test:prepare`
3. `rake test`

```
Run options: --seed 15456

# Running:

E.

Finished in 0.037728s, 53.0110 runs/s, 0.0000 assertions/s.

  1) Error:
FooTest#test_null_byte_in_hstore_column:
ArgumentError: string contains null byte
    test/models/foo_test.rb:11:in `block in <class:FooTest>'

2 runs, 0 assertions, 0 failures, 1 errors, 0 skips
```
