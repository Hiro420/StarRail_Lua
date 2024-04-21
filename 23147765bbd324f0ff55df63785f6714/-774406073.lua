local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.RogueAvatarSelectPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.RogueJoinAvatarSelectPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.RogueAvatarSelectPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.RogueTeamInfoProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.AvatarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueJoinAvatarSelectPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.TeamModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.AvatarModule
L4_1 = "UIText_Rogue_Join_Avatar_Title"
L5_1 = "UIText_Rogue_Join_Avatar_Btn_Confirm"
L6_1 = "UIText_Rogue_Join_Avatar_Second_Confirm_No_AvatarHint"
L7_1 = "UIText_Rogue_Start_Tip3"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueAvatarSelectPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._selected_avatars = L1_2
  A0_2._prop_entity_server_id = nil
  A0_2._prop_entity_runtime_id = nil
  A0_2._is_to_next_zoom_by_confirm = false
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  A0_2._prop_entity_server_id = A1_2
  A0_2._prop_entity_runtime_id = A2_2
  A0_2._avatar_ids = A3_2
  A0_2._special_avatar_ids = A4_2
  A0_2._is_limited_mode = false
  L5_2 = A0_2._avatar_ids
  if L5_2 ~= nil then
    L5_2 = A0_2._avatar_ids
    L5_2 = L5_2.Length
    if L5_2 ~= 0 then
      goto lbl_20
    end
  end
  L5_2 = A0_2._special_avatar_ids
  if L5_2 ~= nil then
    L5_2 = A0_2._special_avatar_ids
    L5_2 = L5_2.Length
    ::lbl_20::
    if L5_2 ~= 0 then
      A0_2._is_limited_mode = true
    end
  end
end
L0_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_detail
  L4_2 = A0_2._on_btn_avatar_detail
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.HFBMFICCMJL
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_join_select_avatar_panel
  L1_2 = L1_2(L2_2)
  A0_2._panel_select_avatar = L1_2
  L1_2 = A0_2._panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.init
  L4_2 = A0_2
  L3_2 = A0_2._get_picked_avatars
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_get_limited_avatars
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._prop_entity_runtime_id
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.register_selection_callback
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_select_avatar
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentGameModeType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameModeType
  L2_2 = L2_2.RogueExplore
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.create_rogue_detail_panel
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GameModeType
    L2_2 = L2_2.ChessRogue
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L3_2 = L2_2
      L2_2 = L2_2.create_chess_rogue_detail_panel
      L2_2(L3_2)
    end
  end
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.GKCCMJHHFJM
  L4_2 = L0_1._on_pick_rogue_avatar_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.CHMFNFKNIOP
  L4_2 = L0_1._on_pick_rogue_avatar_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.CDILNDGFPDB
  L4_2 = L0_1._on_cmd_get_rogue_info_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_select_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatars_display
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_details_display
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_confirm_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_and_avatar_navi
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 169
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect_team_avatar
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_select_avatar
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_select_avatar
    L2_2 = L1_2
    L1_2 = L1_2.refresh_view
    L1_2(L2_2)
  end
end
L0_1._on_return_to_top = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._selected_avatars
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_confirm_btn = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = 1
  L2_2 = A0_2._prop_entity_runtime_id
  if L2_2 ~= nil then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetRoguePickAvatarMaxCount
    L4_2 = A0_2._prop_entity_runtime_id
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  return L1_2
end
L0_1._get_pick_max_count = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_detail
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_detail
    L3_2 = L2_2
    L2_2 = L2_2.get_recommend_level
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_chess_detail
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_chess_detail
      L3_2 = L2_2
      L2_2 = L2_2.get_recommend_level
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    end
  end
  if L1_2 ~= nil then
    return L1_2
  else
    L2_2 = 0
    return L2_2
  end
end
L0_1._get_recommend_level = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_select_panel = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._selected_avatars = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_selected_avatar_display
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_confirm_btn
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_monster_and_avatar_navi
  L2_2(L3_2)
end
L0_1._on_select_avatar = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.AvatarUtils
  L1_2 = L1_2.get_rogue_all_picked_avatars
  return L1_2()
