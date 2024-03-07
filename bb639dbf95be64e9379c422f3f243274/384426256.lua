local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.BattleUIUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAvatarHPInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.UINumberUtils
L2_1 = 568
function L3_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigManager
  L1_2 = L1_2.GameCoreUIConfig
  L1_2 = L1_2.HpRedRatio
  A0_2._low_hp_ratio = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A1_2
  L2_2 = A1_2.GetOwnerEntity
  L2_2 = L2_2(L3_2)
  A0_2._entity = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UINumberUtils
  L2_2 = L2_2.GetPropertyNumberUIData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._status_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_hp
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_up_shield
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_hp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.CurrentShowHPInt
  L4_2 = A0_2._entity
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_low_hp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = L1_1.CurrentShowHPInt
  L4_2 = A0_2._entity
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_max_hp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._status_data
  L3_2 = L3_2.MaxHP
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.CurrentShowHPPercent
  L2_2 = A0_2._entity
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.BattleUIUtils
  L2_2 = L2_2.get_hp_bar_min_clamped_value
  L3_2 = L2_1
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L2_2
  L2_2 = L1_1.CurrentDirtyHPPercent
  L3_2 = A0_2._entity
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.hp_bar
  L3_2.fillAmount = L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.hp_bar
  L3_2.bgAmount = L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.hp_bar
  L3_2.dirtyAmount = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.hp_bar_low
  L3_2.fillAmount = L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.hp_bar_low
  L3_2.bgAmount = L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.hp_bar_low
  L3_2.dirtyAmount = L2_2
  L4_2 = A0_2
  L3_2 = A0_2._is_low_hp
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_cur_hp
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.hp_bar
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_cur_low_hp
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.hp_bar_low
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._setup_hp = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.shield_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._status_data
  L3_2 = L3_2.Shield
  L4_2 = A0_2._status_data
  L4_2 = L4_2.MaxShield
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.shield_bar_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._status_data
  L3_2 = L3_2.Shield
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UINumberUtils
  L1_2 = L1_2.CurrentShieldPercentByMaxHP
  L2_2 = A0_2._entity
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_shield
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.shield_slider1
  L2_2.fillAmount = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.shield_slider2
  L2_2.fillAmount = L1_2
end
L0_1._set_up_shield = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.CurrentShowHPPercent
  L2_2 = A0_2._entity
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._low_hp_ratio
  L1_2 = L1_2 <= L2_2
  return L1_2
end
L0_1._is_low_hp = L3_1
return L0_1
