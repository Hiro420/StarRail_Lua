local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.SpaceAnchor.SpaceAnchorPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceAnchor.AvatarHPSettingPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceAnchor.AvatarItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceAnchor.SpaceAnchorDetailSettingPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceAnchor.SpaceAnchorDetailSettingPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceAnchorPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceAnchorModule
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
L4_1 = 201
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SpaceAnchorPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_dirty = false
  A0_2._is_open_detail_settings = false
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = L1_1.TotalRecoverPercantage
  L2_2 = L2_2 / 100
  L1_2 = L1_2(L2_2)
  A0_2._cur_slider_amount = L1_2
  A0_2._is_can_exit = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._navigation_target_avatar = nil
  A0_2._navigation_target_bar = nil
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._entityid = A1_2
  A0_2._prop_id = A2_2
  L1_1.CurrentInteractEntityID = A1_2
end
L0_1.init = L5_1
function L5_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_can_exit
  if L1_2 then
    L1_2 = A0_2._navigation_target_avatar
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.get_first_avatar_object
      L1_2 = L1_2(L2_2)
    end
    return L1_2
  else
    L1_2 = A0_2._navigation_target_bar
    if not L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.get_first_slider_object
      L1_2 = L1_2(L2_2)
    end
    return L1_2
  end
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_avatar_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._detail_setting_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_over_all_setting_bar
  return L1_2(L2_2)
end
L0_1.get_first_slider_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_avatar_head_icon_selected
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_open_detail_settings
  if L1_2 == true then
    L2_2 = A0_2
    L1_2 = A0_2._on_click_back_setting_btn
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._is_can_exit
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_exit_btn_click
    L1_2(L2_2)
  end
