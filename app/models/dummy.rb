class Dummy
    include Mongoid::Document
    include Mongoid::Timestamps

    store_in collection: :dummy

    field :data, type: String
    field :data1, type: String

end