end
L0_1._get_picked_avatars = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._is_limited_mode
  if L1_2 == false then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = A0_2._avatar_ids
  if L2_2 ~= nil then
    L2_2 = A0_2._avatar_ids
    L2_2 = L2_2.Length
    if L2_2 ~= 0 then
      L2_2 = 0
      L3_2 = A0_2._avatar_ids
      L3_2 = L3_2.Length
      L3_2 = L3_2 - 1
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2._avatar_ids
        L6_2 = L6_2[L5_2]
        L7_2 = L3_1
        L8_2 = L7_2
        L7_2 = L7_2.GetAvatar
        L9_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 ~= nil then
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L1_2
          L10_2 = #L1_2
          L10_2 = L10_2 + 1
          L11_2 = L7_2
          L8_2(L9_2, L10_2, L11_2)
        else
          L8_2 = G
          L8_2 = L8_2.SuperDebug
          L8_2 = L8_2.LogErrorFormatWithTag
          L9_2 = G
          L9_2 = L9_2.LogTag
          L9_2 = L9_2.UI
          L10_2 = "Cannot get avatar data of avatarid %s"
          L11_2 = L6_2
          L8_2(L9_2, L10_2, L11_2)
        end
      end
    end
  end
  L2_2 = A0_2._special_avatar_ids
  if L2_2 ~= nil then
    L2_2 = A0_2._special_avatar_ids
    L2_2 = L2_2.Length
    if L2_2 ~= 0 then
      L2_2 = 0
      L3_2 = A0_2._special_avatar_ids
      L3_2 = L3_2.Length
      L3_2 = L3_2 - 1
      L4_2 = 1
      for L5_2 = L2_2, L3_2, L4_2 do
        L6_2 = A0_2._special_avatar_ids
        L6_2 = L6_2[L5_2]
        L7_2 = L3_1
        L8_2 = L7_2
        L7_2 = L7_2.AddTrialPlayer
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
        L7_2 = L3_1
        L8_2 = L7_2
        L7_2 = L7_2.GetTrialAvatar
        L9_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 ~= nil then
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L1_2
          L10_2 = #L1_2
          L10_2 = L10_2 + 1
          L11_2 = L7_2
          L8_2(L9_2, L10_2, L11_2)
        else
          L8_2 = G
          L8_2 = L8_2.SuperDebug
          L8_2 = L8_2.LogErrorFormatWithTag
          L9_2 = G
          L9_2 = L9_2.LogTag
          L9_2 = L9_2.UI
          L10_2 = "Cannot get avatar data of special avatarid %s"
          L11_2 = L6_2
          L8_2(L9_2, L10_2, L11_2)
        end
      end
    end
  end
  return L1_2
end
L0_1._try_get_limited_avatars = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_selected_avatar_display
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_avatar_display
  L1_2(L2_2)
end
L0_1._setup_avatars_display = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._get_pick_max_count
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_team_avatar_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_select_view
  L4_2 = L1_2
  L5_2 = A0_2._selected_avatars
  L6_2 = A0_2._click_selected_avatar
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_selected_avatar_display = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A0_2._panel_select_avatar
    if L2_2 ~= nil then
      L2_2 = A0_2._panel_select_avatar
      L3_2 = L2_2
      L2_2 = L2_2.try_click_avatar
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_selected_avatar_display
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_confirm_btn
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_monster_and_avatar_navi
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._change_avatar_navigation_target
      L2_2(L3_2)
    end
  end
end
L0_1._click_selected_avatar = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
    L4_2 = L4_2.GKOANCEHMJE
    L2_2 = L4_2.PJCHJJNPGCK
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
      L4_2 = L4_2.GKOANCEHMJE
      L2_2 = L4_2.GIJCGONBLNM
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_team_avatar_list
  L5_2 = L4_2
  L4_2 = L4_2.setup_team_view
  L6_2 = L1_2
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_team_avatar_display = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_setup_rogue_details_display
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_setup_chess_rogue_details_display
  L1_2(L2_2)
end
L0_1._setup_details_display = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_detail
  if L1_2 == nil then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.ProgressInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetCurAreaData
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_detail
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._try_setup_rogue_details_display = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_chess_detail
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueData
  L2_2 = L1_2.AreaInfo
  L2_2 = L2_2.CurAreaDataItem
  L3_2 = null
  if L2_2 ~= L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_chess_detail
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._try_setup_chess_rogue_details_display = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_details_display
  L1_2(L2_2)
