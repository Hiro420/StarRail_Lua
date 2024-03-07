local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicLevelUpExpPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ExpBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ExpBarPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicLevelUpExpPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.RelicExpTypeExcelTable
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
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._relic = A1_2
  A0_2._exp = 0
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_max_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = "+"
  L5_2 = A0_2._relic
  L5_2 = L5_2.RelicRow
  L5_2 = L5_2.MaxLevel
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_setup_max_level
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._relic
  L1_2 = L1_2.Level
  L2_2 = A0_2._relic
  L2_2 = L2_2.RelicRow
  L2_2 = L2_2.MaxLevel
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.is_max_level = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_max_level
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_max_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_exp_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._exp_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_value
    L4_2 = 1
    L2_2(L3_2, L4_2)
  end
end
L0_1._try_setup_max_level = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._exp = 0
  L2_2 = pairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._exp
    L8_2 = G
    L8_2 = L8_2.RelicUtils
    L8_2 = L8_2.calculate_exp_provide
    L9_2 = L6_2.item
    L10_2 = L6_2.count
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L7_2 + L8_2
    A0_2._exp = L7_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = L1_1.GetData
  L5_2 = A0_2._relic
  L5_2 = L5_2.RelicRow
  L5_2 = L5_2.ExpType
  L6_2 = A2_2.LevelBefore
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.Exp
  L5_2 = A2_2.ExpBefore
  L5_2 = L5_2 / L4_2
  L6_2 = A0_2._exp_panel
  L7_2 = L6_2
  L6_2 = L6_2.set_value
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = L1_1.GetData
  L7_2 = A0_2._relic
  L7_2 = L7_2.RelicRow
  L7_2 = L7_2.ExpType
  L8_2 = A1_2.Level
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = L6_2.Exp
  L7_2 = 0
  if L6_2 ~= 0 then
    L8_2 = A1_2.CurrentExp
    L7_2 = L8_2 / L6_2
  end
  L8_2 = A1_2.Level
  L9_2 = A2_2.LevelBefore
  L8_2 = L8_2 - L9_2
  L9_2 = A0_2._exp_panel
  L10_2 = L9_2
  L9_2 = L9_2.set_tween_callback
  L11_2 = A3_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._exp_panel
  L10_2 = L9_2
  L9_2 = L9_2.set_value_with_tween
  L11_2 = L7_2
  L12_2 = L8_2
  L9_2(L10_2, L11_2, L12_2)
end
L0_1.play_exp_tween = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._addition_level
  if not L1_2 then
    L1_2 = 0
  end
  return L1_2
end
L0_1.get_addition_level = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._relic
  L1_2 = L1_2.RelicRow
  L1_2 = L1_2.ExpType
  L2_2 = A0_2._relic
  L2_2 = L2_2.Level
  L3_2 = L1_1.GetData
  L4_2 = L1_2
  L5_2 = A0_2._relic
  L5_2 = L5_2.Level
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2.Exp
  L4_2 = A0_2._relic
  L4_2 = L4_2.CurrentExp
  L3_2 = L3_2 - L4_2
  L4_2 = 0
  while true do
    L5_2 = A0_2._relic
    L5_2 = L5_2.RelicRow
    L5_2 = L5_2.MaxLevel
    if not (L2_2 < L5_2) then
      break
    end
    L2_2 = L2_2 + 1
    L4_2 = L4_2 + L3_2
    L5_2 = L1_1.GetData
    L6_2 = L1_2
    L7_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2)
    L3_2 = L5_2.Exp
  end
  L5_2 = A0_2._exp
  L5_2 = L4_2 - L5_2
  return L5_2
