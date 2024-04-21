local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.RewardDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumQuestPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumQuestTabItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumQuestTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumQuestRewardRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumQuestRewardRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumQuestPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumQuestPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L1_1.RewardQuestSeriesList
  L2_2 = {}
  A0_2.data = L2_2
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.data
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_quest_data = L3_1
function L3_1(A0_2, A1_2)
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
      L5_2 = A0_2
      L4_2 = A0_2.get_first_quest_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_tab_btn_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_quest_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.current_quest_panel
  if L1_2 then
    L1_2 = A0_2.current_quest_panel
    L2_2 = L1_2
    L1_2 = L1_2.show_reward_dialog
    L1_2(L2_2)
  end
end
L0_1._on_left_stick_button_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel_without_binder
  L3_2 = G
  L3_2 = L3_2.TabControl
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._tab_control = L1_2
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.set_tab_btns_root
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_root
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 35
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.short_cut_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_quest_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_tab
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_timer
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.click_item_by_uid
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ipairs
  L2_2 = A0_2.data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.MuseumQuestTabItem
    L9_2 = G
    L9_2 = L9_2.MuseumQuestTabItemBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_select_callback
    L9_2 = A0_2._on_click_quest_tab
    L10_2 = A0_2
    L11_2 = L4_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = A0_2._tab_control
    L8_2 = L7_2
    L7_2 = L7_2.add_item
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_image
    L9_2 = L5_2.QuestIconPath
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_title
    L9_2 = L5_2.Name
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind_red_dot
    L9_2 = L5_2.ID
    L7_2(L8_2, L9_2)
  end
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.update_layout
  L1_2(L2_2)
  L1_2 = A0_2._tab_control
  L2_2 = L1_2
  L1_2 = L1_2.setup_navigation
  L3_2 = NavigationType
  L3_2 = L3_2.Vertical
  L1_2(L2_2, L3_2)
end
L0_1.init_tab = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetMuseumActivityData
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.remain_timer
  L3_2 = L2_2
  L2_2 = L2_2.SetTargetTime
  L4_2 = L1_2.EndTimeDate
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = 2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_timer = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIPanelSwitch
  L3_2 = A0_2.__name
  L4_2 = A1_2
  L5_2 = A0_2.guid
  L2_2(L3_2, L4_2, L5_2)
  A0_2.current_tab_index = A1_2
  L2_2 = A0_2.data
  L2_2 = L2_2[A1_2]
  A0_2.current_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_quest
  L2_2(L3_2)
end
L0_1._on_click_quest_tab = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2.quest_list = L1_2
  L1_2 = A0_2.support_list
  if not L1_2 then
    L1_2 = {}
  end
  A0_2.support_list = L1_2
  L1_2 = 0
  L2_2 = A0_2.current_data
  L2_2 = L2_2.QuestList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.current_data
    L5_2 = L5_2.QuestList
    L5_2 = L5_2[L4_2]
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.quest_list
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = L2_1
    L7_2 = L6_2
    L6_2 = L6_2.TryGetQuestData
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2.Status
    L8_2 = CS
    L8_2 = L8_2.LEOGBBOPKKO
    L8_2 = L8_2.JKFPIINHGPD
    if L7_2 == L8_2 then
      L7_2 = A0_2.support_list
      L7_2[L5_2] = 1
    else
      L7_2 = L6_2.Status
      L8_2 = CS
      L8_2 = L8_2.LEOGBBOPKKO
      L8_2 = L8_2.KBBBFCIHJPC
      if L7_2 == L8_2 then
        L7_2 = A0_2.support_list
        L7_2[L5_2] = 2
      else
        L7_2 = A0_2.support_list
        L7_2[L5_2] = 3
      end
    end
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2.quest_list
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_2.support_list
    L2_3 = L2_3[A0_3]
    L3_3 = A0_2.support_list
    L3_3 = L3_3[A1_3]
    if L2_3 ~= L3_3 then
      L2_3 = A0_2.support_list
      L2_3 = L2_3[A0_3]
      L3_3 = A0_2.support_list
      L3_3 = L3_3[A1_3]
      L2_3 = L2_3 < L3_3
      return L2_3
    else
      L2_3 = A0_3 < A1_3
      return L2_3
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2.current_data
  L3_2 = L3_2.QuestList
  L3_2 = L3_2.Length
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_quest
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1.refresh_quest = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.quest_list
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 ~= nil then
    L6_2 = L5_2.is_destroyed
    if not L6_2 then
      goto lbl_24
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.create_panel
  L8_2 = G
  L8_2 = L8_2.MuseumQuestRewardRowPanel
  L9_2 = G
  L9_2 = L9_2.MuseumQuestRewardRowPanelBinder
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L6_2
  L7_2 = L5_2
  L6_2 = L5_2.bind
  L8_2 = L4_2.transform
  L6_2(L7_2, L8_2)
  L4_2.UserObjectData = L5_2
  ::lbl_24::
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L3_2
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.setup_image
  L8_2 = A0_2.current_data
  L8_2 = L8_2.QuestIconPath
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.register_callback
  L8_2 = A0_2._on_btn_reward_item
  L9_2 = A0_2
  L10_2 = L3_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L5_2
  L6_2 = L5_2.register_select_callback
  L8_2 = A0_2._on_quest_select
  L9_2 = A0_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L4_2
end
L0_1._on_item_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.save_navigation_target
  L4_2 = A1_2._binder
  L4_2 = L4_2.btn_root
  L4_2 = L4_2.gameObject
  L2_2(L3_2, L4_2)
  A0_2.current_quest_panel = A1_2
end
L0_1._on_quest_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
  L4_2 = L2_2
  L3_2 = L2_2.Add
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_NetworkManager
  L4_2 = L3_2
  L3_2 = L3_2.JCCHEMBPEEE
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_btn_reward_item = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_quest
  L2_2(L3_2)
end
L0_1._on_quest_get_reward = L3_1
return L0_1
