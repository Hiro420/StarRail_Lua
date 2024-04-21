local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoBanItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoBanPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousPathEchoBanPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 2
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._panel_ban_aeon_list = L3_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_ban_panel_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueNousPathEchoBanItemPanel
    L8_2 = G
    L8_2 = L8_2.RogueNousPathEchoBanItemPanelBinder
    L9_2 = "SmallItem"
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_ban_panel_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_on_click_callback
    L8_2 = A0_2._on_item_click
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._panel_ban_aeon_list
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._on_item_click_callback = A1_2
  A0_2._on_item_click_callback_owner = A2_2
end
L0_1.register_on_item_click_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._banned_aeon_data_list = A1_2
  L2_2 = 1
  L3_2 = L1_1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._panel_ban_aeon_list
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = A0_2._banned_aeon_data_list
    L9_2 = L9_2[L5_2]
    L7_2(L8_2, L9_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._on_item_click_callback
  if L2_2 then
    L2_2 = A0_2._on_item_click_callback_owner
    if L2_2 then
      L2_2 = A0_2._on_item_click_callback
      L3_2 = A0_2._on_item_click_callback_owner
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_item_click = L2_1
return L0_1
