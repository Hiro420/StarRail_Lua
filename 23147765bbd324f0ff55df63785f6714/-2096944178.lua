local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.LevelUpExpPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ExpBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ExpBarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LevelUpExpPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_data = A1_2
  A0_2._addition_exp = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ExpBarPanel
  L4_2 = G
  L4_2 = L4_2.ExpBarPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._exp_panel = L1_2
  L1_2 = A0_2._exp_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.exp_bar_root
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A2_2.ExpBefore
  L6_2 = A1_2
  L5_2 = A1_2.GetLvMaxExp
  L7_2 = A2_2.LevelBefore
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 / L5_2
  L5_2 = A0_2._exp_panel
  L6_2 = L5_2
  L5_2 = L5_2.set_value
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = 0
  L7_2 = A1_2
  L6_2 = A1_2.GetCurrentLvMaxExp
  L6_2 = L6_2(L7_2)
  if L6_2 ~= 0 then
    L6_2 = A1_2.CurrentExp
    L8_2 = A1_2
    L7_2 = A1_2.GetCurrentLvMaxExp
    L7_2 = L7_2(L8_2)
    L5_2 = L6_2 / L7_2
  end
  L6_2 = A1_2.Level
  L7_2 = A2_2.LevelBefore
  L6_2 = L6_2 - L7_2
  L7_2 = A0_2._exp_panel
  L8_2 = L7_2
  L7_2 = L7_2.set_tween_callback
  L9_2 = A3_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._exp_panel
  L8_2 = L7_2
  L7_2 = L7_2.set_value_with_tween
  L9_2 = L5_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
end
L0_1.play_exp_tween = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_level
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_max_level
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentMaxLv
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_current_exp
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.CurrentExp
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_exp
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentLvMaxExp
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._exp_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_value
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.CurrentExp
  L4_2 = A0_2._avatar_data
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentLvMaxExp
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 / L4_2
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.SafeSetActive
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_current_exp_addition
  L3_2 = A0_2._addition_exp
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TextExtensions
  L1_2 = L1_2.SafeSetText
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_current_exp_addition
  L3_2 = "+"
  L4_2 = A0_2._addition_exp
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._addition_exp
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.CurrentExp
  L1_2 = L1_2 + L2_2
  L2_2 = A0_2._avatar_data
  L3_2 = L2_2
  L2_2 = L2_2.GetNewLevelByAddExp
  L4_2 = A0_2._addition_exp
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Level
  if L2_2 > L3_2 then
    L3_2 = L1_1.SafeSetActive
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_level_addition
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = G
    L3_2 = L3_2.TextExtensions
    L3_2 = L3_2.SafeSetText
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_level_addition
    L5_2 = "+"
    L6_2 = A0_2._avatar_data
    L6_2 = L6_2.Level
    L6_2 = L2_2 - L6_2
    L5_2 = L5_2 .. L6_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._exp_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_preview_value
    L5_2 = 1
    L3_2(L4_2, L5_2)
  else
    L3_2 = L1_1.SafeSetActive
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_level_addition
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._exp_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_preview_value
    L5_2 = A0_2._avatar_data
    L6_2 = L5_2
    L5_2 = L5_2.GetCurrentLvMaxExp
    L5_2 = L5_2(L6_2)
    L5_2 = L1_2 / L5_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._refresh = L2_1
return L0_1
