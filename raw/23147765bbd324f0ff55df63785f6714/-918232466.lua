local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Settlement.Components.ChessRogueDimensionIncrementItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionIncrementItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_RogueDLC_Cabinet_PointUp "
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._dimension_data = A1_2
  A0_2._increment_tb = A2_2
  L4_2 = A2_2 or L4_2
  if A2_2 then
    L4_2 = A1_2.ID
    L4_2 = A2_2[L4_2]
    L4_2 = L4_2 ~= nil
  end
  A0_2._has_increment = L4_2
  A0_2._use_big = A3_2
  L4_2 = A0_2._has_increment
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_increment_view
    L4_2(L5_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._setup_default_view
    L4_2(L5_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._has_increment
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_cmpt
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "DicePassLvMissionToast_Icon_Up"
  L1_2(L2_2, L3_2)
  A0_2._increased = true
end
L0_1.play_increase_animation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._dimension_data
  if L2_2 then
    L2_2 = A0_2._dimension_data
    L2_2 = L2_2.ID
    if L2_2 == A1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2._binder
  L2_2 = L2_2.animation_cmpt
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = "DicePassLvMissionToast_Icon_Up_Switch_Unlock"
  L2_2(L3_2, L4_2)
end
L0_1.try_play_switch_animation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._dimension_data
  if L2_2 then
    L2_2 = A0_2._dimension_data
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
  L4_2 = "DicePassLvMissionToast_Icon_Up_Switch_Normal"
  L2_2(L3_2, L4_2)
end
L0_1.try_play_switch_stage_animation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.increment_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.prev_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._dimension_data
  L3_2 = L3_2.CurDimensionProgress
  L1_2(L2_2, L3_2)
end
L0_1.try_set_switch_stage_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.increment_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.prev_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._dimension_data
  L3_2 = L3_2.CurDimensionProgress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._use_big
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon
    L4_2 = A0_2._dimension_data
    L4_2 = L4_2.DimensionSmallIcon
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon
    L4_2 = A0_2._dimension_data
    L4_2 = L4_2.DimensionLargeIcon
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._dimension_data
  L3_2 = L3_2.DimensionTitle
  L1_2(L2_2, L3_2)
end
L0_1._setup_default_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.increment_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.prev_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._dimension_data
  L3_2 = L3_2.CurDimensionProgress
  L4_2 = A0_2._increment_tb
  L5_2 = A0_2._dimension_data
  L5_2 = L5_2.ID
  L4_2 = L4_2[L5_2]
  L3_2 = L3_2 - L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.increment_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L4_2 = A0_2._increment_tb
  L5_2 = A0_2._dimension_data
  L5_2 = L5_2.ID
  L4_2 = L4_2[L5_2]
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._dimension_data
  L3_2 = L3_2.DimensionTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._use_big
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon
    L4_2 = A0_2._dimension_data
    L4_2 = L4_2.DimensionSmallIcon
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon
    L4_2 = A0_2._dimension_data
    L4_2 = L4_2.DimensionLargeIcon
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_increment_view = L2_1
return L0_1