end
L0_1._on_cmd_get_rogue_info_sc_rsp = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_pick_rogue_avatar_sc_rsp = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._prop_entity_server_id
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TeamModule
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentTeam
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = A0_2._is_limited_mode
  if L3_2 == true then
    L3_2 = G
    L3_2 = L3_2.new
    L4_2 = G
    L4_2 = L4_2.RogueTeamInfoProvider
    L5_2 = L1_2
    L7_2 = A0_2
    L6_2 = A0_2._try_get_limited_avatars
    L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L2_2 = L3_2
  else
    L3_2 = G
    L3_2 = L3_2.new
    L4_2 = G
    L4_2 = L4_2.RogueTeamInfoProvider
    L5_2 = L1_2
    L6_2 = A0_2._selected_avatars
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L2_2 = L3_2
  end
  L3_2 = A0_2._panel_select_avatar
  L4_2 = L3_2
  L3_2 = L3_2.get_show_first_avatar
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.Avatar.AvatarMainPage"
  L6_2 = nil
  L7_2 = nil
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_btn_avatar_detail = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._selected_avatars
  if L1_2 ~= nil then
    L1_2 = A0_2._selected_avatars
    L1_2 = #L1_2
    if not (L1_2 <= 0) then
      goto lbl_11
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_tip_no_select_avatar
  L1_2(L2_2)
  do return end
  ::lbl_11::
  L1_2 = nil
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Collections
  L3_2 = L3_2.Generic
  L3_2 = L3_2.List
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.UInt32
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2()
  L4_2 = pairs
  L5_2 = A0_2._selected_avatars
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 ~= nil then
      L9_2 = L8_2.IsTrialPlayer
      if L9_2 == false then
        L10_2 = L2_2
        L9_2 = L2_2.Add
        L11_2 = L8_2.ID
        L9_2(L10_2, L11_2)
        L1_2 = L8_2
    end
    elseif L8_2 ~= nil then
      L9_2 = L8_2.IsTrialPlayer
      if L9_2 == true then
        L10_2 = L3_2
        L9_2 = L3_2.Add
        L11_2 = L8_2.SpecialAvatarID
        L9_2(L10_2, L11_2)
        L1_2 = L8_2
      end
    end
  end
  L4_2 = L2_2.Count
  if L4_2 == 0 then
    L4_2 = L3_2.Count
  end
  if L4_2 == 0 or L1_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2._on_tip_no_select_avatar
    L4_2(L5_2)
    return
  end
  L5_2 = A0_2
  L4_2 = A0_2._get_pick_max_count
  L4_2 = L4_2(L5_2)
  if L4_2 == 1 then
    L5_2 = L1_2.Level
    L7_2 = A0_2
    L6_2 = A0_2._get_recommend_level
    L6_2 = L6_2(L7_2)
    if L5_2 < L6_2 then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.ConfirmDialogUtil
      L5_2 = L5_2.ShowOkCancelHint
      L6_2 = L7_1
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.TextID
      L7_2 = L7_2.empty
      function L8_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        if A0_3 then
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3._send_pick_avatar_req
          L3_3 = L2_2
          L4_3 = L3_2
          L1_3(L2_3, L3_3, L4_3)
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3._try_join_avatar_to_team
          L3_3 = L1_2
          L1_3(L2_3, L3_3)
        end
      end
      L5_2(L6_2, L7_2, L8_2)
      return
    end
    L6_2 = A0_2
    L5_2 = A0_2._send_pick_avatar_req
    L7_2 = L2_2
    L8_2 = L3_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = A0_2
    L5_2 = A0_2._try_join_avatar_to_team
    L7_2 = L1_2
    L5_2(L6_2, L7_2)
  else
    L6_2 = A0_2
    L5_2 = A0_2._send_pick_avatar_req
    L7_2 = L2_2
    L8_2 = L3_2
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = A0_2
    L5_2 = A0_2._try_join_avatar_list_to_team
    L7_2 = L2_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._on_btn_confirm = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowConfirmDialog
  L1_2 = L1_2()
  L2_2 = DialogBtnMode
  L2_2 = L2_2.eOkCancel
  L1_2.Mode = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.GetComponentContent
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L6_1
  L2_2(L3_2, L4_2)
