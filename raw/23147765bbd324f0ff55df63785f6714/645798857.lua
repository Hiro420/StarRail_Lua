local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookGuideRogueItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HandbookModule
L2_1 = G
L2_1 = L2_1.StaminaModule
L2_1 = L2_1.Instance
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.InventoryModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.RogueModule
L5_1 = {}
L5_1.enough = "#121212"
L5_1.lack = "#C84A32"
L6_1 = {}
L6_1.normal = "#FFFFFF"
L6_1.special = "#A98E54"
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.Client
L7_1 = L7_1.RogueUtils
function L8_1(A0_2)
  local L1_2
  A0_2._id = 0
  A0_2._guide_row = nil
  A0_2._farm_row = nil
  A0_2._farm_level = 0
  A0_2._mapping_info_row = nil
end
L0_1.ctor = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_jump
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_track
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_reward
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.StaminaChanged
  L4_2 = L0_1._on_stamina_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = L0_1._on_stamina_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_in_control
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._enable_in_control
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._enable_in_control
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._reward_items = nil
  A0_2._mapping_info_row = nil
  A0_2._guide_row = nil
  A0_2._farm_row = nil
end
L0_1._on_dispose = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.EventSystem
    L2_2 = L2_2.current
    L2_2 = L2_2.currentSelectedGameObject
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 == L3_2
    L4_2 = A0_2
    L3_2 = A0_2._enable_in_control
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_root
    L4_2 = L3_2
    L3_2 = L3_2.ClearAnimationState
    L3_2(L4_2)
  end
end
L0_1._on_owner_active_change = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L5_2 = A0_2._reward_items
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view_by_reward_item
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_reward_item_change = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_jump
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._can_jump
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_track
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._can_jump
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_not_today
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_open
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_layout
  L1_2(L2_2)
end
L0_1._setup_btn_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.HandbookUtils
  L1_2 = L1_2.RecordGuideItemSeen
  L2_2 = A0_2._guide_row
  L2_2 = L2_2.ID
  L1_2(L2_2)
  L1_2 = A0_2._can_jump
  if L1_2 then
    L1_2 = "GameplayGuideData_TeleportBtn_"
    if L1_2 then
      goto lbl_16
    end
  end
  L1_2 = "GameplayGuideData_AreaProgress_"
  ::lbl_16::
  L2_2 = A0_2._guide_row
  L2_2 = L2_2.ID
  L1_2 = L1_2 .. L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportUIButtonClick
  L3_2 = A0_2._owner
  L3_2 = L3_2.__name
  L4_2 = "HandbookGuideTabItem"
  L5_2 = L1_2
  L6_2 = A0_2._owner
  L6_2 = L6_2.guid
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_btn_go_rogue
  L2_2(L3_2)
end
L0_1._on_btn_go = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._guide_row
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_rogue_cost
  L1_2(L2_2)
