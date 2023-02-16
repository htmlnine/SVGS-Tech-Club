while true do 
	task.wait(.1)
	if script.Parent.Orientation.X < 90 then
		script.Parent.Orientation = script.Parent.Orientation + Vector3.new(math.rad(30,100),0,0)
	elseif script.Parent.Orientation.X >= 90 then
		script.Parent.Orientation = Vector3.new(-30,0,0)
	end
end
