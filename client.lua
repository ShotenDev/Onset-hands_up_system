local AnimationUi = nil

function OnPackageStart()
	AnimationUi = CreateWebUI(750.0, 30.0, 700.0, 450.0)
	LoadWebFile(AnimationUi, "http://asset/hands_up_system/index.html")
	SetWebAlignment(AnimationUi, 0.0, 0.0)
	SetWebAnchors(AnimationUi, 0.0, 0.0, 1.0, 1.0)
	SetWebVisibility(AnimationUi, WEB_HIDDEN)
end
AddEvent("OnPackageStart", OnPackageStart)

-- Bind --

AddEvent("OnKeyPress", function(key)
	if key == "F2" then
		if(GetWebVisibility(AnimationUi) == 0) then
			SetWebVisibility(AnimationUi, WEB_VISIBLE)
			CallRemoteEvent("HandsUp")
		else
			SetWebVisibility(AnimationUi, WEB_HIDDEN)
			CallRemoteEvent("StopAnimation")
		end
	end
end)
AddEvent("OnKeyPress", OnKeyPress)
