class Foo < ActiveRecord::Base
  serialize :serialized_column, Hash
end
