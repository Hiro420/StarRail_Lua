local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
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
L1_1 = "Ui.Monster.CommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Skill.HeliobusSkillDetailPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeTargetPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.Challenge.HeliobusChallengeDetailPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusChallengeDetailPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Heliobus_Challenge_AvatarEmptyTips"
L2_1 = "UIText_Rogue_Start_Tip1"
L3_1 = "UIText_Rogue_Start_Tip2"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.HeliobusModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.RaidModule
function L6_1(A0_2)
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
  L3_2 = L3_2.HeliobusChallengeDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_team_panel_open = false
  L1_2 = {}
  A0_2._panel_avatar_icon_list = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2
  A0_2._challenge_data = A1_2
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.SelectSkillID
  A0_2._cur_select_skill_id = L2_2
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.SelectedAvatars
  A0_2._selected_avatars = L2_2
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skill
  L4_2 = A0_2._on_btn_skill
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_detail
  L4_2 = A0_2._on_btn_avatar_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_team_list
  L4_2 = A0_2._on_btn_team_list
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_monster_list_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.HeliobusSkillDetailPanel
  L4_2 = G
  L4_2 = L4_2.HeliobusSkillDetailPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._skill_detail_panel = L1_2
  L1_2 = A0_2._skill_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_detail
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_team_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_monster_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_move_left
  L1_2.ActionEnabled = false
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_skill_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L4_1.HeliobusRedDotFilter
  L3_2 = L3_2.HeliobusNewUnlockSkill
  L3_2 = L3_2.Count
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scroll_gamepad_hint
  L1_2(L2_2)
end
L0_1._on_return_to_top = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_avatar_select_panel
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L6_1
function L6_1(A0_2, A1_2)
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
  end
end
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_in_control_option_type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._is_team_panel_open
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._show_monster_tip_dialog
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_click = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftTrigger
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_move_left
    L3_2.ActionEnabled = true
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_move_right
    L3_2.ActionEnabled = false
  end
end
L0_1._on_in_control_press = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftTrigger
  L3_2 = #L3_2
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_move_left
    L3_2.ActionEnabled = false
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_move_right
    L3_2.ActionEnabled = true
  end
end
L0_1._on_in_control_released = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_scroll_gamepad_hint
  L2_2(L3_2)
