local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionGraphItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionGraphItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._try_setup_default_rate
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.Increase
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "DicePassLvMissionToast_Dimension_Up"
  L1_2(L2_2, L3_2)
  A0_2._increased = true
end
L0_1.try_play_increase_animation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  if L2_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.ID
    if L2_2 == A1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2._increased
  if not L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_cmpt
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "DicePassLvMissionToast_Dimension_Up_Switch_Unlock"
  L2_2(L3_2, L4_2)
end
L0_1.try_play_default_switch_animation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._data
  if L2_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.ID
    if L2_2 ~= A1_2 then
      L2_2 = A0_2._increased
      if L2_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_cmpt
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "DicePassLvMissionToast_Dimension_Up_Switch_Normal"
  L2_2(L3_2, L4_2)
end
L0_1.try_play_switch_stage_animation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.Increase
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._data
  L1_2 = L1_2.Value
  L1_2 = L1_2.Current
  L2_2 = A0_2._data
  L2_2 = L2_2.Value
  L2_2 = L2_2.Max
  L1_2 = L1_2 / L2_2
  L2_2 = A0_2._data
  L2_2 = L2_2.Value
  L2_2 = L2_2.Current
  L3_2 = A0_2._data
  L3_2 = L3_2.Increase
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2._data
  L3_2 = L3_2.Value
  L3_2 = L3_2.Max
  L2_2 = L2_2 / L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_quad_effect
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_quad_effect2
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_quad_effect3
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.try_start_increase_quad = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.Increase
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._data
  L1_2 = L1_2.Value
  L1_2 = L1_2.Current
  L2_2 = A0_2._data
  L2_2 = L2_2.Value
  L2_2 = L2_2.Max
  L1_2 = L1_2 / L2_2
  L2_2 = A0_2._data
  L2_2 = L2_2.Value
  L2_2 = L2_2.Current
  L3_2 = A0_2._data
  L3_2 = L3_2.Increase
  L2_2 = L2_2 + L3_2
  L3_2 = A0_2._data
  L3_2 = L3_2.Value
  L3_2 = L3_2.Max
  L2_2 = L2_2 / L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_quad_effect4
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_quad_effect5
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.try_increase_default_quad = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Value
  if not L1_2 then
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.Value
  L1_2 = L1_2.Current
  L2_2 = A0_2._data
  L2_2 = L2_2.Value
  L2_2 = L2_2.Max
  L1_2 = L1_2 / L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.increase_quad
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.default_quad
  L3_2 = L2_2
  L2_2 = L2_2.SetProgress
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.default_quad2
  L3_2 = L2_2
  L2_2 = L2_2.SetProgress
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._try_setup_default_rate = L1_1
return L0_1
