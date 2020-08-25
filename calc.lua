--Author: James G / MinimalSix
--Date: 8/23/2020
--File: calc.lua
--Description: this simple program tells you the
--Cont: number of each item required to build
--Cont: the simple nuclear reactor.

--Enter Sizes (counted internal to the reactor)
  --Height
  local h = 9
  
  --Width
  local w = 9
  
  --Length
  local l = 9
  
--Require functions
local fn = require "functions"

--Casings
local casings = 0
casings = fn.n_casings(h,w,l)

--Reactor Cells
local cells = 0
cells = fn.n_cells(h,w,l)

--Water Sources
local water = 0
water = fn.n_water(h,w,l)

--Active Coolers
local coolers = 0
coolers = fn.n_coolers(h,w,l)

--Graphite Blocks
local graphite = 0
graphite = fn.n_graphite(h,w,l)


--Print results
print("You will need:")
print(casings,"Fission Reactor Casings")
print(cells,"Reactor Cells")
print(water,"Infinite Water Sources")
print(coolers,"Active Fluid Coolers")
print(graphite,"Moderators (Graphite/Beryllium")
print("1 Fission Controller")