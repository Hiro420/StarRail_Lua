local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Relic.RelicSetSkillDetailInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSetSkillDetailInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Active = "#63FEDFFF"
L1_1.Inactive = "#C0C0C0FF"
L1_1.Lose = "#FF8D8D"
L2_1 = {}
L2_1.Active = "#004D1CA6"
L2_1.Inactive = "#222222A6"
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = A1_2.SkillDesc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = A1_2.AbilityParamList
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = "UIText_AvatarRelic_Effect"
  L6_2 = tostring
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.description
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_AvatarRelic_EffectDesc_WithCount"
  L8_2 = L4_2
  L9_2 = L3_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._hide_all
  L2_2(L3_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_match
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.description
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L1_1.Active
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.shadow_desc
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L2_1.Active
    L3_2 = L3_2(L4_2)
    L2_2.effectColor = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_unmatch
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.description
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L1_1.Inactive
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.shadow_desc
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = L2_1.Inactive
    L3_2 = L3_2(L4_2)
    L2_2.effectColor = L3_2
  end
end
L0_1.set_match = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_all
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lost
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.description
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L1_1.Lose
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
end
L0_1.set_lose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_all
  L1_2(L2_2)
end
L0_1.set_normal = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lost
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_match
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unmatch
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_all = L3_1
return L0_1
