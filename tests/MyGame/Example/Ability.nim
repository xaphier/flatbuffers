#[ MyGame.Example.Ability
  Automatically generated by the FlatBuffers compiler, do not modify.
  Or modify. I'm a message, not a cop.

  flatc version: 23.5.26

  Declared by  : 
  Rooting type : MyGame.Example.Monster ()
]#

import flatbuffers

type Ability* = object of FlatObj
func id*(self: Ability): uint32 =
  return Get[uint32](self.tab, self.tab.Pos + 0)
func `id=`*(self: var Ability, n: uint32): bool =
  return self.tab.Mutate(self.tab.Pos + 0, n)
func distance*(self: Ability): uint32 =
  return Get[uint32](self.tab, self.tab.Pos + 4)
func `distance=`*(self: var Ability, n: uint32): bool =
  return self.tab.Mutate(self.tab.Pos + 4, n)
proc AbilityCreate*(self: var Builder, id: uint32, distance: uint32): uoffset =
  self.Prep(4, 8)
  self.Prepend(distance)
  self.Prepend(id)
  return self.Offset()
