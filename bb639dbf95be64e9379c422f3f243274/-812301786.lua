local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.RogueTeamInfoProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RoguePickedAvatarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = nil
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AdventureStatic
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentGameModeType
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GameModeType
  L4_2 = L4_2.RogueExplore
  if L3_2 == L4_2 then
    L4_2 = G
    L4_2 = L4_2.AvatarUtils
    L4_2 = L4_2.get_rogue_all_picked_avatars
    L4_2 = L4_2()
    L1_2 = L4_2
    L4_2 = CS
    L4_2 = L4_2.DEAEDMGDDHH
    L2_2 = L4_2.INKHBENBOHE
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.GameModeType
    L4_2 = L4_2.ChessRogue
    if L3_2 == L4_2 then
      L4_2 = G
      L4_2 = L4_2.AvatarUtils
      L4_2 = L4_2.get_chess_rogue_all_picked_avatars
      L4_2 = L4_2()
      L1_2 = L4_2
      L4_2 = CS
      L4_2 = L4_2.DEAEDMGDDHH
      L2_2 = L4_2.BJPEFPLKPMD
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_avatar_list
  L5_2 = L4_2
  L4_2 = L4_2.setup_team_view
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = A0_2._on_click_avatar
  L9_2 = A0_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.setup_avatars = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TeamModule
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = G
  L4_2 = L4_2.RogueTeamInfoProvider
  L5_2 = L2_2
  L6_2 = nil
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.Avatar.AvatarMainPage"
  L6_2 = nil
  L7_2 = nil
  L8_2 = L3_2
  L9_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_click_avatar = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftStickButton
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_can_to_special_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.is_active
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.is_in_special_zoom
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.panel_avatar_list
          L3_2 = L2_2
          L2_2 = L2_2.get_first_selected_object
          L2_2 = L2_2(L3_2)
          if L2_2 ~= nil then
            L4_2 = A0_2
            L3_2 = A0_2.set_special_zoom_navigation_target
            L5_2 = L2_2
            L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
end
L0_1._on_in_control_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._on_got_focus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L1_1
return L0_1