end
L0_1._on_in_control_input_switch = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._selected_avatars = nil
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_skill_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_challenge_targets
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_select_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_avatar_icon_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_challenge_state
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L2_2 = L2_2.transform
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_scroll_gamepad_hint
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._is_team_panel_open
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._show_avatar_select_panel
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
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
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2.ID
      L7_2(L8_2, L9_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2._try_save_team_data
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1._in_control_exit_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.GetSkillData
  L3_2 = A0_2._cur_select_skill_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skill_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 == nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_img_skill
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skill_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_skill_icon
    L5_2 = L1_2.SkillData
    L5_2 = L5_2.SkillIconPath
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._skill_detail_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeliobusUnselectSkill
  L4_2 = L1_2 == nil
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "HeliobusSkillUnselect"
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_skill_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_new_skill_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L4_1.HeliobusRedDotFilter
  L4_2 = L4_2.HeliobusNewUnlockSkill
  L4_2 = L4_2.Count
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_skill_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.scroll_rect_left
    L4_2 = L3_2
    L3_2 = L3_2.CanScroll
    L3_2 = L3_2(L4_2)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 33
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect_right
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_scroll_gamepad_hint = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_buff_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.BuffDesc
  L4_2 = G
  L4_2 = L4_2.UITextUtils
  L4_2 = L4_2.GetSkillParams
  L5_2 = A0_2._challenge_data
  L5_2 = L5_2.DescParam
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_challenge_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.ChallengeName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.Level
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_challenge_level
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = G
    L3_2 = L3_2.UITextUtils
    L3_2 = L3_2.GetRomanNumberTextID
    L4_2 = A0_2._challenge_data
    L4_2 = L4_2.Level
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_level_hard
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.MonsterList
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_level_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.ChallengeTargetList
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = A0_2._binder
    L7_2 = L7_2.target_prefab
    L7_2 = L7_2.Prefab
    L8_2 = A0_2._binder
    L8_2 = L8_2.target_prefab
    L8_2 = L8_2.transform
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.HeliobusChallengeTargetPanel
    L9_2 = G
    L9_2 = L9_2.HeliobusChallengeTargetPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._challenge_data
    L7_2 = L7_2.IsRaidChallenge
    if L7_2 then
      L8_2 = L6_2
      L7_2 = L6_2.setup_view_by_raid_target
      L9_2 = A0_2._challenge_data
      L9_2 = L9_2.ChallengeTargetList
      L9_2 = L9_2[L4_2]
      L7_2(L8_2, L9_2)
    else
      L8_2 = L6_2
      L7_2 = L6_2.setup_view_by_battle_target
      L9_2 = A0_2._challenge_data
      L9_2 = L9_2.ChallengeTargetList
      L9_2 = L9_2[L4_2]
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._refresh_challenge_targets = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.register_click_item_callback
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2._binder
    L1_3 = L1_3.panel_select_avatar
    L2_3 = L1_3
    L1_3 = L1_3.get_selected_avatars
    L1_3 = L1_3(L2_3)
    A0_2._selected_avatars = L1_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_avatar_icon_panel
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._init_avatar_select_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = 1
  L2_2 = A0_2._panel_avatar_icon_list
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._panel_avatar_icon_list
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.set_empty_interactable
    L8_2 = true
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.setup_view_avatar_data
    L8_2 = A0_2._selected_avatars
    L8_2 = L8_2[L4_2]
    L9_2 = A0_2._on_avatar_icon_click
    L10_2 = A0_2
    L11_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1._refresh_avatar_icon_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_select_skill_id
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_warning_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_challenge
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_btn_challenge_state = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_team_panel_open
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_avatar_select_panel
    L4_2 = true
    L2_2(L3_2, L4_2)
    return
  end
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_select_avatar
    L3_2 = L2_2
    L2_2 = L2_2.set_selected_avatar
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_select_avatar
    L3_2 = L2_2
    L2_2 = L2_2.refresh
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_select_avatar
    L3_2 = L2_2
    L2_2 = L2_2.get_selected_avatars
    L2_2 = L2_2(L3_2)
    A0_2._selected_avatars = L2_2
    L3_2 = A0_2
    L2_2 = A0_2._refresh_avatar_icon_panel
    L2_2(L3_2)
  end
end
L0_1._on_avatar_icon_click = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_btn_rule = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._in_control_exit_click
  L1_2(L2_2)
end
L0_1._on_btn_close = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Heliobus.Skill.HeliobusSkillChoosePage"
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.RecommendSkillList
  L4_2 = A0_2._cur_select_skill_id
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_on_select_callback
  L4_2 = A0_2._on_skill_select
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_skill = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._cur_select_skill_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_skill_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_challenge_state
  L2_2(L3_2)
end
L0_1._on_skill_select = L6_1
function L6_1(A0_2)
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
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_avatar_icon_list
  L3_2 = #L3_2
  if L2_2 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_confirm_dialog_to_start_challenge
    L5_2 = L2_1
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._confirm_to_start_challenge
  L3_2(L4_2)
end
L0_1._on_btn_challenge = L6_1
function L6_1(A0_2)
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
    L3_2 = L2_2[1]
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
L0_1._on_btn_avatar_detail = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_avatar_select_panel
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L0_1._on_btn_back = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._on_btn_team_list = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._show_monster_tip_dialog
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_monster_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 == nil then
    A1_2 = 1
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2._challenge_data
  L4_2 = L4_2.MonsterList
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = {}
    L8_2.MonsterID = L7_2
    L9_2 = A0_2._challenge_data
    L9_2 = L9_2.MonsterLevel
    L8_2.Level = L9_2
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.Monster.MonsterTipsDialog"
  L5_2 = L2_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._show_monster_tip_dialog = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_team_panel_open = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_skill
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_team_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_monster_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_back
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rule
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_team_choose
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_team_choose
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_select_avatar
    L3_2 = L2_2
    L2_2 = L2_2.init
    L4_2 = A0_2._selected_avatars
    if not L4_2 then
      L4_2 = {}
    end
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_select_avatar
    L3_2 = L2_2
    L2_2 = L2_2.refresh
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_team_choose
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.clear_cur_selected_object
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 33
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_rect_right
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._show_avatar_select_panel = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.CommonBossIconPanel
    L8_2 = G
    L8_2 = L8_2.CommonBossIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._challenge_data
  L7_2 = L7_2.MonsterList
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2._challenge_data
  L8_2 = L8_2.MonsterLevel
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.bind_click
  L7_2 = A0_2
  L8_2 = A0_2._on_monster_click
  L9_2 = A2_2 + 1
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = L4_2
  L5_2 = L4_2.rebuild_info_layout
  L5_2(L6_2)
  return L3_2
end
L0_1._on_monster_list_changed = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UICenterToastMessageTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm_empty_avatar = L6_1
function L6_1(A0_2, A1_2)
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
      L1_3 = L1_3._confirm_to_start_challenge
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._show_confirm_dialog_to_start_challenge = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.MonsterLevel
  return L1_2
end
L0_1._get_recommend_level = L6_1
function L6_1(A0_2)
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
    L8_2 = L1_2
    L7_2 = L1_2.Add
    L9_2 = L6_2.ID
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.IsRaidChallenge
  if not L2_2 then
    L2_2 = L4_1
    L3_2 = L2_2
    L2_2 = L2_2.EnterChallengeBattle
    L4_2 = A0_2._challenge_data
    L4_2 = L4_2.ChallengeStageID
    L5_2 = A0_2._cur_select_skill_id
    L6_2 = L1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = L5_1
    L3_2 = L2_2
    L2_2 = L2_2.StartTreasureChallengeByHeliobus
    L4_2 = A0_2._cur_select_skill_id
    L5_2 = 0
    L6_2 = A0_2._challenge_data
    L6_2 = L6_2.RaidID
    L7_2 = 0
    L8_2 = L1_2
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_save_team_data
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._confirm_to_start_challenge = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.IsRaidChallenge
  if L2_2 then
    L2_2 = L4_1
    L3_2 = L2_2
    L2_2 = L2_2.TrySaveRaidChallengeData
    L4_2 = A0_2._challenge_data
    L4_2 = L4_2.RaidID
    L5_2 = A0_2._cur_select_skill_id
    L6_2 = A1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = L4_1
    L3_2 = L2_2
    L2_2 = L2_2.SaveChallengeCacheTeam
    L4_2 = A0_2._challenge_data
    L4_2 = L4_2.ChallengeGroupID
    L5_2 = A0_2._cur_select_skill_id
    L6_2 = A1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._try_save_team_data = L6_1
return L0_1