end
L0_1._on_tip_no_select_avatar = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = L2_2.MemberDatas
  L4_2 = L4_2.Length
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = L2_2
    L7_2 = L2_2.GetMemberData
    L9_2 = L6_2 - 1
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 == nil then
      L8_2 = A1_2.IsTrialPlayer
      if L8_2 == false then
        L8_2 = L2_1
        L9_2 = L8_2
        L8_2 = L8_2.JoinMemberToTeam
        L10_2 = L2_2
        L11_2 = A1_2.ID
        L12_2 = L6_2 - 1
        L8_2(L9_2, L10_2, L11_2, L12_2)
        break
      else
        L8_2 = L2_1
        L9_2 = L8_2
        L8_2 = L8_2.JoinMemberToTeam
        L10_2 = L2_2
        L11_2 = A1_2.SpecialAvatarID
        L12_2 = L6_2 - 1
        L13_2 = CS
        L13_2 = L13_2.FKFMOOPNDPC
        L13_2 = L13_2.CLLJCANHNGL
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
        break
      end
    end
  end
end
L0_1._try_join_avatar_to_team = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = 1
  L5_2 = L2_2.MemberDatas
  L5_2 = L5_2.Length
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L9_2 = L2_2
    L8_2 = L2_2.GetMemberData
    L10_2 = L7_2 - 1
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 == nil then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L3_2
      L11_2 = #L3_2
      L11_2 = L11_2 + 1
      L12_2 = L7_2 - 1
      L9_2(L10_2, L11_2, L12_2)
    end
  end
  L4_2 = A1_2.Count
  L5_2 = 0
  L6_2 = L4_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A1_2[L8_2]
    L10_2 = L8_2 + 1
    L10_2 = L3_2[L10_2]
    if L10_2 ~= nil then
      L10_2 = L2_1
      L11_2 = L10_2
      L10_2 = L10_2.JoinMemberToTeam
      L12_2 = L2_2
      L13_2 = L9_2
      L14_2 = L8_2 + 1
      L14_2 = L3_2[L14_2]
      L10_2(L11_2, L12_2, L13_2, L14_2)
    end
  end
end
L0_1._try_join_avatar_list_to_team = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueStatic
  L3_2 = L3_2.GetCurModeRogueAvatarInfo
  L3_2 = L3_2()
  if L3_2 ~= nil then
    L4_2 = L3_2.SendPacketCmd
    L5_2 = L4_2
    L4_2 = L4_2.SendPickRogueAvatarCsReq
    L6_2 = A0_2._prop_entity_server_id
    L7_2 = A1_2
    L8_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._send_pick_avatar_req = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_detail
      if L2_2 ~= nil then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = A0_2._binder
        L4_2 = L4_2.panel_detail
        L5_2 = L4_2
        L4_2 = L4_2.get_first_selected_object
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      else
        L2_2 = A0_2._binder
        L2_2 = L2_2.panel_chess_detail
        if L2_2 ~= nil then
          L3_2 = A0_2
          L2_2 = A0_2.set_navigation_target
          L4_2 = A0_2._binder
          L4_2 = L4_2.panel_chess_detail
          L5_2 = L4_2
          L4_2 = L4_2.get_first_selected_object
          L4_2, L5_2 = L4_2(L5_2)
          L2_2(L3_2, L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_navigation_target
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_leave_special_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_detail
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_detail
    L3_2 = L2_2
    L2_2 = L2_2.get_navigation_up_monster_btns
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_chess_detail
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_chess_detail
      L3_2 = L2_2
      L2_2 = L2_2.get_navigation_up_monster_btns
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
    end
  end
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if L2_2 ~= 0 then
      goto lbl_27
    end
  end
  do return end
  ::lbl_27::
  L2_2 = ipairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.navigation
    L7_2.selectOnDown = nil
    L6_2.navigation = L7_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_team_avatar_list
  L3_2 = L2_2
  L2_2 = L2_2.get_selected_avatar_navi_btns
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = #L2_2
    if L3_2 ~= 0 then
      goto lbl_46
    end
  end
  do return end
  ::lbl_46::
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.navigation
    L8_2.selectOnUp = nil
    L7_2.navigation = L8_2
  end
  L3_2 = G
  L3_2 = L3_2.UIUtils
  L3_2 = L3_2.setup_navigation_between_two_line
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_monster_and_avatar_navi = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if L1_2 == L2_2 then
    L2_2 = A0_2._selected_avatars
    if L2_2 ~= nil then
      L2_2 = A0_2._selected_avatars
      L2_2 = #L2_2
      if not (L2_2 <= 0) then
        goto lbl_18
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2.to_first_zoom
    L4_2 = true
    L2_2(L3_2, L4_2)
    return
  end
  ::lbl_18::
end
L0_1._change_avatar_navigation_target = L8_1
return L0_1
