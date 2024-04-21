local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnMissionListInfoRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerReturnMissionListInfoRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._parent_panel = A1_2
  A0_2._parent_page = A3_2
  A0_2._quest_id = 0
  A0_2._quest_data = nil
  L4_2 = {}
  A0_2._reward_point_table = L4_2
  L4_2 = {}
  A0_2._reward_item_table = L4_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skip
  L4_2 = A0_2._on_btn_skip
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_point
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_reward_point_list_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_items
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_reward_item_list_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mono_info
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_mono_info
    L2_3 = true
    L0_3(L1_3, L2_3)
    A0_2.is_main_panel_selected = true
    L0_3 = A0_2._parent_panel
    L1_3 = A0_2
    L0_3.cur_select_item_panel = L1_3
    L0_3 = A0_2._parent_page
    L0_3.is_focus_on_point_reward = false
    L0_3 = A0_2._parent_page
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = {}
    L3_3 = "ItemDetail"
    L4_3 = "ActionGroup_Return"
    L2_3[1] = L3_3
    L2_3[2] = L4_3
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_mono_info
    L2_3 = false
    L0_3(L1_3, L2_3)
    A0_2.is_main_panel_selected = false
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._quest_data = nil
  A0_2._reward_point_table = nil
  A0_2._reward_item_table = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._quest_id = A1_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A0_2._quest_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._quest_data = L2_2
  L2_2 = A0_2._quest_data
  if L2_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "quest data not found in module, id:"
    L4_2 = A0_2._quest_id
    L3_2 = L3_2 .. L4_2
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_divide_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_divide_line_visibility = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2 = L2_2.navigation
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Navigation
  L3_2 = L3_2.Mode
  L3_2 = L3_2.Explicit
  L2_2.mode = L3_2
  L2_2.selectOnLeft = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2.navigation = L2_2
end
L0_1.setup_left_navigation_target = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
L0_1.bind_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = A0_2._reward_point_table
  L4_2 = L4_2[1]
  L4_2 = L4_2.ConfigID
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = A0_2._reward_item_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._reward_item_table
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.ConfigID
    L6_2(L7_2, L8_2)
  end
  return L1_2
end
L0_1.get_all_reward_ids = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rewards_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status_view
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.DataRow
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FinishWayExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.FinishWayID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.QuestTitle
  L6_2 = L2_2.ParamInt1
  L7_2 = L2_2.ParamInt2
  L8_2 = L2_2.ParamInt3
  L9_2 = A0_2._quest_data
  L9_2 = L9_2.TotalProgress
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_cur_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = tostring
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.Progress
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_total_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = tostring
  L6_2 = A0_2._quest_data
  L6_2 = L6_2.TotalProgress
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._setup_info_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._reward_point_table = L1_2
  L1_2 = {}
  A0_2._reward_item_table = L1_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.RewardID
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ItemFactory
  L3_2 = L3_2.CreateDisplayItemDataFromReward
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = G
  L3_2 = L3_2.RewardUtils
  L3_2 = L3_2.sort_reward_item
  L4_2 = L2_2
  L3_2(L4_2)
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L7_2 = L7_2.ConfigID
    if L7_2 == 25 then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._reward_point_table
      L9_2 = L2_2[L6_2]
      L7_2(L8_2, L9_2)
    else
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._reward_item_table
      L9_2 = L2_2[L6_2]
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_point
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._reward_point_table
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_point
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_items
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._reward_item_table
  L5_2 = #L5_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_items
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L0_1._setup_rewards_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_get
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_completed
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.CMOFEAFMGAK
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.DataRow
  L2_2 = L2_2.GotoID
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_in_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.CMOFEAFMGAK
  L5_2 = L1_2 ~= L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.KBBBFCIHJPC
  L5_2 = L1_2 == L5_2 and L2_2 ~= 0
  L3_2(L4_2, L5_2)
end
L0_1._setup_status_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_point_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ConfigID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_attachment_getted
  L8_2 = A0_2._quest_data
  L8_2 = L8_2.Status
  L9_2 = CS
  L9_2 = L9_2.LEOGBBOPKKO
  L9_2 = L9_2.CMOFEAFMGAK
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_reward_point_list_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_item_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ConfigID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_attachment_getted
  L8_2 = A0_2._quest_data
  L8_2 = L8_2.Status
  L9_2 = CS
  L9_2 = L9_2.LEOGBBOPKKO
  L9_2 = L9_2.CMOFEAFMGAK
  L8_2 = L8_2 == L9_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_reward_item_list_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.DataRow
  L2_2 = L2_2.GotoID
  L3_2 = CS
  L3_2 = L3_2.LEOGBBOPKKO
  L3_2 = L3_2.JKFPIINHGPD
  if L1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_btn_get
    L3_2(L4_2)
  else
    L3_2 = CS
    L3_2 = L3_2.LEOGBBOPKKO
    L3_2 = L3_2.KBBBFCIHJPC
    if L1_2 == L3_2 and L2_2 ~= 0 then
      L4_2 = A0_2
      L3_2 = A0_2._on_btn_skip
      L3_2(L4_2)
    end
  end
end
L0_1._on_btn_root = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._get_reward
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_get = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.DataRow
  L1_2 = L1_2.GotoID
  L2_2 = G
  L2_2 = L2_2.GotoManager
  L2_2 = L2_2.Goto
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_btn_skip = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JCCHEMBPEEE
  L3_2 = A0_2._quest_id
  L1_2(L2_2, L3_2)
end
L0_1._get_reward = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mono_in_controls
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.btn_mono_in_controls
    L6_2 = L6_2[L5_2]
    L6_2.ActionEnabled = A1_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.tip_mono_in_controls
    L6_2 = L6_2[L5_2]
    L6_2.IsShowTip = A1_2
  end
end
L0_1._setup_mono_info = L2_1
return L0_1
