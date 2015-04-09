require 'test_helper'

class FooTest < ActiveSupport::TestCase
  test 'null byte in serialized column' do
    Foo.create(
      serialized_column: { 'key' => "yadayada \u0000 that was a null byte" }
    )
  end

  test 'null byte in hstore column' do
    Foo.create(
      hstore_column: { 'key' => "yadayada \u0000 that was a null byte" }
    )
  end
end
