local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.FoodBuffRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FoodBuffRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsType
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.BattleGamePhase
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._is_in_battle = L2_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_toggle_quick_consumable
  L4_2 = A0_2._on_quick_btn_toggle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.RewardItemIconLite
  L4_2 = G
  L4_2 = L4_2.RewardItemIconLiteBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_item_icon_lite_panel = L1_2
  L1_2 = A0_2.reward_item_icon_lite_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward_item_icon_lite
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_in_control_status
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.refresh_in_control_status
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.refresh_in_control_status
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_in_battle
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_battle_view
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_buff_data
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.keymap_tip_toggle
  L2_2.IsShowTipBySelected = A1_2
end
L0_1.refresh_in_control_status = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2.fake_buff_flag = A2_2
  A0_2.buff_data = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MazeBuffExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2.BuffID
  L5_2 = A1_2.Level
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.maze_buff_row = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_buff_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.maze_buff_row
  if L1_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = A0_2.maze_buff_row
  L1_2 = L1_2.MazeBuffPool
  L2_2 = G
  L2_2 = L2_2.BuffUtils
  L2_2 = L2_2.BuffPoolType
  L2_2 = L2_2.ItemAtk
  if L1_2 == L2_2 then
    L1_2 = FoodConsumeType
    L1_2 = L1_2.Attack
    return L1_2
  else
    L1_2 = A0_2.maze_buff_row
    L1_2 = L1_2.MazeBuffPool
    L2_2 = G
    L2_2 = L2_2.BuffUtils
    L2_2 = L2_2.BuffPoolType
    L2_2 = L2_2.ItemDef
    if L1_2 == L2_2 then
      L1_2 = FoodConsumeType
      L1_2 = L1_2.Defend
      return L1_2
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1.get_consume_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.can_be_quick_consumed_by_item_id
  L2_2 = A0_2.item_data
  L2_2 = L2_2.ConfigID
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_QuickConsumable_NotAvailible"
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_consume_type
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.toggle_status
  L2_2 = not L2_2
  A0_2.toggle_status = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_quick_consumable_status
  L4_2 = A0_2.toggle_status
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.toggle_call_back
  L3_2 = A0_2.toggle_listener
  L4_2 = L1_2
  L5_2 = A0_2.toggle_status
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_quick_btn_toggle = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2.toggle_call_back = A1_2
  A0_2.toggle_listener = A2_2
end
L0_1.set_toggle_call_back = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.buff_data = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazeBuffExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.ID
  L4_2 = A1_2.Level
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.maze_buff_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_battle_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_buff_name
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_buff_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.maze_buff_row
    L3_2 = L3_2.BuffName
    L1_2(L2_2, L3_2)
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ItemData
  L2_2 = A0_2.maze_buff_row
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  A0_2.item_data = L1_2
  if L1_2 then
    L2_2 = A0_2.reward_item_icon_lite_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2.ConfigID
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.reward_item_icon_lite_panel
    L3_2 = L2_2
    L2_2 = L2_2.not_show_default_click_dialog
    L2_2(L3_2)
    L2_2 = A0_2.reward_item_icon_lite_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_consumable_icon
    L2_2(L3_2)
  else
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormat
    L3_2 = "Can't find item by buffdata id:%d"
    L4_2 = A0_2.maze_buff_row
    L4_2 = L4_2.ID
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._is_in_battle
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_buff_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2.maze_buff_row
    L4_2 = L4_2.BuffDesc
    L5_2 = G
    L5_2 = L5_2.BattleUIUtils
    L5_2 = L5_2.get_maze_buff_params
    L6_2 = A0_2.buff_data
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_buff_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2.maze_buff_row
    L4_2 = L4_2.BuffDesc
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillParams
    L6_2 = A0_2.maze_buff_row
    L6_2 = L6_2.ParamList
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = A0_2
    L2_2 = A0_2.refresh_quick_consumable
    L2_2(L3_2)
  end
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.InventoryUtils
  L1_2 = L1_2.enable_quick_use_func
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_toggle
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_left_num_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_quick_consumable_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_consume_type
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 ~= 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_quick_consumable_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.IsQuickConsumableTurnSwitchOpen
  L6_2 = A0_2
  L5_2 = A0_2.get_consume_type
  L5_2, L6_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2.toggle_status = L3_2
  L5_2 = A0_2
  L4_2 = A0_2.refresh_quick_consumable_status
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.refresh_quick_consumable = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_num_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_toggle_quick_consumable
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2.item_data
    if L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.InventoryModule
      L3_2 = L2_2
      L2_2 = L2_2.GetItemCountByConfigID
      L4_2 = A0_2.maze_buff_row
      L4_2 = L4_2.ID
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= 0 then
        L3_2 = A0_2.fake_buff_flag
        if L3_2 ~= true or L2_2 ~= 1 then
          goto lbl_44
        end
      end
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_remain_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_QuickConsumable_NextBattleAvailible"
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_remain_times
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      goto lbl_59
      ::lbl_44::
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_remain_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = "UIText_LeftNumber"
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_remain_times
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetText
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_remain_times
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
    end
  end
  ::lbl_59::
end
L0_1.refresh_quick_consumable_status = L2_1
return L0_1
