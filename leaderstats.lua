--adafa ralph 14/2/23

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder",player)
	leaderstats.Name = "leaderstats"
	
	local Coins = Instance.new("IntValue",leaderstats)
	Coins.Name = "Coins"
	Coins.Value = 0
	
	local DataStoreService = game:GetService("DataStoreService")
	local CoinsDataStore = DataStoreService:GetDataStore("Coins")
	
	Coins.Value = CoinsDataStore:GetAsync(player.UserId,Coins.Value)
	print("loaded coin data for "..player.Name)
end)


game.Players.PlayerRemoving:Connect(function(player)
	local leaderstats = player.leaderstats
	local Coins = leaderstats.Coins
	local DataStoreService = game:GetService("DataStoreService")
	local CoinsDataStore = DataStoreService:GetDataStore("Coins")
	local sucess , errormessage = pcall(function()
		CoinsDataStore:SetAsync(player.UserId,Coins.Value)
		print("saved coin data for "..player.Name)
		print(Coins.Value)
	end)
end)
