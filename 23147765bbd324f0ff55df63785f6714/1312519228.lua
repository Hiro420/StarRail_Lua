local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionBuffSelectPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityTelevisionModule
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2.select_buff_id = L1_2
  A0_2.cur_buff_count = 0
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.data = A1_2
  L2_2 = A0_2.data
  L2_2 = L2_2.LevelRow
  A0_2.level_row = L2_2
  L2_2 = A0_2.data
  L2_2 = L2_2.Row
  A0_2.stage_row = L2_2
  L2_2 = A0_2.data
  L2_2 = L2_2.ID
  L3_2 = L1_1.DeathLevelID
  L2_2 = L2_2 == L3_2
  A0_2.is_death_level = L2_2
  L2_2 = A0_2.level_row
  L2_2 = L2_2.BuffCount
  A0_2.max_buff_count = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_select_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.is_death_level
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_buff_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.is_death_level
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.is_death_level
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_death_level
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_common_level
    L2_2(L3_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = A0_2.level_row
  L3_2 = L3_2.MazeBuffID
  L2_2.BuffID = L3_2
  L3_2 = A0_2.data
  L3_2 = L3_2.MaxBuffLayer
  L2_2.BuffCount = L3_2
  L2_2.Interactable = false
  L2_2.ShowCount = false
  L3_2 = A0_2.level_row
  L2_2.LevelRow = L3_2
  L3_2 = A0_2._on_click_detail
  L2_2.DetailCallback = L3_2
  L2_2.DetailCallbackListener = A0_2
  L1_2[1] = L2_2
  L2_2 = #L1_2
  A0_2.count = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.update_prefab
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L5_2 = nil
  L6_2 = nil
  L7_2 = NavigationType
  L7_2 = L7_2.Vertical
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_common_level = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.select_buff_id
  return L1_2
end
L0_1.get_buff_list = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.cur_buff_count
  return L1_2
end
L0_1.get_buff_count = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.max_buff_count
  return L1_2
end
L0_1.get_buff_limit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = A0_2.level_row
  L2_2 = L2_2.AvailableBuffList
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = {}
    L10_2 = L2_2[L6_2]
    L9_2.BuffID = L10_2
    L10_2 = L1_1
    L11_2 = L10_2
    L10_2 = L10_2.GetBuffMaxLayer
    L12_2 = L2_2[L6_2]
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.BuffCount = L10_2
    L9_2.Interactable = true
    L9_2.ShowCount = true
    L10_2 = L1_1
    L11_2 = L10_2
    L10_2 = L10_2.GetBuffRelatedTelevisionData
    L12_2 = L2_2[L6_2]
    L10_2 = L10_2(L11_2, L12_2)
    L10_2 = L10_2.LevelRow
    L9_2.LevelRow = L10_2
    L10_2 = A0_2._on_click_buff
    L9_2.ClickCallback = L10_2
    L9_2.CallbackListener = A0_2
    L10_2 = A0_2._on_click_detail
    L9_2.DetailCallback = L10_2
    L9_2.DetailCallbackListener = A0_2
    L7_2(L8_2, L9_2)
  end
  L3_2 = #L1_2
  A0_2.count = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.update_prefab
  L5_2 = 1
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_list_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L6_2 = nil
  L7_2 = nil
  L8_2 = NavigationType
  L8_2 = L8_2.Vertical
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2.refresh_buff_count
  L3_2(L4_2)
end
L0_1.setup_death_level = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  L3_2 = A0_2.count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.buff_list_panel
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.refresh_desc
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.refresh_desc = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  L3_2 = A0_2.count
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.buff_list_panel
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_in_control_option_enabled
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.set_in_control_option_enabled = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_buff_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.cur_buff_count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_max_buff_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.max_buff_count
  L1_2(L2_2, L3_2)
end
L0_1.refresh_buff_count = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.select_buff_id
  L3_2 = L3_2[A1_2]
  if L3_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2.deselect_buff
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.try_select_buff
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.refresh_buff_count
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.invoke_click_callback
  L3_2(L4_2)
end
L0_1._on_click_buff = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._detail_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._detail_callback
    L2_2 = A0_2._detail_callback_listener
    L1_2(L2_2)
  end
end
L0_1._on_click_detail = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.cur_buff_count
  L3_2 = L3_2 - 1
  A0_2.cur_buff_count = L3_2
  L4_2 = A2_2
  L3_2 = A2_2.set_checked
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2.select_buff_id
  L3_2[A1_2] = nil
  L4_2 = A0_2
  L3_2 = A0_2.refresh_buff_count
  L3_2(L4_2)
end
L0_1.deselect_buff = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.cur_buff_count
  L4_2 = A0_2.max_buff_count
  if L3_2 < L4_2 then
    L3_2 = A0_2.cur_buff_count
    L3_2 = L3_2 + 1
    A0_2.cur_buff_count = L3_2
    L4_2 = A2_2
    L3_2 = A2_2.set_checked
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.select_buff_id
    L3_2[A1_2] = true
  else
  end
end
L0_1.try_select_buff = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_callback_listener = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._detail_callback = A1_2
  A0_2._detail_callback_listener = A2_2
end
L0_1.register_detail_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._click_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._click_callback
    L2_2 = A0_2._click_callback_listener
    L1_2(L2_2)
  end
end
L0_1.invoke_click_callback = L2_1
return L0_1