end
L0_1._on_stamina_changed = L8_1
function L8_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._enable_in_control = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
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
L0_1._on_left_stick_button_click = L8_1
function L8_1(A0_2)
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
L0_1._on_in_control_input_switch = L8_1
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._guide_row = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GuideType
  L3_2 = L3_2.Rogue
  A0_2._guide_type = L3_2
  L3_2 = tonumber
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GameplayGuideConstValueExcelTable
  L4_2 = L4_2.GetData
  L5_2 = "HandBookRogueMapEntrance"
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.Value
  L3_2 = L3_2(L4_2)
  A0_2._rogue_map_entrance_id = L3_2
  L3_2 = tonumber
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GameplayGuideConstValueExcelTable
  L4_2 = L4_2.GetData
  L5_2 = "HandBookRogueMappingInfo"
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.Value
  L3_2 = L3_2(L4_2)
  A0_2._mapping_info_id = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_open_rule
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_img_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  A0_2._is_open = true
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TransferModule
  L4_2 = L3_2
  L3_2 = L3_2.CanTransfer
  L5_2 = A0_2._mapping_info_id
  L6_2 = A0_2._rogue_map_entrance_id
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._can_jump = L3_2
  if A1_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2._setup_rouge_title
    L5_2 = A1_2.Name
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_rouge_icon
    L5_2 = A1_2.IconPath
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_rogue_reward
    L5_2 = A2_2.RogueAreaRow
    L5_2 = L5_2.ChestDisplayItemList
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_rogue_cost
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_rogue_btn
    L3_2(L4_2)
  end
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "HandbookGuideSubTab"
  L6_2 = A0_2._guide_row
  L6_2 = L6_2.ID
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.go_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view_rogue = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_rouge_title = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetColor
  L4_2 = L6_1.normal
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon_with_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._setup_rouge_icon = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.get_sorted_items_by_item_config_list
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._reward_items = L2_2
  L2_2 = {}
  A0_2._config_id_list = L2_2
  L2_2 = ipairs
  L3_2 = A0_2._reward_items
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._config_id_list
    L9_2 = L6_2.ItemID
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_reward
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._reward_items
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_reward
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1._setup_rogue_reward = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cost_item_2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cost_item_2_splash
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L7_1.GetRogueOpenChestCostStamina
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_cost
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.get_cur_stamina
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2 <= L2_2
  if L2_2 then
    L3_2 = L5_1.enough
    if L3_2 then
      goto lbl_31
    end
  end
  L3_2 = L5_1.lack
  ::lbl_31::
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_cost
  L5_2 = G
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColor
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L4_2.color = L5_2
  L4_2 = L7_1.GetRogueOpenChestCostKey
  L4_2 = L4_2()
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_cost_2
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L3_1
  L6_2 = L5_2
  L5_2 = L5_2.GetItemCountByConfigID
  L7_2 = G
  L7_2 = L7_2.UtilEngineWrap
  L7_2 = L7_2.ConvCsEnumToNum
  L8_2 = CS
  L8_2 = L8_2.HGGDPEHMDBH
  L8_2 = L8_2.GFBJIDIGEEA
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = L4_2 <= L5_2
  if L5_2 then
    L6_2 = L5_1.enough
    if L6_2 then
      goto lbl_66
      L3_2 = L6_2 or L3_2
    end
  end
  L3_2 = L5_1.lack
  ::lbl_66::
  L6_2 = A0_2._binder
  L6_2 = L6_2.txt_cost_2
  L7_2 = G
  L7_2 = L7_2.UIColorUtils
  L7_2 = L7_2.GetColor
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L6_2.color = L7_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.ItemExcelTable
  L6_2 = L6_2.GetData
  L7_2 = G
  L7_2 = L7_2.UtilEngineWrap
  L7_2 = L7_2.ConvCsEnumToNum
  L8_2 = CS
  L8_2 = L8_2.HGGDPEHMDBH
  L8_2 = L8_2.GFBJIDIGEEA
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  if L6_2 ~= nil then
    L8_2 = A0_2
    L7_2 = A0_2._async_load_sprite_to
    L9_2 = A0_2._binder
    L9_2 = L9_2.img_cost_2
    L10_2 = L6_2.ItemCurrencyIconPath
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_cost_layout
  L7_2(L8_2)
end
L0_1._setup_rogue_cost = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_view
  L1_2(L2_2)
end
L0_1._setup_rogue_btn = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.IsRogueAreaProgressUnlock
  L2_2 = A0_2._guide_row
  L2_2 = L2_2.RelatedID
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_Handbook_MazeTips"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GotoToGuideRogue
  L3_2 = A0_2._rogue_map_entrance_id
  L4_2 = A0_2._mapping_info_id
  L6_2 = A0_2
  L5_2 = A0_2._get_target_rogue_area_param
  L5_2, L6_2 = L5_2(L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_btn_go_rogue = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._guide_row
    L2_2 = L2_2.RelatedID
    L3_2 = L1_2.ProgressInfo
    L4_2 = L3_2.ProgressAreaDic
    L5_2 = L4_2
    L4_2 = L4_2.ContainsKey
    L6_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L4_2 = L3_2.ProgressAreaDic
      L4_2 = L4_2[L2_2]
      L5_2 = 0
      L6_2 = L4_2.Count
      L6_2 = L6_2 - 1
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = L4_2[L8_2]
        L10_2 = L7_1.IsRogueAreaUnlock
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if L10_2 then
          L10_2 = true
          L11_2 = true
          L12_2 = L9_2.AreaID
          return L10_2, L11_2, L12_2
        end
      end
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._get_target_rogue_area_param = L8_1
return L0_1
