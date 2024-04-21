local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.ActivityTelevision.ActivityTelevisionDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityTelevision.ActivityTelevisionTeamInfoProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionDetailPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityTelevisionModule
L3_1 = "UIText_Heliobus_Challenge_AvatarEmptyTips"
L4_1 = "UIText_Rogue_Start_Tip1"
L5_1 = 4
L6_1 = 0.3
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
  L3_2 = L3_2.ActivityTelevisionDetailPageBinder
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
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2.is_death_level
  if L1_2 then
    L1_2 = "UI_TvChallengeDetailPage_FadeIn_Death"
    return L1_2
  else
    L1_2 = "UI_TvChallengeDetailPage_FadeIn"
    return L1_2
  end
end
L0_1.get_custom_fade_in_anim_name = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = "UI_TvChallengeDetailPage_FadeOut"
  return L1_2
end
L0_1.get_custom_fade_out_anim_name = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.television_id = A1_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetTelevisionData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.data = L2_2
  L2_2 = A0_2.data
  L2_2 = L2_2.LevelRow
  A0_2.level_row = L2_2
  L2_2 = A0_2.data
  L2_2 = L2_2.Row
  A0_2.stage_row = L2_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetLineupData
  L4_2 = A0_2.television_id
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_avatar_data_from_id_list
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.television_id
  L4_2 = L2_1.DeathLevelID
  L3_2 = L3_2 == L4_2
  A0_2.is_death_level = L3_2
  L3_2 = A0_2.is_death_level
  L3_2 = not L3_2
  A0_2.show_short_desc = L3_2
end
L0_1.init = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._selected_avatars = L2_2
  L2_2 = nil
  if A1_2 == nil then
    return
  end
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.AvatarModule
    L8_2 = L7_2
    L7_2 = L7_2.GetAvatar
    L9_2 = A1_2[L6_2]
    L7_2 = L7_2(L8_2, L9_2)
    L2_2 = L7_2
    if L2_2 == nil then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.GlobalVars
      L7_2 = L7_2.s_ModuleManager
      L7_2 = L7_2.AvatarModule
      L8_2 = L7_2
      L7_2 = L7_2.GetTrialAvatar
      L9_2 = A1_2[L6_2]
      L7_2 = L7_2(L8_2, L9_2)
      L2_2 = L7_2
    end
    if L2_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._selected_avatars
      L9_2 = L2_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._init_avatar_data_from_id_list = L7_1
