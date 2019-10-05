local SKIN = {}

-- These are used in the settings panel

SKIN.PrintName = "PureSkin"
SKIN.Author = "Alf21"
SKIN.DermaVersion = 1

function SKIN:UpdateColor(col)
	self.colOutline = col

	self.colPropertySheet = col
	self.colTab = self.colPropertySheet
	self.colTabText = col
	self.colTabInactive = col
	self.colTabShadow = col
	self.fontButton = "Default"
	self.fontTab = "Default"
	self.bg_color = col
	self.bg_color_sleep = col
	self.bg_color_dark = col
	self.bg_color_bright = col
	self.listview_hover = col
	self.listview_selected = col
	self.control_color = col
	self.control_color_highlight = col
	self.control_color_active = col
	self.control_color_bright = col
	self.control_color_dark = col
	self.text_bright = col
	self.text_normal = col
	self.text_dark = col
	self.text_highlight = col
	self.colCategoryText = col
	self.colCategoryTextInactive = col
	self.fontCategoryHeader = "TabLarge"
	self.colTextEntryTextHighlight = col
	self.colTextEntryTextHighlight = col
	self.colCategoryText = Color(255, 255, 255, 255)
	self.colCategoryTextInactive = Color(200, 200, 200, 255)
	self.fontCategoryHeader = "TabLarge"
	self.tooltip = Color(255, 127, 0, 255)
end

SKIN:UpdateColor(Color(49, 71, 94, 255))

-- Or any of the functions

local shadow_border = surface.GetTextureID("vgui/ttt/dynamic/hud_components/shadow_border")

function SKIN:DrawSquaredBox(x, y, w, h, color)
	surface.SetDrawColor(color)
	surface.DrawRect(x, y, w, h)

	local corner_size = 7
	local shadow_size = 4
	local edge_size = 3

	surface.SetDrawColor(255, 255, 255, a)
	surface.SetTexture(shadow_border)

	surface.DrawTexturedRectUV(x - shadow_size, y + h - edge_size, corner_size, corner_size, 3.5/63, 52.5/63,  10.5/63, 59.5/63)

	surface.DrawTexturedRectUV(x + w - edge_size, y + h - edge_size, corner_size, corner_size, 52.5/63, 52.5/63,  59.5/63, 59.5/63)

	surface.DrawTexturedRectUV(x - shadow_size, y - shadow_size, corner_size, corner_size, 3.5/63, 3.5/63,  10.5/63, 10.5/63)

	surface.DrawTexturedRectUV(x  + w - edge_size, y - shadow_size, corner_size, corner_size, 52.5/63, 3.5/63,  59.5/63, 10.4/63)

	surface.DrawTexturedRectUV(x + edge_size, y + h - edge_size, w - 2 * edge_size, corner_size, 31.5/63, 52.5/63,  32.5/63, 59.5/63)

	surface.DrawTexturedRectUV(x - shadow_size, y + edge_size, corner_size, h - 2 * edge_size, 3.5/63, 31.5/63,  10.5/63, 32.5/63)

	surface.DrawTexturedRectUV(x + w - edge_size, y + edge_size, corner_size, h - 2 * edge_size, 52.5/63, 31.5/63,  59.5/63, 32.5/63)

	surface.DrawTexturedRectUV(x + edge_size, y - shadow_size, w - 2 * edge_size, corner_size, 31.5/63, 3.5/63,  32.5/63, 10.5/63)
end

function SKIN:PaintFrame(panel)
	self:DrawSquaredBox(0, 0, panel:GetWide(), panel:GetTall(), self.bg_color)

	surface.SetDrawColor(0, 0, 0, 75)
	surface.DrawRect(0, 0, panel:GetWide(), 21)

	surface.SetDrawColor(self.colOutline)
	surface.DrawRect(0, 21, panel:GetWide(), 1)
end

-- Or just start a new skin from scratch by overriding the whole thing

--[[
 You need to add this to the bottom of your skin to register it in Derma.
 Parameters are name (which should have no spaces or special chacters), description, then the SKIN table
]]--

derma.DefineSkin("pureskin", "A completely new skin", SKIN)
