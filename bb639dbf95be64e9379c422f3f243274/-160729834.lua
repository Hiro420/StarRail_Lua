local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConeLevelupResultDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeLevelUpResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AvatarPropertyType
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "ResultDialog_ClickProtectTime"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.FloatValue
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LightConeLevelupResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._before_data = nil
  A0_2._equip_data = nil
  A0_2._callback = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._before_data = A1_2
  A0_2._equip_data = A2_2
  A0_2._show_finish_callback_self = A3_2
  A0_2._show_finish_callback = A4_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_callback
  L4_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._exit_timer = L1_2
  A0_2._enable_exit = false
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._enable_exit = true
end
L0_1._on_timer_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group
  L1_2.alpha = 1
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_pre
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._before_data
  L3_2 = L3_2.LevelBefore
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = {}
  L3_2 = L1_1.MaxHP
  L2_2.PropertyType = L3_2
  L3_2 = A0_2._before_data
  L3_2 = L3_2.HpMaxBefore
  L2_2.NumBefore = L3_2
  L3_2 = A0_2._equip_data
  L4_2 = L3_2
  L3_2 = L3_2.GetHP
  L3_2 = L3_2(L4_2)
  L2_2.NumAfter = L3_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = L1_1.Attack
  L3_2.PropertyType = L4_2
  L4_2 = A0_2._before_data
  L4_2 = L4_2.AttackBefore
  L3_2.NumBefore = L4_2
  L4_2 = A0_2._equip_data
  L5_2 = L4_2
  L4_2 = L4_2.GetAttack
  L4_2 = L4_2(L5_2)
  L3_2.NumAfter = L4_2
  L4_2 = table
  L4_2 = L4_2.insert
  L5_2 = L1_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L5_2 = L1_1.Defence
  L4_2.PropertyType = L5_2
  L5_2 = A0_2._before_data
  L5_2 = L5_2.DefenseBefore
  L4_2.NumBefore = L5_2
  L5_2 = A0_2._equip_data
  L6_2 = L5_2
  L5_2 = L5_2.GetDefence
  L5_2 = L5_2(L6_2)
  L4_2.NumAfter = L5_2
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = L1_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.status_panel
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._exit_timer
  L6_2 = L5_2
  L5_2 = L5_2.reset
  L5_2(L6_2)
  L5_2 = A0_2._exit_timer
  L6_2 = L5_2
  L5_2 = L5_2.start
  L5_2(L6_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_btn_bg_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_exit
  if L1_2 == false then
    return
  end
  L1_2 = A0_2._show_finish_callback
  if L1_2 then
    L1_2 = A0_2._show_finish_callback
    L2_2 = A0_2._show_finish_callback_self
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L3_1
return L0_1
