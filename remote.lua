local dev = require("device");
local server = require("server");
local player = true;
local marker = "";
local transparent = "normal:transparent;focus:transparent;active:transparent;color:transparent";
local opaque = "normal:transparent;focus:transparent;active:transparent;color:black";
local rows = {"a", "b", "c"};

events.focus = function()
	dev.toast("Press the launch button (triangle in square) to reset!");
end

actions.launch_message = function()
	for i = 1, 3 do
		for k,v in pairs(rows) do
			server.update({ id = v .. i, light = transparent });
			server.update({ id = v .. i, dark = transparent });
			server.update({ id = v .. i, icon = "" });
		end
	end
	dev.toast("Press the launch button below (triangle in a square) to reset!");
end

actions.new_turn = function()
	NewTurn();
end

function NewTurn()
	if (player == false) then
		marker = "docclose"
		player = true;
	else
		marker = "off";
		player = false;
	end
end

actions.a1_tap = function()
	NewTurn();
	server.update({ id = "a1", icon = marker });
	server.update({ id = "a1", light = opaque });
	server.update({ id = "a1", dark = opaque });
end

actions.a2_tap = function()
	NewTurn();
	server.update({ id = "a2", icon = marker });
	server.update({ id = "a2", light = opaque });
	server.update({ id = "a2", dark = opaque });
end

actions.a3_tap = function()
	NewTurn();
	server.update({ id = "a3", icon = marker });
	server.update({ id = "a3", light = opaque });
	server.update({ id = "a3", dark = opaque });
end

actions.b1_tap = function()
	NewTurn();
	server.update({ id = "b1", icon = marker });
	server.update({ id = "b1", light = opaque });
	server.update({ id = "b1", dark = opaque });
end

actions.b2_tap = function()
	NewTurn();
	server.update({ id = "b2", icon = marker });
	server.update({ id = "b2", light = opaque });
	server.update({ id = "b2", dark = opaque });
end

actions.b3_tap = function()
	NewTurn();
	server.update({ id = "b3", icon = marker });
	server.update({ id = "b3", light = opaque });
	server.update({ id = "b3", dark = opaque });
end

actions.c1_tap = function()
	NewTurn();
	server.update({ id = "c1", icon = marker });
	server.update({ id = "c1", light = opaque });
	server.update({ id = "c1", dark = opaque });
end

actions.c2_tap = function()
	NewTurn();
	server.update({ id = "c2", icon = marker });
	server.update({ id = "c2", light = opaque });
	server.update({ id = "c2", dark = opaque });
end

actions.c3_tap = function()
	NewTurn();
	server.update({ id = "c3", icon = marker });
	server.update({ id = "c3", light = opaque });
	server.update({ id = "c3", dark = opaque });
end