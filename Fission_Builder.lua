--Author: James G / MinimalSix
--Date: 8/22/2020
--File: Fission_Builder.lua
--Description: This builds a simple fission
--Cont: reactor. For practical reasons, it isn't
--Cont: reccomended to exceed a size of 11x11x11,
--Cont: but a minimum size of 3x3x3 is needed
--Acknowledgements: Thanks to FidgetySo for 
--Cont: contributions, especially on the 
--Cont: item_check() function

local fn = require "functions"

--Enter Size (as internal to the reactor)
  --Height
  local h = 9
	
  --Width
  local w = 9
	
  --Length
  local l = 9
	
--Draw items from chest (true) or Manually 
--fill (false)
  local item = true
  --if true the robot must be placed facing the
  --chest
	
--RUN BUILDER
fn.build(h,w,l,item)