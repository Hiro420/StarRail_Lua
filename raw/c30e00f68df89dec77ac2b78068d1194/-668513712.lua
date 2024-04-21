local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.LightCone.Upgrade.LightConePromotionResultDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConePromotionResultDialog"
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
  L3_2 = L3_2.LightConePromotionResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._before_data = nil
  A0_2._equip_data = nil
  A0_2._callback = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._equip_data = A1_2
  A0_2._before_data = A2_2
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group
  L1_2.alpha = 1
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_max_before
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._before_data
  L3_2 = L3_2.MaxLevelBefore
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_max_after
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._equip_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentMaxLv
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_current_before
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level_current_after
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Equipment_Promotion_MaxLevel"
  L4_2 = A0_2._equip_data
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentMaxLv
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.promotion_stars_before_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._before_data
  L3_2 = L3_2.PropomtionBefore
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.MaxPromotion
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.promotion_stars_after_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._equip_data
  L3_2 = L3_2.Promotion
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.MaxPromotion
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AvatarModule
  L1_2 = L1_2.FormatDisplayDataByType
  L2_2 = L1_1.MaxHP
  L3_2 = A0_2._before_data
  L3_2 = L3_2.HpMaxBefore
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AvatarModule
  L2_2 = L2_2.FormatDisplayDataByType
  L3_2 = L1_1.MaxHP
  L4_2 = A0_2._equip_data
  L5_2 = L4_2
  L4_2 = L4_2.GetHP
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_hp_pre_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_hp_cur_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AvatarModule
  L3_2 = L3_2.FormatDisplayDataByType
  L4_2 = L1_1.Attack
  L5_2 = A0_2._before_data
  L5_2 = L5_2.AttackBefore
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AvatarModule
  L4_2 = L4_2.FormatDisplayDataByType
  L5_2 = L1_1.Attack
  L6_2 = A0_2._equip_data
  L7_2 = L6_2
  L6_2 = L6_2.GetAttack
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_atk_pre_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_atk_cur_num
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.AvatarModule
  L5_2 = L5_2.FormatDisplayDataByType
  L6_2 = L1_1.Defence
  L7_2 = A0_2._before_data
  L7_2 = L7_2.DefenseBefore
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.AvatarModule
  L6_2 = L6_2.FormatDisplayDataByType
  L7_2 = L1_1.Defence
  L8_2 = A0_2._equip_data
  L9_2 = L8_2
  L8_2 = L8_2.GetDefence
  L8_2, L9_2 = L8_2(L9_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.txt_def_pre_num
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.txt_def_cur_num
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._exit_timer
  L8_2 = L7_2
  L7_2 = L7_2.reset
  L7_2(L8_2)
  L7_2 = A0_2._exit_timer
  L8_2 = L7_2
  L7_2 = L7_2.start
  L7_2(L8_2)
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
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L3_1
return L0_1
