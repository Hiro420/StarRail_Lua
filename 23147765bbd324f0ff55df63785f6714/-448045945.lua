local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritPentagonUpgradePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Enable = "#6EE0B6"
L1_1.Disable = "#FF4C4C"
L1_1.FullWhite = "#FFFFFF"
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._spirit_data = A1_2
  A0_2._new_promotion = A2_2
  A0_2._is_can_promote = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_cur_progress
  L4_2(L5_2)
  L4_2 = A0_2._spirit_data
  L4_2 = L4_2.Promotion
  L5_2 = A0_2._new_promotion
  if L4_2 ~= L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_new_progress
    L4_2(L5_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.line_renderer_cur
  L2_2 = L1_2
  L1_2 = L1_2.SetProgress
  L3_2 = A0_2._spirit_data
  L3_2 = L3_2.Promotion
  L4_2 = A0_2._spirit_data
  L4_2 = L4_2.MaxPromotion
  L3_2 = L3_2 / L4_2
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = A0_2._spirit_data
  L2_2 = L2_2.MaxPromotion
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L6_2 = "node_finish_state_"
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._spirit_data
    L7_2 = L7_2.Promotion
    L7_2 = L4_2 <= L7_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L6_2 = "node_unfinish_state_"
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._spirit_data
    L7_2 = L7_2.Promotion
    L7_2 = L4_2 > L7_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_cur_progress = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.line_renderer_new
  L2_2 = L1_2
  L1_2 = L1_2.SetProgress
  L3_2 = A0_2._new_promotion
  L4_2 = A0_2._spirit_data
  L4_2 = L4_2.MaxPromotion
  L3_2 = L3_2 / L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_can_promote
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.line_renderer_new
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = L1_1.Enable
    L2_2 = L2_2(L3_2)
    L1_2.fillColor = L2_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.line_renderer_new
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = L1_1.Disable
    L2_2 = L2_2(L3_2)
    L1_2.fillColor = L2_2
  end
  L1_2 = A0_2._spirit_data
  L1_2 = L1_2.Promotion
  L1_2 = L1_2 + 1
  L2_2 = A0_2._spirit_data
  L2_2 = L2_2.MaxPromotion
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L6_2 = "node_finish_state_"
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._new_promotion
    L7_2 = L4_2 <= L7_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L6_2 = "node_unfinish_state_"
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._new_promotion
    L7_2 = L4_2 > L7_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L6_2 = "node_hint_state_"
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._new_promotion
    L7_2 = L4_2 == L7_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._new_promotion
    if L4_2 == L5_2 then
      L5_2 = A0_2._is_can_promote
      if L5_2 then
        L5_2 = A0_2._binder
        L6_2 = "img_hint_state_"
        L7_2 = L4_2
        L6_2 = L6_2 .. L7_2
        L5_2 = L5_2[L6_2]
        L6_2 = G
        L6_2 = L6_2.UIColorUtils
        L6_2 = L6_2.GetColor
        L7_2 = L1_1.Enable
        L6_2 = L6_2(L7_2)
        L5_2.color = L6_2
        L5_2 = A0_2._binder
        L6_2 = "img_hint_point_state_"
        L7_2 = L4_2
        L6_2 = L6_2 .. L7_2
        L5_2 = L5_2[L6_2]
        L6_2 = G
        L6_2 = L6_2.UIColorUtils
        L6_2 = L6_2.GetColor
        L7_2 = L1_1.Enable
        L6_2 = L6_2(L7_2)
        L5_2.color = L6_2
      else
        L5_2 = A0_2._binder
        L6_2 = "img_hint_state_"
        L7_2 = L4_2
        L6_2 = L6_2 .. L7_2
        L5_2 = L5_2[L6_2]
        L6_2 = G
        L6_2 = L6_2.UIColorUtils
        L6_2 = L6_2.GetColor
        L7_2 = L1_1.Disable
        L6_2 = L6_2(L7_2)
        L5_2.color = L6_2
        L5_2 = A0_2._binder
        L6_2 = "img_hint_point_state_"
        L7_2 = L4_2
        L6_2 = L6_2 .. L7_2
        L5_2 = L5_2[L6_2]
        L6_2 = G
        L6_2 = L6_2.UIColorUtils
        L6_2 = L6_2.GetColor
        L7_2 = L1_1.Disable
        L6_2 = L6_2(L7_2)
        L5_2.color = L6_2
      end
    end
    L5_2 = A0_2._is_can_promote
    if L5_2 then
      L5_2 = A0_2._binder
      L6_2 = "img_finish_state_"
      L7_2 = L4_2
      L6_2 = L6_2 .. L7_2
      L5_2 = L5_2[L6_2]
      L6_2 = G
      L6_2 = L6_2.UIColorUtils
      L6_2 = L6_2.GetColor
      L7_2 = L1_1.FullWhite
      L6_2 = L6_2(L7_2)
      L5_2.color = L6_2
    else
      L5_2 = A0_2._binder
      L6_2 = "img_finish_state_"
      L7_2 = L4_2
      L6_2 = L6_2 .. L7_2
      L5_2 = L5_2[L6_2]
      L6_2 = G
      L6_2 = L6_2.UIColorUtils
      L6_2 = L6_2.GetColor
      L7_2 = L1_1.Disable
      L6_2 = L6_2(L7_2)
      L5_2.color = L6_2
    end
  end
end
L0_1._setup_new_progress = L2_1
return L0_1