end
L0_1.get_needed_exp_to_max = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._relic
  L2_2 = L2_2.RelicRow
  L2_2 = L2_2.ExpType
  L3_2 = A0_2._relic
  L3_2 = L3_2.Level
  L4_2 = L1_1.GetData
  L5_2 = L2_2
  L6_2 = A0_2._relic
  L6_2 = L6_2.Level
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.Exp
  L5_2 = A0_2._relic
  L5_2 = L5_2.CurrentExp
  L4_2 = L4_2 - L5_2
  L5_2 = 0
  while A1_2 > L3_2 do
    L3_2 = L3_2 + 1
    L5_2 = L5_2 + L4_2
    L6_2 = L1_1.GetData
    L7_2 = L2_2
    L8_2 = L3_2
    L6_2 = L6_2(L7_2, L8_2)
    L4_2 = L6_2.Exp
  end
  L6_2 = A0_2._exp
  L6_2 = L5_2 - L6_2
  return L6_2
end
L0_1.get_needed_exp_to_level = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback_self = A2_2
  A0_2._callback = A1_2
end
L0_1.set_level_change_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_exp
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._relic
  L1_2 = L1_2.Level
  L2_2 = A0_2._relic
  L2_2 = L2_2.RelicRow
  L2_2 = L2_2.MaxLevel
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_max_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = "+"
  L5_2 = tostring
  L6_2 = A0_2._relic
  L6_2 = L6_2.Level
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_addition_level
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_addition_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._addition_level
  L4_2 = L4_2 ~= 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_addition_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = "+"
  L5_2 = tostring
  L6_2 = A0_2._addition_level
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._addition_level
  if L2_2 ~= 0 then
    L2_2 = A0_2._callback
    if L2_2 ~= nil then
      L2_2 = A0_2._callback
      L3_2 = A0_2._callback_self
      L4_2 = A0_2._relic
      L4_2 = L4_2.Level
      L5_2 = A0_2._addition_level
      L4_2 = L4_2 + L5_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._refresh_level = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_addition_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._exp
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_addition_exp
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "+"
  L4_2 = tostring
  L5_2 = A0_2._exp
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.GetData
  L2_2 = A0_2._relic
  L2_2 = L2_2.RelicRow
  L2_2 = L2_2.ExpType
  L3_2 = A0_2._relic
  L3_2 = L3_2.Level
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.Exp
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_cur_exp
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._relic
  L4_2 = L4_2.CurrentExp
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_exp
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._exp_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_value
  L4_2 = A0_2._relic
  L4_2 = L4_2.CurrentExp
  L4_2 = L4_2 / L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._relic
  L2_2 = L2_2.CurrentExp
  L3_2 = A0_2._exp
  L2_2 = L2_2 + L3_2
  if L1_2 < L2_2 then
    L2_2 = A0_2._exp_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_preview_value
    L4_2 = 1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._exp_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_preview_value
    L4_2 = A0_2._relic
    L4_2 = L4_2.CurrentExp
    L5_2 = A0_2._exp
    L4_2 = L4_2 + L5_2
    L4_2 = L4_2 / L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_exp = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._relic
  L1_2 = L1_2.RelicRow
  L1_2 = L1_2.ExpType
  L2_2 = A0_2._relic
  L2_2 = L2_2.Level
  L3_2 = L1_1.GetData
  L4_2 = L1_2
  L5_2 = A0_2._relic
  L5_2 = L5_2.Level
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2.Exp
  L4_2 = A0_2._relic
  L4_2 = L4_2.CurrentExp
  L3_2 = L3_2 - L4_2
  L4_2 = A0_2._exp
  L4_2 = L4_2 - L3_2
  while 0 <= L4_2 do
    L5_2 = A0_2._relic
    L5_2 = L5_2.RelicRow
    L5_2 = L5_2.MaxLevel
    if not (L2_2 < L5_2) then
      break
    end
    L2_2 = L2_2 + 1
    L5_2 = L1_1.GetData
    L6_2 = L1_2
    L7_2 = L2_2
    L5_2 = L5_2(L6_2, L7_2)
    L5_2 = L5_2.Exp
    L4_2 = L4_2 - L5_2
  end
  L5_2 = A0_2._relic
  L5_2 = L5_2.Level
  L5_2 = L2_2 - L5_2
  A0_2._addition_level = L5_2
end
L0_1._refresh_addition_level = L2_1
return L0_1
