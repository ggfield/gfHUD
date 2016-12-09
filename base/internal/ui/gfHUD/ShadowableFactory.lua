require "base/internal/ui/gfHUD/Drawable";


function ShadowableFactory(shadows)
	local Shadowable = Drawable:extend({
		shadowed = true
	});


	function Shadowable:drawShadow()
		if not self.shadowed then return end;

		for i, v in ipairs(shadows) do
			self:shadowFunction(v);
		end
	end


	function Shadowable:_draw()
		self:drawShadow();
	end

	return Shadowable;
end
