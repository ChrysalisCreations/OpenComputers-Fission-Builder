This program is uploaded to an OpenComputers 
robot to build a simple NuclearCraft reactor. All
needed materials can be calculated by editing the
file "calc.lua" after changing the variables for 
the size; height, length, and width.  The robot 
will need certain upgrades to build this reactor 
properly, these upgrades are listed below:

Specific Requirements
The robot must have:
  inventory upgrade (any)
  hover upgrade (any tier)
  database upgrade (reccomended tier 3)

Other reccomended upgrades:
  angel upgrade (allows for building reactor in
  air, else sides will need to be built onto a
  wall)
  inventory controller upgrade (allows for auto
  refill from a chest)
  solar generator (robot needs less charging)
  battery upgrade (robot needs less charging)

This program will build the interior of the 
reactor following the below pattern, alternating
the layer types, starting and ending with type 1,
with type 2 sandwiched in the middle:

Type 1:
WAWAW
AMAMA
WAWAW
AMAMA
WAWAW

Type 2:
AMAMA
MCMCM
AMAMA
MCMCM
AMAMA

Key:
W - Infinte Water Source
A - Active Fluid Cooler
M - Active Moderator
C - Reactor Cell

This design is meant to increase efficiency
and power, but it also produces a lot of 
heat.  As such, it is not reccomended to use any
fuel other than TBU in larger reactors without 
additional cooling (ex: active fluid cooler with 
molten diamond)

After running "calc.lua" and collecting all 
necessary items, you can fill the robot's 
inventory with these items and type 
"Fission_Builder" into the command line. It will
begin constructing the reactor 2 blocks behind 
where you place it, with the length in that 
direction, and with width to the left.