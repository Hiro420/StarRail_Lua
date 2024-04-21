local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Component.RedDotNew"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.RedDotNewBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousBattleExtendItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousSelectLevelExtendPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousSelectLevelExtendPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Rogue_Aeon_Level_Tip_1"
L2_1 = "UIText_RogueNous_LevelChoose_Extra_Change_Unlock_Tip_1"
L3_1 = "UIText_RogueDLC_ProgressChoose_StopDesc"
L4_1 = 0
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueClientExcelTable
L5_1 = L5_1.GetData
L6_1 = "RogueNous_DifficultyLevel_Show_Icon1"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.IntValue
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.ConstValueClientExcelTable
L6_1 = L6_1.GetData
L7_1 = "RogueNous_DifficultyLevel_Show_Icon2"
L6_1 = L6_1(L7_1)
L6_1 = L6_1.Value
L6_1 = L6_1.IntValue
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._has_inited = false
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.get_max_attribute_level
  L3_2 = L3_2()
  A0_2._max_attribute_level = L3_2
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.get_max_additional_level
  L3_2 = L3_2()
  A0_2._max_additional_level = L3_2
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.get_max_unlock_extend_difficulty_ids
  L3_2, L4_2 = L3_2()
  A0_2._max_unlocked_additional_id = L4_2
  A0_2._max_unlocked_attribute_id = L3_2
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.get_level_from_difficulty_id
  L4_2 = A0_2._max_unlocked_attribute_id
  L3_2 = L3_2(L4_2)
  A0_2._max_unlocked_attribute_level = L3_2
  L3_2 = G
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.get_level_from_difficulty_id
  L4_2 = A0_2._max_unlocked_additional_id
  L3_2 = L3_2(L4_2)
  A0_2._max_unlocked_additional_level = L3_2
  L3_2 = {}
  A0_2._selected_attribute_level_rows = L3_2
  L3_2 = {}
  A0_2._selected_additional_level_rows = L3_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_attribute_left
  L4_2 = A0_2._on_minus_attribute
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_attribute_right
  L4_2 = A0_2._on_plus_attribute
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_additional_left
  L4_2 = A0_2._on_minus_additional
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_additional_right
  L4_2 = A0_2._on_plus_additional
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_attribute
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_attribute_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_additional
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_additional_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_move_attribute
  L1_2.ActionEnabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_move_additional
  L1_2.ActionEnabled = false
  A0_2._has_attribute_focus = false
  A0_2._has_additional_focus = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_attribute
  function L2_2()
    local L0_3, L1_3
    A0_2._has_attribute_focus = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_move_attribute
    L0_3.ActionEnabled = true
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._check_attribute_gamepad_hint_panel
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_attribute
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      A0_2._has_attribute_focus = false
      L0_3 = A0_2._binder
      L0_3 = L0_3.mono_move_attribute
      L0_3.ActionEnabled = false
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._check_attribute_gamepad_hint_panel
      L0_3(L1_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_additional
  function L2_2()
    local L0_3, L1_3
    A0_2._has_additional_focus = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_move_additional
    L0_3.ActionEnabled = true
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._check_additional_gamepad_hint_panel
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_additional
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      A0_2._has_additional_focus = false
      L0_3 = A0_2._binder
      L0_3 = L0_3.mono_move_additional
      L0_3.ActionEnabled = false
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._check_additional_gamepad_hint_panel
      L0_3(L1_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = {}
  A0_2._selectable_btn_list = L1_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._selectable_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_attribute
  L1_2(L2_2, L3_2)
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = A0_2._selectable_btn_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_additional
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._selectable_btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._selectable_btn_list
  L1_2 = L1_2[1]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L4_2 = A0_2
  L3_2 = A0_2._on_in_control_input_switch
  L3_2(L4_2)
  L3_2 = A0_2._has_inited
  if L3_2 then
    return
  end
  A0_2._has_unfinished_record = A1_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  A0_2._cur_selected_comp_ids = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._get_default_select_levels
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
  A0_2._has_inited = true
end
L0_1.setup_view = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._on_in_control_input_switch
  L3_2(L4_2)
  A0_2._cur_selected_attribute_level = A1_2
  A0_2._cur_selected_additional_level = A2_2
  A0_2._is_unlocked = true
  A0_2._has_unfinished_record = true
  L4_2 = A0_2
  L3_2 = A0_2._refresh_level_info_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_attribute_panel_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_additional_panel_view
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_attribute_left
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_attribute_right
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_additional_left
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_additional_right
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1.setup_view_simple = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_attribute
  L2_2 = L1_2
  L1_2 = L1_2.SetAnchoredPositionWithAnim
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L3_2 = L3_2.zero
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_additional
  L2_2 = L1_2
  L1_2 = L1_2.SetAnchoredPositionWithAnim
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Vector2
  L3_2 = L3_2.zero
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.list_attribute
    L1_3 = L0_3
    L0_3 = L0_3.SetListItemCount
    L2_3 = A0_2._selected_attribute_level_rows
    L2_3 = #L2_3
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.list_attribute
    L1_3 = L0_3
    L0_3 = L0_3.RefreshAllShownItem
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.list_additional
    L1_3 = L0_3
    L0_3 = L0_3.SetListItemCount
    L2_3 = A0_2._selected_additional_level_rows
    L2_3 = #L2_3
    L3_3 = true
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.list_additional
    L1_3 = L0_3
    L0_3 = L0_3.RefreshAllShownItem
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1.reset_scroll = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._is_unlocked
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = {}
  do return L1_2 end
  ::lbl_10::
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._selected_attribute_level_rows
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2.DifficultyID
    L7_2(L8_2, L9_2)
  end
  L2_2 = ipairs
  L3_2 = A0_2._selected_additional_level_rows
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2.DifficultyID
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1.get_selected_difficulty_comp_ids = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._has_inited
  if not L1_2 then
    return
  end
  L1_2 = 0
  L2_2 = ipairs
  L3_2 = A0_2._selected_attribute_level_rows
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.DifficultyID
    if L1_2 < L7_2 then
      L1_2 = L6_2.DifficultyID
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2.RogueNousCacheAttributeDifficultyID = L1_2
  L2_2 = 0
  L3_2 = ipairs
  L4_2 = A0_2._selected_additional_level_rows
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.DifficultyID
    if L2_2 < L8_2 then
      L2_2 = L7_2.DifficultyID
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2.RogueNousCacheAdditionalDifficultyID = L2_2
end
L0_1.save_cache_selection = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_inited
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = A0_2._max_unlocked_attribute_id
  L1_2.RogueNousMaxSeenAttributeDifficultyID = L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = A0_2._max_unlocked_additional_id
  L1_2.RogueNousMaxSeenAdditionalDifficultyID = L2_2
end
L0_1.mark_max_seen_level = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_unlocked
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
  end
  return L1_2
end
L0_1.is_selectable = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2[1]
  if L2_2 == nil then
    return
  end
  L2_2 = nil
  L3_2 = ipairs
  L4_2 = A0_2._selectable_btn_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L2_2 = L7_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L2_2.mode = L8_2
    L8_2 = A1_2[1]
    L2_2.selectOnRight = L8_2
    L7_2.navigation = L2_2
  end
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L2_2 = L7_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L2_2.mode = L8_2
    L9_2 = A0_2
    L8_2 = A0_2.is_selectable
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = A0_2._selectable_btn_list
      L8_2 = L8_2[1]
      L2_2.selectOnLeft = L8_2
    else
      L2_2.selectOnLeft = nil
    end
    L7_2.navigation = L2_2
  end
end
L0_1.setup_horizontal_navi = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_unfinished_record
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_default_select_levels_by_server_cache
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._get_default_select_levels_by_client_cache
    L1_2(L2_2)
  end
end
L0_1._get_default_select_levels = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._cur_selected_attribute_level = 0
  A0_2._cur_selected_additional_level = 0
  L1_2 = ipairs
  L2_2 = A0_2._cur_selected_comp_ids
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.RogueNousDifficultyLevelExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2.DifficultyType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.RogueNousDifficultyType
    L8_2 = L8_2.AttributeDifficulty
    if L7_2 == L8_2 then
      L7_2 = G
      L7_2 = L7_2.RogueNousUtils
      L7_2 = L7_2.get_level_from_difficulty_id
      L8_2 = L5_2
      L7_2 = L7_2(L8_2)
      A0_2._cur_selected_attribute_level = L7_2
    else
      L7_2 = L6_2.DifficultyType
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.RogueNousDifficultyType
      L8_2 = L8_2.AdditionalDifficulty
      if L7_2 == L8_2 then
        L7_2 = G
        L7_2 = L7_2.RogueNousUtils
        L7_2 = L7_2.get_level_from_difficulty_id
        L8_2 = L5_2
        L7_2 = L7_2(L8_2)
        A0_2._cur_selected_additional_level = L7_2
      end
    end
  end
end
L0_1._get_default_select_levels_by_server_cache = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueNousMaxSeenAttributeDifficultyID
  L2_2 = A0_2._max_unlocked_attribute_id
  if L1_2 < L2_2 then
    L1_2 = A0_2._max_unlocked_attribute_level
    A0_2._cur_selected_attribute_level = L1_2
  else
    L1_2 = G
    L1_2 = L1_2.RogueNousUtils
    L1_2 = L1_2.get_level_from_difficulty_id
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2 = L2_2.RogueNousCacheAttributeDifficultyID
    L1_2 = L1_2(L2_2)
    A0_2._cur_selected_attribute_level = L1_2
    L1_2 = math
    L1_2 = L1_2.min
    L2_2 = A0_2._cur_selected_attribute_level
    L3_2 = A0_2._max_unlocked_attribute_level
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._cur_selected_attribute_level = L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueNousMaxSeenAdditionalDifficultyID
  L2_2 = A0_2._max_unlocked_additional_id
  if L1_2 < L2_2 then
    L1_2 = A0_2._max_unlocked_additional_level
    A0_2._cur_selected_additional_level = L1_2
  else
    L1_2 = G
    L1_2 = L1_2.RogueNousUtils
    L1_2 = L1_2.get_level_from_difficulty_id
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2 = L2_2.RogueNousCacheAdditionalDifficultyID
    L1_2 = L1_2(L2_2)
    A0_2._cur_selected_additional_level = L1_2
    L1_2 = math
    L1_2 = L1_2.min
    L2_2 = A0_2._cur_selected_additional_level
    L3_2 = A0_2._max_unlocked_additional_level
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._cur_selected_additional_level = L1_2
  end
end
L0_1._get_default_select_levels_by_client_cache = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._max_unlocked_additional_level
  L1_2 = L1_2 ~= 0
  A0_2._is_unlocked = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlocked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_unlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_attribute_panel_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_additional_panel_view
  L1_2(L2_2)
end
L0_1._refresh_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_selected_attribute_level
  L2_2 = A0_2._cur_selected_additional_level
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hard_level_1
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L4_1
  L4_2 = L1_2 > L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hard_level_2
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L5_1
  L4_2 = L1_2 > L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hard_level_3
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L6_1
  L4_2 = L1_2 > L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_level
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_level_info_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_unlocked
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_attribute_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_selected_attribute_level
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_attribute_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_selected_attribute_level
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_attribute_left
  L2_2 = A0_2._has_unfinished_record
  L1_2.IsInFakeDisableState = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_attribute_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_selected_attribute_level
  L4_2 = A0_2._max_attribute_level
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_attribute_right
  L2_2 = A0_2._cur_selected_attribute_level
  L3_2 = A0_2._max_unlocked_attribute_level
  L2_2 = L2_2 == L3_2 or L2_2
  L1_2.IsInFakeDisableState = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_attribute_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L4_2 = A0_2._cur_selected_attribute_level
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.create_attribute_difficulty_data
  L2_2 = A0_2._cur_selected_attribute_level
  L1_2 = L1_2(L2_2)
  A0_2._selected_attribute_level_rows = L1_2
  L1_2 = A0_2._has_inited
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.UI
    L1_2 = L1_2.LayoutRebuilder
    L1_2 = L1_2.ForceRebuildLayoutImmediate
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_attribute
    L2_2 = L2_2.transform
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_attribute
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._selected_attribute_level_rows
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_attribute
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_attribute_gamepad_hint_panel
  L1_2(L2_2)
  L1_2 = A0_2._has_unfinished_record
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueNousMaxSeenAttributeDifficultyID
  L2_2 = A0_2._max_unlocked_attribute_id
  if L1_2 < L2_2 then
    L1_2 = A0_2._panel_attribute_reddot
    if L1_2 == nil then
      L2_2 = A0_2
      L1_2 = A0_2.create_panel
      L3_2 = G
      L3_2 = L3_2.RedDotNew
      L4_2 = G
      L4_2 = L4_2.RedDotNewBinder
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      A0_2._panel_attribute_reddot = L1_2
      L1_2 = A0_2._panel_attribute_reddot
      L2_2 = L1_2
      L1_2 = L1_2.sync_loadto
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_attribute_reddot
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._panel_attribute_reddot
    L2_2 = L1_2
    L1_2 = L1_2.refresh
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._panel_attribute_reddot
    if L1_2 ~= nil then
      L1_2 = A0_2._panel_attribute_reddot
      L2_2 = L1_2
      L1_2 = L1_2.refresh
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._refresh_attribute_panel_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_unlocked
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_additional_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_selected_additional_level
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_additional_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_selected_additional_level
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_additional_left
  L2_2 = A0_2._has_unfinished_record
  L1_2.IsInFakeDisableState = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_additional_right
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_selected_additional_level
  L4_2 = A0_2._max_additional_level
  L3_2 = L3_2 < L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_additional_right
  L2_2 = A0_2._cur_selected_additional_level
  L3_2 = A0_2._max_unlocked_additional_level
  L2_2 = L2_2 == L3_2 or L2_2
  L1_2.IsInFakeDisableState = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_additional_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L4_2 = A0_2._cur_selected_additional_level
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.create_additional_difficulty_data
  L2_2 = A0_2._cur_selected_additional_level
  L1_2 = L1_2(L2_2)
  A0_2._selected_additional_level_rows = L1_2
  L1_2 = A0_2._has_inited
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.UI
    L1_2 = L1_2.LayoutRebuilder
    L1_2 = L1_2.ForceRebuildLayoutImmediate
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_additional
    L2_2 = L2_2.transform
    L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_additional
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._selected_additional_level_rows
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_additional
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._check_additional_gamepad_hint_panel
  L1_2(L2_2)
  L1_2 = A0_2._has_unfinished_record
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueNousMaxSeenAdditionalDifficultyID
  L2_2 = A0_2._max_unlocked_additional_id
  if L1_2 < L2_2 then
    L1_2 = A0_2._panel_additional_reddot
    if L1_2 == nil then
      L2_2 = A0_2
      L1_2 = A0_2.create_panel
      L3_2 = G
      L3_2 = L3_2.RedDotNew
      L4_2 = G
      L4_2 = L4_2.RedDotNewBinder
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      A0_2._panel_additional_reddot = L1_2
      L1_2 = A0_2._panel_additional_reddot
      L2_2 = L1_2
      L1_2 = L1_2.sync_loadto
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_additional_reddot
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._panel_additional_reddot
    L2_2 = L1_2
    L1_2 = L1_2.refresh
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._panel_additional_reddot
    if L1_2 ~= nil then
      L1_2 = A0_2._panel_additional_reddot
      L2_2 = L1_2
      L1_2 = L1_2.refresh
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._refresh_additional_panel_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._check_unfinished_record
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._cur_selected_attribute_level
  L1_2 = L1_2 - 1
  A0_2._cur_selected_attribute_level = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_level
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._cur_selected_attribute_level
  L4_2 = A0_2._cur_selected_additional_level
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = A0_2._max_unlocked_attribute_id
  L1_2.RogueNousMaxSeenAttributeDifficultyID = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_attribute_panel_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level_info_view
  L1_2(L2_2)
end
L0_1._on_minus_attribute = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._check_unfinished_record
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_attribute_right
  L1_2 = L1_2.IsInFakeDisableState
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._cur_selected_attribute_level
  L1_2 = L1_2 + 1
  A0_2._cur_selected_attribute_level = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_level
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._cur_selected_attribute_level
  L4_2 = A0_2._cur_selected_additional_level
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_attribute_panel_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level_info_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueNousSelectLevelDialogAddAttribute
  L1_2(L2_2)
end
L0_1._on_plus_attribute = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._check_unfinished_record
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._cur_selected_additional_level
  L1_2 = L1_2 - 1
  A0_2._cur_selected_additional_level = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_level
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._cur_selected_attribute_level
  L4_2 = A0_2._cur_selected_additional_level
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = A0_2._max_unlocked_additional_id
  L1_2.RogueNousMaxSeenAdditionalDifficultyID = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_additional_panel_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level_info_view
  L1_2(L2_2)
end
L0_1._on_minus_additional = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._check_unfinished_record
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_additional_right
  L1_2 = L1_2.IsInFakeDisableState
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._cur_selected_additional_level
  L1_2 = L1_2 + 1
  A0_2._cur_selected_additional_level = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_total_level
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._cur_selected_attribute_level
  L4_2 = A0_2._cur_selected_additional_level
  L3_2 = L3_2 + L4_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_additional_panel_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level_info_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueNousSelectLevelDialogAddAttribute
  L1_2(L2_2)
end
L0_1._on_plus_additional = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L7_2 = L7_2.RogueNousBattleExtendItemPanel
  L8_2 = G
  L8_2 = L8_2.RogueNousBattleExtendItemPanelBinder
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
  L7_2 = A0_2._selected_attribute_level_rows
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L3_2.transform
  L5_2(L6_2)
  return L3_2
end
L0_1._on_attribute_changed = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L7_2 = L7_2.RogueNousBattleExtendItemPanel
  L8_2 = G
  L8_2 = L8_2.RogueNousBattleExtendItemPanelBinder
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
  L7_2 = A0_2._selected_additional_level_rows
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L3_2.transform
  L5_2(L6_2)
  return L3_2
end
L0_1._on_additional_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._has_unfinished_record
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
    L1_2 = true
    return L1_2
  end
  L1_2 = false
  return L1_2
end
L0_1._check_unfinished_record = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_attribute
  L2_2 = L1_2
  L1_2 = L1_2.CanScroll
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._has_attribute_focus
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.is_gamepad_input
      L1_2 = L1_2()
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_attribute_scroll_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._check_attribute_gamepad_hint_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_additional
  L2_2 = L1_2
  L1_2 = L1_2.CanScroll
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._has_additional_focus
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.is_gamepad_input
      L1_2 = L1_2()
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_additional_scroll_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._check_additional_gamepad_hint_panel = L7_1
return L0_1
