require './opentable'
require "./restaurant"
require "./table"

def make_open_table
  OpenTable.new(
    [Restaurant.new("El Porton", "Mexican", 2, [
                    Table.new(4, false),
                    Table.new(4, true)
    ]),
    Restaurant.new("On the Border", "Mexican", 2, [
                    Table.new(2, true),
                    Table.new(4, false),
                    Table.new(4, true)
    ]),
    Restaurant.new("Dominick's", "Italian", 2, [
                      Table.new(4, false),
                      Table.new(4, true)
    ])
  ])
end