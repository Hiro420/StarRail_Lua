local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarLevelUpResultDialogBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.AvatarPropertyType
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "ResultDialog_ClickProtectTime"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.FloatValue
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "AvatarLevelUpResultDialog"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AvatarLevelUpResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._before_data = nil
  A0_2._avatar_data = nil
  A0_2._callback = nil
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  A0_2._before_data = A1_2
  A0_2._avatar_data = A2_2
  A0_2._show_finish_callback_self = A3_2
  A0_2._show_finish_callback = A4_2
  A0_2._reward_arg = A5_2
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L3_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.bg
  L4_2 = A0_2._on_bg_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_callback
  L4_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._exit_timer = L1_2
  A0_2._enable_exit = false
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._enable_exit = true
end
L3_1._on_timer_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group
  L1_2.alpha = 1
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_level_pre
  L3_2 = A0_2._before_data
  L3_2 = L3_2.LevelBefore
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_level_next
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_attack
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_defense
  L1_2(L2_2)
  L1_2 = A0_2._exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._before_data
  L1_2 = L1_2.HpMaxBefore
  L2_2 = A0_2._avatar_data
  L3_2 = L2_2
  L2_2 = L2_2.GetHPMax
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._before_data
  L3_2 = L3_2.HpMaxBefore
  if L2_2 > L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AvatarModule
    L3_2 = L3_2.FormatDisplayDataByType
    L4_2 = L0_1.MaxHP
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = ""
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.AvatarModule
    L5_2 = L5_2.FormatDisplayDataByType
    L6_2 = L0_1.MaxHP
    L7_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L4_2 .. L5_2
    L5_2 = G
    L5_2 = L5_2.TextExtensions
    L5_2 = L5_2.SafeSetText
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_hp
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = G
    L5_2 = L5_2.TextExtensions
    L5_2 = L5_2.SafeSetText
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_hp_add
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  else
    L3_2 = G
    L3_2 = L3_2.ComponentExtensions
    L3_2 = L3_2.SafeSetActive
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_hp
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L3_1._setup_hp = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._before_data
  L1_2 = L1_2.AttackBefore
  L2_2 = A0_2._avatar_data
  L3_2 = L2_2
  L2_2 = L2_2.GetPropertyByType
  L4_2 = L0_1.Attack
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._before_data
  L3_2 = L3_2.AttackBefore
  if L2_2 > L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AvatarModule
    L3_2 = L3_2.FormatDisplayDataByType
    L4_2 = L0_1.Attack
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = ""
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.AvatarModule
    L5_2 = L5_2.FormatDisplayDataByType
    L6_2 = L0_1.Attack
    L7_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L4_2 .. L5_2
    L5_2 = G
    L5_2 = L5_2.TextExtensions
    L5_2 = L5_2.SafeSetText
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_attack
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = G
    L5_2 = L5_2.TextExtensions
    L5_2 = L5_2.SafeSetText
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_attack_add
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  else
    L3_2 = G
    L3_2 = L3_2.ComponentExtensions
    L3_2 = L3_2.SafeSetActive
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_attack
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L3_1._setup_attack = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._before_data
  L1_2 = L1_2.DefenseBefore
  L2_2 = A0_2._avatar_data
  L3_2 = L2_2
  L2_2 = L2_2.GetPropertyByType
  L4_2 = L0_1.Defence
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._before_data
  L3_2 = L3_2.DefenseBefore
  if L2_2 > L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AvatarModule
    L3_2 = L3_2.FormatDisplayDataByType
    L4_2 = L0_1.Defence
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = ""
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.AvatarModule
    L5_2 = L5_2.FormatDisplayDataByType
    L6_2 = L0_1.Defence
    L7_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L4_2 .. L5_2
    L5_2 = G
    L5_2 = L5_2.TextExtensions
    L5_2 = L5_2.SafeSetText
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_defense
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = G
    L5_2 = L5_2.TextExtensions
    L5_2 = L5_2.SafeSetText
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_defense_add
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  else
    L3_2 = G
    L3_2 = L3_2.ComponentExtensions
    L3_2 = L3_2.SafeSetActive
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_defense
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L3_1._setup_defense = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._before_data
  L1_2 = L1_2.SpeedBefore
  L2_2 = A0_2._avatar_data
  L3_2 = L2_2
  L2_2 = L2_2.GetPropertyByType
  L4_2 = L0_1.Speed
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._before_data
  L3_2 = L3_2.SpeedBefore
  if L2_2 > L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AvatarModule
    L3_2 = L3_2.FormatDisplayDataByType
    L4_2 = L0_1.Speed
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = ""
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.AvatarModule
    L5_2 = L5_2.FormatDisplayDataByType
    L6_2 = L0_1.Speed
    L7_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L4_2 .. L5_2
    L5_2 = G
    L5_2 = L5_2.TextExtensions
    L5_2 = L5_2.SafeSetText
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_speed
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = G
    L5_2 = L5_2.TextExtensions
    L5_2 = L5_2.SafeSetText
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_speed_add
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  else
    L3_2 = G
    L3_2 = L3_2.ComponentExtensions
    L3_2 = L3_2.SafeSetActive
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_speed
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L3_1._setup_speed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L3_1._on_bg_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._enable_exit
  if L1_2 == false then
    return
  end
  L1_2 = A0_2._show_finish_callback
  if L1_2 then
    L1_2 = A0_2._show_finish_callback_self
    if L1_2 then
      L1_2 = A0_2._show_finish_callback
      L2_2 = A0_2._show_finish_callback_self
      L3_2 = A0_2._reward_arg
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._show_finish_callback
      L1_2()
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_exit = L4_1
return L3_1
