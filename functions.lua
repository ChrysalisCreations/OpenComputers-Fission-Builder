--Author: James G / MinimalSix
--Date: 8/23/2020
--File: functions.lua
--Description: this file contains all the
--Cont: functions to be used in the program
--Cont: "Fission_Builder.lua", editing this file
--Cont: should not be neccessary

--Name: n_casings
--Purpose: determines the number of casings to
--Cont: build the shell of the reactor
--Returns: Int for the number of casings
function n_casings(height,width,length)
  local side_1 = height * width * 2
  local side_2 = height * length * 2
  local caps = width * length * 2
  return (side_1 + side_2 + caps - 1)
end

--Name: n_cells
--Purpose: determines the number of cells that
--Cont: will be in the finished reactor
--Returns: Int for the number of cells
function n_cells(height,width,length)
  local vert = math.floor((height-1)/2)
  local horiz_x = math.floor((width-1)/2)
  local horiz_z = math.floor((length-1)/2)
  return vert*horiz_x*horiz_z
end

--Name: n_water
--Purpose: determines the number of infinite
--Cont: water sources needed to build the reactor
--Returns: Int fot the number of sources
function n_water(height,width,length)
  local vert = math.floor((height + 1)/2)
  local horiz_x = math.floor((width + 1)/2)
  local horiz_z = math.floor((length+1)/2)
  return vert*horiz_x*horiz_z
end

--Name: n_coolers
--Purpose: determines the number of active fluid
--Cont: coolers needed to build the reactor
--Returns: Int for the number of active coolers
function n_coolers(height,width,length)
  local tot = math.floor((height*width*length)/2)
  local cells = n_cells(height,width,length)
  return (tot - cells)
end

--Name: n_graphite
--Purpose: determines the number of active
--Cont: moderators needed to build the reactor
--Returns: Int for the number of active moderator
function n_graphite(h,w,l)
local tot = 6
local edge1 = 0
local edge2 = 0
local edge1_2 = 0
local edge2_2 = 0
local pl1 = 0
local pl1_2 = 0
local panel2 = 5
--first vertical line
edge1 = (5 * math.floor((h-3)/2))
tot = tot + edge1
--first horizontal line (along the length)
edge2 = (5 * math.floor((w-3)/2))
tot = tot + edge2
--first plane (along the length X height)
pl1 = math.floor((h-3)/2) * math.floor((w-3)/2)
tot = tot + (4 * pl1)
--second vertical line
edge1_2 = 4 * math.floor((h-3)/2)
--second horizontal line (along the length)
edge2_2 = 4 * math.floor((w-3)/2)
--second plane (along the length X height)
pl1_2 = math.floor((h-3)/2) * math.floor((w-3)/2)
--totaling second pieces into full panel2
panel2 = panel2 + edge1_2 + edge2_2 + pl1_2
--adding everything together
tot = tot + (math.floor((l-3)/2) * panel2)
return (tot)
end

--Name: build
--Purpose: calls all other functions to build
--Cont: a completed fission reactor
--Returns: nil
function build(h,w,l,item)
  --Determine number of cells
  local cells = fn.n_cells(h,w,l)

  --checking if minimum size
  local large_enough = fn.min_size(h,w,l)


  --Only continue if minimum size is met
  if(large_enough==true)
  then
	if(item == true)
	then
	  --Call build w/ external inventory
	  fn.build_ext(h,w,l,n_cells)
	else
	  --Call build w/o external inventory
	  fn.build_int(h,w,l,n_cells)
	end
  else
	print("Minimum size 3x3x3")
	print(h,"x",w,"x",l)
	print("is too small")
  end
end

--Name: min_size
--Purpose: determines if the reactor is large
--Cont: enough for at least 1 unit
--Returns: Bool for decision
function min_size(height,width,length)
  if(height>2)
  then
    if(width>2)
	then
      if(length>2)
	  then
	    return true
	  else
	    return false
      end
	  else
	    return false
    end
	else
	  return false
  end
end

--Name: build_ext
--Purpose: builds with the use of an external
--Cont: inventory
--Returns: nil
function build_ext(height,width,length,tot_cells)

end

--Name: build_int
--Purpose: builds without the use of an external
--Cont: inventory
--Returns: nil
function build_int(height,width,length,tot_cells)

end

--Name:
--Purpose:
--Returns:

return {build = build, n_casings = n_casings, 
n_cells = n_cells, n_water = n_water,
n_coolers = n_coolers, n_graphite = n_graphite}