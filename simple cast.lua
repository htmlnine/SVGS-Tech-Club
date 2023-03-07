script.Parent.Parent.StartEvent.Event:Connect(function()
	while task.wait(.5) do
		local runtime = 0
		local part = script.Parent
		local origin = part.Position
		local direction = part.CFrame.LookVector * 50

		local rayResult = workspace:Raycast(origin,direction)
		if rayResult and rayResult.Instance then
			print(rayResult.Instance)
			runtime = runtime + 1
		else
			
			print("No instance found!")
		end
		if runtime >= 30 then
			break
		end
	end
end)
	
