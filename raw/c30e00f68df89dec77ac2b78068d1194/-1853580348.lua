local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarMainPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoTeamPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousPathEchoTeamPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._panel_avatar_icon_list = L3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_icon_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueAvatarIconPanel
    L8_2 = G
    L8_2 = L8_2.RogueAvatarIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_avatar_icon_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._panel_avatar_icon_list
    L6_2[L4_2] = L5_2
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_icon_click = A1_2
  A0_2._on_icon_click_owner = A2_2
end
L0_1.register_on_avatar_icon_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._selected_avatars = A1_2
  L2_2 = 1
  L3_2 = A0_2._panel_avatar_icon_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._panel_avatar_icon_list
    L6_2 = L6_2[L5_2]
    L8_2 = L6_2
    L7_2 = L6_2.set_empty_interactable
    L9_2 = true
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_view_avatar_data
    L9_2 = A0_2._selected_avatars
    L9_2 = L9_2[L5_2]
    L10_2 = A0_2._on_avatar_icon_click
    L11_2 = A0_2
    L12_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Heliobus.Challenge.HeliobusChallengeTeamInfoProvider"
  L3_2 = A0_2._selected_avatars
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.get_avatars_in_team
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  if L2_2 ~= nil then
    L4_2 = pairs
    L5_2 = L2_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L3_2 = L8_2
      break
    end
  end
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = G
  L5_2 = L5_2.AvatarMainPage
  L6_2 = nil
  L7_2 = nil
  L8_2 = L1_2
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_btn_detail = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._on_icon_click
  if L2_2 then
    L2_2 = A0_2._on_icon_click_owner
    if L2_2 then
      L2_2 = A0_2._on_icon_click
      L3_2 = A0_2._on_icon_click_owner
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_avatar_icon_click = L1_1
return L0_1
