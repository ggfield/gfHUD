require "base/internal/ui/reflexcore"
require "base/internal/ui/gfhud"

--

gfArmor =
{
};
registerWidget("gfArmor");

--

function gfArmor:initialize()

end

--

function gfArmor:draw()
	if not shouldShowHUD() then return end;
	if isRaceMode() then return end;

	local player = getPlayer();

	drawShadowText(144, -253, GF_FONT_SIZE_BIG, GF_ARMOR_COLORS[player.armorProtection+1], player.armor);
end
