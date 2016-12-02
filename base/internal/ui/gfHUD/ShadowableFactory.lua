local Drawable = require "base/internal/ui/gfHUD/Drawable";


local function ShadowableFactory(shadows)
	local Shadowable = Drawable:new({
		shadowed = false
	});
	Shadowable.__index = Shadowable;


	function Shadowable:drawShadow()
		if not self.shadowed then return end;

		for i, v in ipairs(shadows) do
			self:shadowFunction(v);
		end
	end


	function Shadowable:draw()
		self:drawShadow();
	end

	return Shadowable;
end


return ShadowableFactory;