end
L0_1._in_control_exit_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.auto_recover
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._auto_recover_allowed
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._init_ui_navigation
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.prop_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._prop_id
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L1_2 = {}
  A0_2._teammember_panels = L1_2
  L1_2 = L1_1.IsAutoRecover
  A0_2._auto_recover_allowed = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_datas
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_team_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_team_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_callback
  L3_2 = A0_2._on_ui_exit
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.SpaceAnchorDetailSettingPanel
  L4_2 = G
  L4_2 = L4_2.SpaceAnchorDetailSettingPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._detail_setting_panel = L1_2
  L1_2 = A0_2._detail_setting_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.detail_root
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._detail_setting_panel
  L2_2 = L1_2
  L1_2 = L1_2.init
  L1_2(L2_2)
  L1_2 = A0_2._detail_setting_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._detail_setting_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_apply_setting_cbk
  L3_2 = A0_2
  L4_2 = A0_2._on_apply_detail_setting_cbk
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L4_1
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.RaidModule
  L2_2 = L2_2.IsInTreasureChallenge
  L2_2 = not L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.map_btn
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L1_2 or L5_2
  if L1_2 then
    L5_2 = L2_2
  end
  L3_2(L4_2, L5_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.remove_tick
  L1_2(L2_2)
  A0_2._detail_setting_panel = nil
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  A0_2._is_dirty = false
  L1_2 = {}
  A0_2._avatar_datas = L1_2
  L1_2 = {}
  A0_2._avatarhp_percent = L1_2
  A0_2._current_team = nil
  L1_2 = L1_1.TotalRecoverPercantage
  A0_2._overall_setting = L1_2
  L1_2 = {}
  A0_2._need_to_update_avatars = L1_2
  L1_2 = L1_1.AvatarToHPPercent
  A0_2._updated_avatars = L1_2
  L1_2 = {}
  A0_2._locked_avatars = L1_2
  L1_2 = {}
  A0_2._avatar_setting_items = L1_2
  L1_2 = {}
  A0_2._avatar_data_list = L1_2
  L1_2 = L3_1.AllAvatars
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._avatar_datas
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._avatar_data_list
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._avatarhp_percent
    L8_2 = L6_2.ID
    L9_2 = L1_1
    L10_2 = L9_2
    L9_2 = L9_2.GetAvatarSetting
    L11_2 = L6_2.ID
    L9_2 = L9_2(L10_2, L11_2)
    L7_2[L8_2] = L9_2
    L7_2 = A0_2._updated_avatars
    L8_2 = L7_2
    L7_2 = L7_2.ContainsKey
    L9_2 = L6_2.ID
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._locked_avatars
      L9_2 = L6_2.ID
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.MemberDatas
  L3_2 = {}
  A0_2.teamdata = L3_2
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    if L7_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2.teamdata
      L9_2 = L2_2[L6_2]
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.AvatarUtils
  L3_2 = L3_2.get_avatars_in_team
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentTeam
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  A0_2._current_team = L3_2
  A0_2._team_selected_index = 0
  L3_2 = {}
  A0_2._backstage_avatars = L3_2
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = false
    L9_2 = ipairs
    L10_2 = A0_2._current_team
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2, L13_2 in L9_2, L10_2, L11_2 do
      L14_2 = L7_2.ID
      L15_2 = L13_2.ID
      if L14_2 == L15_2 then
        L8_2 = true
      end
    end
    if L8_2 == false then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._backstage_avatars
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.AvatarUtils
  L3_2 = L3_2.sort_avatars
  L4_2 = A0_2._avatar_data_list
  L5_2 = AvatarSortType
  L5_2 = L5_2.Level
  L6_2 = false
  L7_2 = G
  L7_2 = L7_2.AvatarUtils
  L7_2 = L7_2.get_avatars_in_team
  L8_2 = L2_1
  L9_2 = L8_2
  L8_2 = L8_2.GetCurrentTeam
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
end
L0_1._init_datas = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2.teamdata
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._update_team_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentHPNum
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentMaxHP
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.cur_hp_txt
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.ttl_hp_txt
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetRemainTime
  L3_2 = L3_2(L4_2)
  if L3_2 <= 0 then
    L3_2 = 0
    L4_2 = A0_2._binder
    L4_2 = L4_2.remain_time
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "HealPool_ChargeFinish_Label"
    L4_2(L5_2, L6_2)
  else
    L4_2 = math
    L4_2 = L4_2.fmod
    L5_2 = L3_2
    L6_2 = 60
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = math
    L5_2 = L5_2.fmod
    L6_2 = L3_2 - L4_2
    L6_2 = L6_2 / 60
    L7_2 = 60
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L3_2 - L4_2
    L7_2 = L5_2 * 60
    L6_2 = L6_2 - L7_2
    L6_2 = L6_2 / 3600
    L7_2 = A0_2._binder
    L7_2 = L7_2.remain_time
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = "HealPool_RecoverLeftTime_Tips"
    L10_2 = L6_2
    L11_2 = L5_2
    L12_2 = L4_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.hp_progress_bar
  L5_2 = L1_2 / L2_2
  L4_2.value = L5_2
end
L0_1._update_dynamic_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._update_dynamic_info
  L1_2(L2_2)
end
L0_1._on_tick = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L4_2 = A0_2._on_exit_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.map_btn
  L4_2 = A0_2._on_teleport_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.auto_recover
  L4_2 = A0_2._on_auto_recover_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.recover_btn
  L4_2 = A0_2._on_heal_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.detail_setting_btn
  L4_2 = A0_2._on_click_detail_setting_btn
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.back_btn
  L4_2 = A0_2._on_click_back_setting_btn
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._bind_btns = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.IHFBKDHJPFP
  L4_2 = A0_2._on_heal_take_effect
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._add_handlers = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 < 0 then
    L3_2 = nil
    return L3_2
  end
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarItemIconPanel
    L8_2 = G
    L8_2 = L8_2.AvatarItemIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._teammember_panels
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2.teamdata
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_team_item_change = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = A0_2._avatarhp_percent
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = A0_2
    L7_2 = A0_2.check_locked
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 == false then
      L7_2 = A0_2._avatarhp_percent
      L7_2[L5_2] = A1_2
    end
  end
end
L0_1._update_all_avatars_on_slider_change = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._is_locked = A3_2
  L4_2 = A0_2._avatarhp_percent
  L4_2[A1_2] = A2_2
  A0_2._is_dirty = true
end
L0_1._on_data_changes = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._auto_recover_changed
  if L1_2 then
    L1_2 = A0_2._auto_recover_changed
    if L1_2 == true then
      L1_2 = L1_1
      L2_2 = L1_2
      L1_2 = L1_2.SetAutoRecover
      L3_2 = A0_2._auto_recover_allowed
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_ui_exit = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "SpringRecoverScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Retcode
  if L3_2 ~= 0 then
    return
  end
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentTeam
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.MemberDatas
  L4_2 = {}
  A0_2.teamdata = L4_2
  L4_2 = 0
  L5_2 = L3_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    if L8_2 ~= nil then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2.teamdata
      L10_2 = L3_2[L7_2]
      L8_2(L9_2, L10_2)
    end
  end
  L4_2 = pairs
  L5_2 = A0_2._teammember_panels
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.refresh_hp
    L11_2 = A0_2.teamdata
    L11_2 = L11_2[L7_2]
    L9_2(L10_2, L11_2)
  end
end
L0_1._on_heal_take_effect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_open_detail_settings
  if L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = 200
  L1_2(L2_2)
end
L0_1._on_teleport_btn_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_open_detail_settings
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_open_detail_settings
  if L1_2 then
    return
  end
  L1_2 = A0_2._auto_recover_allowed
  L1_2 = not L1_2
  A0_2._auto_recover_allowed = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.auto_recover
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._auto_recover_allowed
  L1_2(L2_2, L3_2)
  A0_2._auto_recover_changed = true
end
L0_1._on_auto_recover_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_open_detail_settings
  if L1_2 then
    return
  end
  L1_2 = A0_2._detail_setting_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_heal_validation
  L1_2 = L1_2(L2_2)
  if L1_2 == false then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "HealPool_FullHP_Tips"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentHPNum
  L1_2 = L1_2(L2_2)
  if L1_2 < 1 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "HealPool_NoEnough_Tips"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendSpringRecoverCsReq
  L3_2 = A0_2._entityid
  L1_2(L2_2, L3_2)
end
L0_1._on_heal_btn_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = false
  L2_2 = 1.0E-5
  L3_2 = pairs
  L4_2 = A0_2.teamdata
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.LeftHPRatio
    L9_2 = L8_2
    L8_2 = L8_2.ToFloat
    L8_2 = L8_2(L9_2)
    L8_2 = L8_2 + L2_2
    L9_2 = L1_1
    L10_2 = L9_2
    L9_2 = L9_2.GetAvatarSetting
    L11_2 = L7_2.AvatarData
    L11_2 = L11_2.ID
    L9_2 = L9_2(L10_2, L11_2)
    L9_2 = L9_2 / 10000
    if L8_2 < L9_2 then
      L1_2 = true
    end
  end
  return L1_2
end
L0_1._check_heal_validation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_navigation_target
  L1_2 = L1_2(L2_2)
  A0_2._navigation_target_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_datas
  L1_2(L2_2)
  L1_2 = A0_2._is_open_detail_settings
  L1_2 = not L1_2
  A0_2._is_open_detail_settings = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.health_setting
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.close_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.back_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._detail_setting_panel
  L2_2 = L1_2
  L1_2 = L1_2.init
  L1_2(L2_2)
  L1_2 = A0_2._detail_setting_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  A0_2._is_can_exit = false
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L3_2 = A0_2._navigation_target_bar
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_slider_object
    L3_2 = L3_2(L4_2)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_avatar_head_icon_deselected
  L1_2(L2_2)
end
L0_1._on_click_detail_setting_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_navigation_target
  L1_2 = L1_2(L2_2)
  A0_2._navigation_target_bar = L1_2
  L1_2 = A0_2._is_open_detail_settings
  L1_2 = not L1_2
  A0_2._is_open_detail_settings = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.content_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.health_setting
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.close_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.back_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._detail_setting_panel
  L2_2 = L1_2
  L1_2 = L1_2.init
  L1_2(L2_2)
  A0_2._is_can_exit = true
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L3_2 = A0_2._navigation_target_avatar
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_avatar_object
    L3_2 = L3_2(L4_2)
  end
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_avatar_head_icon_selected
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.content_detail
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_list_view
  L2_2 = L1_2
  L1_2 = L1_2.FinishSnapImmediately
  L1_2(L2_2)
end
L0_1._on_click_back_setting_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_back_setting_btn
  L1_2(L2_2)
end
L0_1._on_apply_detail_setting_cbk = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 == false then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Recover"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L0_1._on_avatar_head_icon_selected = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 == false then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
end
L0_1._on_avatar_head_icon_deselected = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputDeviceClass
  L2_2 = L2_2.Controller
  L2_2 = #L2_2
  if A1_2 ~= L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_gamepad_hint_based_on_state
  L2_2(L3_2)
end
L0_1._on_in_control_input_switch = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_open_detail_settings
  if L1_2 == true then
    L2_2 = A0_2
    L1_2 = A0_2._on_avatar_head_icon_deselected
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_avatar_head_icon_selected
    L1_2(L2_2)
  end
end
L0_1._setup_gamepad_hint_based_on_state = L5_1
return L0_1
