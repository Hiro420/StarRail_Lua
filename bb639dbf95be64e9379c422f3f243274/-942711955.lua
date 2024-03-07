local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DailyMission.Common.HandbookQuestItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookQuestItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
function L2_1(A0_2)
  local L1_2
  A0_2._quest_id = 0
  A0_2._quest_row = nil
  A0_2._quest_data = nil
  L1_2 = {}
  A0_2._reward_items = L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._parent_tab_item
  if L1_2 then
    L1_2 = A0_2._parent_tab_item
    L2_2 = L1_2
    L1_2 = L1_2.is_current_tab_item
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      return
    end
  end
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_track
  L4_2 = A0_2.on_btn_track
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2.on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._selected_callback
    L2_3 = A0_2._selected_handler
    L3_3 = A0_2._quest_id
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._selected_callback = A1_2
  A0_2._selected_handler = A2_2
end
L0_1.register_selected_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_in_control_tip_enable
  L3_2 = A0_2._binder
  L3_2 = L3_2.controls_tip
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_controller_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_in_control_button_enable = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_in_control_button_enable
  L6_2 = false
  L4_2(L5_2, L6_2)
  A0_2._quest_id = A1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.QuestDataExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._quest_id
  L4_2 = L4_2(L5_2)
  A0_2._quest_row = L4_2
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.TryGetQuestData
  L6_2 = A0_2._quest_id
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._quest_data = L4_2
  A0_2._parent_tab_item = A3_2
  L4_2 = A0_2._quest_row
  if L4_2 == nil then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "quest row not found in excel, id:"
    L6_2 = A0_2._quest_id
    L5_2 = L5_2 .. L6_2
    L4_2(L5_2)
    return
  else
    L4_2 = A0_2._quest_data
    if L4_2 == nil then
      L4_2 = G
      L4_2 = L4_2.SuperDebug
      L4_2 = L4_2.LogErrorFormat
      L5_2 = "quest data not found in module, id:"
      L6_2 = A0_2._quest_id
      L5_2 = L5_2 .. L6_2
      L4_2(L5_2)
      return
    end
  end
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = false
  end
  A0_2._show_progress = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_view
  L4_2(L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_in_control_button_enable
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.ID
  A0_2._quest_id = L2_2
  L2_2 = A1_2.DataRow
  A0_2._quest_row = L2_2
  A0_2._quest_data = A1_2
  A0_2._parent_tab_item = nil
  A0_2._show_progress = false
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L0_1.setup_view_by_quest_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._reset_selection
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_base_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_view
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.FinishWayExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._quest_row
  L2_2 = L2_2.FinishWayID
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._quest_row
  L4_2 = L4_2.QuestTitle
  L5_2 = L1_2.ParamInt1
  L6_2 = L1_2.ParamInt2
  L7_2 = L1_2.ParamInt3
  L8_2 = A0_2._quest_data
  L8_2 = L8_2.TotalProgress
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = A0_2._quest_row
  L3_2 = L3_2.ImagePath
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = A0_2._quest_row
    L5_2 = L5_2.ImagePath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_base_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._show_progress
  if L3_2 then
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.Status
    L4_2 = CS
    L4_2 = L4_2.BLHLCHNAJKK
    L4_2 = L4_2.FMLBEGJJHMJ
    L3_2 = L3_2 ~= L4_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_progress_current
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.Progress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_progress_total
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._quest_data
  L3_2 = L3_2.TotalProgress
  L1_2(L2_2, L3_2)
end
L0_1._setup_progress_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._quest_row
  L1_2 = L1_2.RewardID
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableSorted
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  A0_2._reward_items = L2_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateConfigIDList
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._config_id_list = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_reward
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._reward_items
  L2_2(L3_2, L4_2)
end
L0_1._setup_reward_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.DataRow
  L2_2 = L2_2.GotoID
  L2_2 = L2_2 ~= 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_ongoing
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_ongoing
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = CS
    L5_2 = L5_2.BLHLCHNAJKK
    L5_2 = L5_2.BMEAGBEFNFK
    L5_2 = L1_2 == L5_2 and L5_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_track
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.BLHLCHNAJKK
  L5_2 = L5_2.BMEAGBEFNFK
  L5_2 = L1_2 == L5_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_get
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.BLHLCHNAJKK
  L5_2 = L5_2.CDJHHIHBNMN
  L5_2 = L1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_gotten
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.BLHLCHNAJKK
  L5_2 = L5_2.FMLBEGJJHMJ
  L5_2 = L1_2 == L5_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_btn_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L1_2 = L1_2.currentSelectedGameObject
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = L1_2 or L4_2
  if L1_2 then
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_gamepad_input
    L4_2 = L4_2()
  end
  L2_2(L3_2, L4_2)
end
L0_1._reset_selection = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._quest_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.DataRow
  L2_2 = L2_2.GotoID
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.GotoManager
    L2_2 = L2_2.Goto
    L3_2 = L1_2.DataRow
    L3_2 = L3_2.GotoID
    L2_2(L3_2)
  end
end
L0_1.on_btn_track = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L4_2 = 0.3
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.on_btn_get = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = A0_2._quest_id
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.AMFNHGKACLB
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._get_reward = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
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
  ::lbl_21::
  L5_2 = A0_2._reward_items
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L9_2 = nil
  L10_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L3_2
end
L0_1._on_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_controller_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_in_control_input_switch = L2_1
return L0_1
