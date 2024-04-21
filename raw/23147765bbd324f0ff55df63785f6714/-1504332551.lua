local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.DailyMission.BattleCollege.HandbookBattleCollegeGroupPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.BattleCollege.HandbookBattleCollegeGroupPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookBattleCollegeTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BattleCollegeModule
L2_1 = "SpriteOutput/TabIcon/DailyQuest/DailyQuestBattleTeachIcon.png"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "BattleCollege_UnlockID"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.IntValue
function L4_1(A0_2)
  local L1_2
  A0_2.hide_home = true
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.get_battle_challenge_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_group
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = L1_1.NewUnlockBattleCollegeGroupID
  A0_2.new_unlock_group_id = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.new_unlock_group_id
  if L1_2 ~= 0 then
    A0_2.new_unlock_group_id = 0
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.ClearNewUnlockBattleCollegeGroupID
    L1_2(L2_2)
  end
end
L0_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2.group_data = L1_2
  L1_2 = L1_1.AllBattleCollegeGroupData
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    if L6_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2.group_data
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1.get_battle_challenge_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._do_setup_view
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_group_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_fadein_anim
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._do_setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_group
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2.group_data
  L4_2 = #L4_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_group
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._setup_group_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.HandbookBattleCollegeGroupPanel
  L8_2 = G
  L8_2 = L8_2.HandbookBattleCollegeGroupPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2.group_data
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = A0_2.new_unlock_group_id
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = L4_2
  L5_2 = L4_2.setup_index
  L7_2 = A2_2 + 1
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_select_callback
  L7_2 = A0_2._on_item_selected
  L8_2 = A0_2
  L9_2 = L4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_item_changed = L4_1
function L4_1(A0_2, A1_2)
  A0_2.current_select_panel = A1_2
end
L0_1._on_item_selected = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.is_bound
  L2_2 = L2_2(L3_2)
  if not L2_2 or not A1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_group
  L3_2 = L2_2
  L2_2 = L2_2.PlayFadeIn
  L2_2(L3_2)
end
L0_1._play_fadein_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_view
  L1_2(L2_2)
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_by_confirm
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_left_stick_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_to_next_zoom_dpad_type
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.DPadUp
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_focused
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.force_set_first_navigation_target
    L1_2(L2_2)
  end
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.select_icon_image
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_root
  L3_2 = L3_2.gameObject
  L4_2 = "HandbookDailyBattleCollege"
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "HandBookBattleCollegeTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_tab_btn_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_unlocked
  return L1_2(L2_2)
end
L0_1._is_enable = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.IsOpen
  L2_2 = L3_1
  return L1_2(L2_2)
end
L0_1.is_unlocked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_DailyMissionPage_TabLocked"
  L1_2(L2_2, L3_2)
end
L0_1._on_select_when_disable = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_loaded
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_group
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = L1_2.UserObjectData
  L2_2 = L2_2._binder
  L2_2 = L2_2.btn_root
  L2_2 = L2_2.gameObject
  return L2_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = 124
  return L1_2
end
L0_1.get_short_cut_hint = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active_in_hierarchy
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.get_navigation_target
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.current_select_panel
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2.current_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_reward_dialog
  L1_2(L2_2)
end
L0_1._on_left_stick_button_click = L4_1
return L0_1