function L7_1(A0_2)
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
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_monster
  L4_2 = A0_2._on_btn_monster
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail_desc
  L4_2 = A0_2._on_btn_detail_desc
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff_list
  L4_2 = A0_2._on_btn_select_buff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityTelevisionEnd
  L4_2 = L0_1._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_team_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_buff_list_btn_enable
  L3_2 = A0_2.is_death_level
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
  L1_2 = L1_2.node_buff_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_death_level
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_active_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_level_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_monster_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_challenge_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_buff_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_select_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_avatar_icon_panel
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
  L2_2 = A0_2
  L1_2 = A0_2.refresh_short_cut_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_trigger_tutorial
  L1_2(L2_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._selected_avatars = nil
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.is_death_level
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.TutorialTaskUnlock
    L3_2 = "5134"
    L1_2(L2_2, L3_2)
  end
end
L0_1._try_trigger_tutorial = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.is_in_special_zoom
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = 63
      L3_3 = A0_2._binder
      L3_3 = L3_3.scroll_rect
      L0_3(L1_3, L2_3, L3_3)
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = 33
      L3_3 = A0_2._binder
      L3_3 = L3_3.scroll_rect
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L1_2(L2_2)
end
L0_1.refresh_short_cut_hint = L7_1
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
  end
end
L0_1._on_enter_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_enter_team_list_btn_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_short_cut_hint
  L1_2(L2_2)
end
L0_1._on_enter_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_enter_team_list_btn_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_in_control_option_enabled
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_short_cut_hint
  L1_2(L2_2)
end
L0_1._on_leave_special_zoom = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_team_list
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_team_list
  L2_2.IsShowTip = A1_2
end
L0_1.set_enter_team_list_btn_enable = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_buff_list
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_buff_list
  L2_2.IsShowTip = A1_2
end
L0_1.set_buff_list_btn_enable = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_buff_object = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._is_can_to_special_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_can_to_special_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.get_buff_object
    L1_2 = L1_2(L2_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_special_zoom_navigation_target
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_select_buff = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_common_level
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2.is_death_level
    L8_2 = not L8_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_death_level
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2.is_death_level
    L6_2(L7_2, L8_2)
  end
end
L0_1.setup_active_status = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_monster
  L4_2 = A0_2.level_row
  L4_2 = L4_2.MonsterPic
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_monster_buff_desc
  A0_2.txt_buff_desc = L1_2
  L1_2 = A0_2.is_death_level
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator_monster
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "DeathState"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_monster_buff_desc_death
    A0_2.txt_buff_desc = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_monster_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityTelevision_BattleEntrance_End_Title"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_monster_buff_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.level_row
    L3_2 = L3_2.MonsterBuffTips
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.refresh_monster_desc
  L1_2(L2_2)
end
L0_1.setup_monster_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2.level_row
  L2_2 = L2_2.MonsterParmList
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.show_short_desc
  if L2_2 then
    L2_2 = A0_2.is_death_level
    if not L2_2 then
      L2_2 = A0_2.txt_buff_desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = A0_2.level_row
      L4_2 = L4_2.MonsterBuffShortDesc
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A0_2.txt_buff_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2.level_row
    L4_2 = L4_2.MonsterBuffDesc
    L5_2 = table
    L5_2 = L5_2.unpack
    L6_2 = L1_2
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1.refresh_monster_desc = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.stage_row
  L3_2 = L3_2.StageName
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L1_2 = L1_2.GetStageIDByEventID
  L2_2 = A0_2.level_row
  L2_2 = L2_2.EventID
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StageExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1.PlayerData
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_recommended_level
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_1
  L7_2 = L6_2
  L6_2 = L6_2.GetShowLevel
  L8_2 = L3_2.WorldLevel
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.weak_point_list
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.create_lua_table_from_cs_array
  L7_2 = A0_2.level_row
  L7_2 = L7_2.RecommadNature
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_level_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.is_death_level
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2.level_row
  L2_2 = L2_2.TargetTextList
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.target_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_challenge_target = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = A0_2.level_row
  L2_2 = L2_2.MonsterBuffTips
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_buff_target_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2.level_row
  L4_2 = L4_2.BuffTips
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2.data
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_click_callback
  L4_2 = A0_2._on_select_buff
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.register_detail_callback
  L4_2 = A0_2.refresh_short_cut_hint
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_buff_count
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_desc
  L4_2 = A0_2.show_short_desc
  L2_2(L3_2, L4_2)
end
L0_1.setup_buff_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_buff_count
  L1_2(L2_2)
end
L0_1._on_select_buff = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.is_death_level
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_buff_count
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_buff_limit
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_cur_buff_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_max_buff_count
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_btn_challenge_state
  L5_2 = L1_2 >= L2_2
  L3_2(L4_2, L5_2)
end
L0_1.refresh_buff_count = L7_1
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.Client
L7_1 = L7_1.GlobalVars
L7_1 = L7_1.s_ModuleManager
L7_1 = L7_1.AvatarModule
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.all_avatars
  if L1_2 ~= nil then
    L1_2 = {}
    L2_2 = A0_2.trial_avatars
    L3_2 = A0_2.all_avatars
    L1_2[1] = L2_2
    L1_2[2] = L3_2
    return L1_2
  end
  L1_2 = {}
  A0_2.all_avatars = L1_2
  L1_2 = {}
  A0_2.total_avatars = L1_2
  L1_2 = {}
  A0_2.trial_avatars = L1_2
  L1_2 = {}
  A0_2.trial_avatars_sorted = L1_2
  L1_2 = A0_2.data
  L2_2 = L1_2
  L1_2 = L1_2.GetTrialAvatars
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.trial_avatars
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.trial_avatars_sorted
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2.total_avatars
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = L7_1.AllAvatars
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.total_avatars
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2.all_avatars
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = {}
  L4_2 = A0_2.trial_avatars
  L5_2 = A0_2.all_avatars
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  return L3_2
end
L0_1.get_all_avatars = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.register_selection_callback
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
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.init
  L4_2 = A0_2
  L3_2 = A0_2.get_all_avatars
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = "UIText_ActivityTelevision_BattleEntrance_Role_Title1"
  L6_2 = "UIText_ActivityTelevision_BattleEntrance_Role_Title2"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L5_2 = A0_2._selected_avatars
  if not L5_2 then
    L5_2 = {}
  end
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_show_damage_type
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.overrider_get_top_avatars
  L3_2 = A0_2._on_get_top_avatars
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._init_avatar_select_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_select_avatar
  L3_2 = L3_2._selected_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = pairs
  L3_2 = A0_2.trial_avatars_sorted
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1._on_get_top_avatars = L8_1
function L8_1(A0_2)
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
L0_1._refresh_avatar_icon_panel = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_warning_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_challenge
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_btn_challenge_state = L8_1
function L8_1(A0_2, A1_2)
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
    L2_2 = L2_2.setup_view
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
L0_1._on_avatar_icon_click = L8_1
function L8_1(A0_2)
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
      L7_2 = L6_2.IsTrialPlayer
      if L7_2 then
        L8_2 = L1_2
        L7_2 = L1_2.Add
        L9_2 = L6_2.TrialPlayerID
        L7_2(L8_2, L9_2)
      else
        L8_2 = L1_2
        L7_2 = L1_2.Add
        L9_2 = L6_2.ID
        L7_2(L8_2, L9_2)
      end
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
L0_1._in_control_exit_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L2_2 = L2_2.GetStageIDByEventID
  L3_2 = A0_2.level_row
  L3_2 = L3_2.EventID
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.StageExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.Level
  L5_2 = 0
  L6_2 = A0_2.level_row
  L6_2 = L6_2.AllMonsterList
  L6_2 = L6_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2.level_row
    L9_2 = L9_2.AllMonsterList
    L9_2 = L9_2[L8_2]
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.MonsterData
    L11_2 = L9_2
    L12_2 = L4_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L1_2
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
  end
  L5_2 = G
  L5_2 = L5_2.UIManager
  L5_2 = L5_2.load_and_async_show
  L6_2 = "Ui.Monster.MonsterTipsDialog"
  L7_2 = L1_2
  L8_2 = 1
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._on_btn_monster = L8_1
function L8_1(A0_2)
  local L1_2
end
L0_1._on_btn_rule = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._in_control_exit_click
  L1_2(L2_2)
end
L0_1._on_btn_close = L8_1
function L8_1(A0_2)
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
    L5_2 = L4_1
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._confirm_to_start_challenge
  L3_2(L4_2)
end
L0_1._on_btn_challenge = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ActivityTelevisionTeamInfoProvider
  L3_2 = A0_2._selected_avatars
  L4_2 = L5_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A0_2._selected_avatars
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = ipairs
  L4_2 = A0_2.trial_avatars
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = G
  L3_2 = L3_2.AvatarUtils
  L3_2 = L3_2.sort_avatars
  L4_2 = A0_2.total_avatars
  L5_2 = AvatarSortType
  L5_2 = L5_2.Level
  L6_2 = false
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2.total_avatars
  L3_2 = L3_2[1]
  L4_2 = G
  L4_2 = L4_2.new
  L5_2 = "Ui.Avatar.AvatarMainPage"
  L4_2 = L4_2(L5_2)
  L6_2 = L4_2
  L5_2 = L4_2.init
  L7_2 = nil
  L8_2 = nil
  L9_2 = L1_2
  L10_2 = L3_2
  L11_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_avatar_data_list
  L7_2 = A0_2.total_avatars
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.async_show
  L5_2(L6_2)
end
L0_1._on_btn_avatar_detail = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_avatar_select_panel
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_back = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._show_avatar_select_panel
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._on_btn_team_list = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_desc
  L3_2 = A0_2.show_short_desc
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_short_cut_hint
  L1_2(L2_2)
end
L0_1._on_btn_detail_desc = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.show_short_desc = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_detail_desc
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A0_2.show_short_desc
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_monster_desc
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.refresh_desc
  L4_2 = A0_2.show_short_desc
  L2_2(L3_2, L4_2)
end
L0_1.refresh_desc = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_activity_end = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_team_panel_open = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_team_hint
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
  L3_2 = A0_2
  L2_2 = A0_2.set_buff_list_btn_enable
  L4_2 = A0_2.is_death_level
  if L4_2 then
    L4_2 = not A1_2
  end
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_team_choose
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_select_avatar
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L4_2 = nil
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._count_down_timer
    if L2_2 ~= nil then
      L2_2 = A0_2._count_down_timer
      L3_2 = L2_2
      L2_2 = L2_2.stop
      L2_2(L3_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_avatar_list
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = "UI_TvChallengeDetailPage_MemberChoose_FadeIn"
      L2_2(L3_2, L4_2)
    end
  else
    L3_2 = A0_2
    L2_2 = A0_2.clear_cur_selected_object
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._count_down_timer
    if L2_2 == nil then
      L3_2 = A0_2
      L2_2 = A0_2._add_count_down_timer
      L4_2 = A0_2._team_panel_exit
      L5_2 = L6_1
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      A0_2._count_down_timer = L2_2
    end
    L2_2 = A0_2._count_down_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._count_down_timer
    L3_2 = L2_2
    L2_2 = L2_2.start
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_avatar_list
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = "UI_TvChallengeDetailPage_MemberChoose_FadeOut"
    L2_2(L3_2, L4_2)
  end
end
L0_1._show_avatar_select_panel = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_team_choose
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._count_down_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1._team_panel_exit = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UICenterToastMessageTextID
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm_empty_avatar = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._show_confirm_dialog_to_start_challenge = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.MonsterLevel
  return L1_2
end
L0_1._get_recommend_level = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
    L7_2 = L6_2.IsTrialPlayer
    if L7_2 then
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2.TrialPlayerID
      L7_2(L8_2, L9_2)
    else
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2.ID
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.get_buff_list
  L2_2 = L2_2(L3_2)
  A0_2.buff_list = L2_2
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
  L3_2 = pairs
  L4_2 = A0_2.buff_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L2_2
    L8_2 = L2_2.Add
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2.is_death_level
  if L3_2 then
    L3_2 = L2_1
    L4_2 = L3_2
    L3_2 = L3_2.StartTelevisionBattle
    L5_2 = A0_2.television_id
    L6_2 = L1_2
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = L2_1
    L4_2 = L3_2
    L3_2 = L3_2.StartTelevisionBattle
    L5_2 = A0_2.television_id
    L6_2 = L1_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._try_save_team_data
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1._confirm_to_start_challenge = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.SaveLineupData
  L4_2 = A0_2.television_id
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._try_save_team_data = L8_1
return L0_1
