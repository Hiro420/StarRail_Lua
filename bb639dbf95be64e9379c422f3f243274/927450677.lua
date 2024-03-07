local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnMissionListInfoRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnMissionTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerReturnMissionTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityPlayerReturnModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2
  A0_2._parent_panel = A1_2
  A0_2._parent_page = A3_2
  A0_2.cur_select_item_panel = nil
  A0_2._is_unlock = false
  A0_2._panel_index = A4_2
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.create_lua_table_from_cs_list
  L7_2 = A5_2
  L6_2 = L6_2(L7_2)
  A0_2._quest_ids = L6_2
  L6_2 = {}
  A0_2._quest_datas = L6_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L1_2.ForceClearSideNavi = false
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._quest_ids = nil
  A0_2._quest_datas = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_view
  L1_2(L2_2)
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.TryMarkQuestTabSeen
    L3_2 = A0_2._panel_index
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    A0_2.cur_select_item_panel = L2_2
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_btn = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1.setup_custom_navigation = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._panel_index
  return L1_2
end
L0_1.get_panel_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._quest_datas
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = 1
  L2_2 = A0_2._quest_datas
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._quest_datas
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.Status
    L6_2 = CS
    L6_2 = L6_2.BLHLCHNAJKK
    L6_2 = L6_2.FMLBEGJJHMJ
    if L5_2 ~= L6_2 then
      L5_2 = false
      return L5_2
    end
  end
  L1_2 = true
  return L1_2
end
L0_1.check_is_all_reward_taken = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_unlock = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_panel_lock_state = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.bind_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._is_unlock
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_quest_data
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_quest_view
    L1_2(L2_2)
  else
    L1_2 = {}
    A0_2._quest_datas = L1_2
    L2_2 = A0_2
    L1_2 = A0_2._setup_quest_view
    L1_2(L2_2)
  end
end
L0_1.refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._quest_datas = L1_2
  L1_2 = 1
  L2_2 = A0_2._quest_ids
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1
    L6_2 = L5_2
    L5_2 = L5_2.TryGetQuestData
    L7_2 = A0_2._quest_ids
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._quest_datas
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = G
  L1_2 = L1_2.QuestUtils
  L1_2 = L1_2.sort_quest_datas
  L2_2 = A0_2._quest_datas
  L1_2(L2_2)
end
L0_1._setup_quest_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._quest_datas
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._quest_datas
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = A0_2._parent_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_right_navigation_target
    L3_2 = nil
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_quest_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.PlayerReturnMissionListInfoRow
    L8_2 = G
    L8_2 = L8_2.PlayerReturnMissionListInfoRowBinder
    L9_2 = A0_2._parent_page
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._quest_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.ID
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_divide_line_visibility
  L8_2 = A2_2 + 1
  L9_2 = A0_2._quest_datas
  L9_2 = #L9_2
  L8_2 = L8_2 ~= L9_2
  L6_2(L7_2, L8_2)
  if A2_2 == 0 then
    L6_2 = A0_2._parent_panel
    L7_2 = L6_2
    L6_2 = L6_2.setup_right_navigation_target
    L8_2 = L4_2._binder
    L8_2 = L8_2.btn_root
    L6_2(L7_2, L8_2)
  end
  L6_2 = A0_2._parent_panel
  L7_2 = L6_2
  L6_2 = L6_2.get_first_selected_btn_of_point_reward
  L6_2 = L6_2(L7_2)
  A0_2._left_navi_target = L6_2
  L7_2 = L4_2
  L6_2 = L4_2.setup_left_navigation_target
  L8_2 = A0_2._left_navi_target
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_item_change = L3_1
return L0_1
