local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.RogueAvatarSelectPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.RogueTeamInfoProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueScheduleCheckPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueInitAvatarSelectPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = "UIText_Rogue_Init_Avatar_Title"
L3_1 = "UIText_Rogue_Init_Avatar_Btn_Confirm"
L4_1 = "UIText_Rogue_Init_Avatar_Tip_Confirm"
L5_1 = "UIText_Rogue_Start_Tip1"
L6_1 = "UIText_Rogue_Start_Tip2"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueAvatarSelectPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
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
  L1_2 = {}
  A0_2._selected_avatars = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._rogue_area_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._try_recover_rogue_team
  L2_2(L3_2)
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L3_1
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
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_init_select_avatar_panel
  L1_2 = L1_2(L2_2)
  A0_2._panel_select_avatar = L1_2
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.create_rogue_detail_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.RogueScheduleCheckPanel
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._panel_schedule = L1_2
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
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
  L1_2 = A0_2._setup_monster_and_avatar_navi
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_select_avatar
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_select_avatar
    L2_2 = L1_2
    L1_2 = L1_2.refresh_view
    L1_2(L2_2)
  end
end
L0_1._on_return_to_top = L7_1
function L7_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._selected_avatars
  if L1_2 then
    L1_2 = A0_2._selected_avatars
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._panel_select_avatar
      L2_2 = L1_2
      L1_2 = L1_2.set_selected_avatars_from_record
      L3_2 = A0_2._selected_avatars
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_select_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._selected_avatars = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatars_display
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_monster_and_avatar_navi
  L2_2(L3_2)
end
L0_1._on_select_avatar = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.GetStartRogueAvatarMaxNumber
  L1_2 = L1_2()
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
L0_1._setup_avatars_display = L7_1
function L7_1(A0_2, A1_2)
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
      L2_2 = A0_2._setup_avatars_display
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
L0_1._click_selected_avatar = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_detail
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._rogue_area_data
  L1_2(L2_2, L3_2)
end
L0_1._setup_details_display = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.RogueTeamInfoProvider
  L3_2 = nil
  L4_2 = A0_2._selected_avatars
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._panel_select_avatar
  L3_2 = L2_2
  L2_2 = L2_2.get_show_first_avatar
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.Avatar.AvatarMainPage"
  L5_2 = nil
  L6_2 = nil
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_btn_avatar_detail = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._selected_avatars
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_confirm_empty_avatar
    L1_2(L2_2)
    return
  end
  L1_2 = 0
  L2_2 = 0
  L3_2 = pairs
  L4_2 = A0_2._selected_avatars
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 ~= nil then
      L8_2 = L7_2.Level
      L1_2 = L1_2 + L8_2
      L2_2 = L2_2 + 1
    end
  end
  if L2_2 <= 0 then
    L4_2 = A0_2
    L3_2 = A0_2._on_btn_confirm_empty_avatar
    L3_2(L4_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueUtils
  L3_2 = L3_2.GetStartRogueAvatarMaxNumber
  L3_2 = L3_2()
  if L2_2 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_confirm_dialog_to_start_rogue
    L5_2 = L5_1
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._get_recommend_level
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2 * L2_2
  if L1_2 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_confirm_dialog_to_start_rogue
    L5_2 = L6_1
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._confirm_to_start_rogue
  L3_2(L4_2)
end
L0_1._on_btn_confirm = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm_empty_avatar = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkCancelHint
  L3_2 = A1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  function L5_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._confirm_to_start_rogue
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._show_confirm_dialog_to_start_rogue = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = A0_2._selected_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2.ID
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._start_rogue
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._confirm_to_start_rogue = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = A0_2._selected_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2.ID
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.SaveEnterRogueTeam
  L4_2 = A0_2._rogue_area_data
  L4_2 = L4_2.RogueAreaRow
  L4_2 = L4_2.AreaProgress
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._try_save_rogue_team_record = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_area_data
  if L1_2 ~= nil then
    L1_2 = A0_2._rogue_area_data
    L1_2 = L1_2.RogueAreaRow
    if L1_2 ~= nil then
      L2_2 = L1_2.RecommendLevel
      return L2_2
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1._get_recommend_level = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._check_rogue_schedule
  L2_2 = L2_2(L3_2)
  if L2_2 == false then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_save_rogue_team_record
  L2_2(L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueData
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetSelectableAeonIDList
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.Count
    if 0 < L4_2 then
      L4_2 = G
      L4_2 = L4_2.UIManager
      L4_2 = L4_2.load_and_async_show
      L5_2 = "Ui.Rogue.Aeon.RogueSelectAeonPage"
      L6_2 = A0_2._rogue_area_data
      L6_2 = L6_2.AreaID
      L7_2 = A1_2
      L4_2(L5_2, L6_2, L7_2)
      return
    end
  end
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.StartRogue
  L6_2 = A0_2._rogue_area_data
  L6_2 = L6_2.AreaID
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._start_rogue = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetRogueTeamByWorldIndex
  L3_2 = A0_2._rogue_area_data
  L3_2 = L3_2.RogueAreaRow
  L3_2 = L3_2.AreaProgress
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = null
  if L1_2 == L2_2 then
    return
  end
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.AvatarModule
    L8_2 = L7_2
    L7_2 = L7_2.GetAvatar
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._selected_avatars
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._try_recover_rogue_team = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_schedule
  if L1_2 then
    L1_2 = A0_2._panel_schedule
    L2_2 = L1_2
    L1_2 = L1_2.check_schedule
    L1_2 = L1_2(L2_2)
    if L1_2 == false then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._check_rogue_schedule = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L7_1
function L7_1(A0_2, A1_2)
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
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._binder
      L4_2 = L4_2.panel_detail
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_close
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_navigation_target
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_leave_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_detail
  L2_2 = L1_2
  L1_2 = L1_2.get_navigation_up_monster_btns
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if L2_2 ~= 0 then
      goto lbl_11
    end
  end
  do return end
  ::lbl_11::
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
      goto lbl_30
    end
  end
  do return end
  ::lbl_30::
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
L0_1._setup_monster_and_avatar_navi = L7_1
function L7_1(A0_2)
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
L0_1._change_avatar_navigation_target = L7_1
return L0_1
