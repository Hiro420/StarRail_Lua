local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBlockIntroPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.BlockIntroIcon
  L2_2 = L2_2 ~= nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_icon
    L6_2 = A1_2.BlockIntroIcon
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = nil
    L4_2 = A1_2.IntroGroup
    if L4_2 == 1 then
      L3_2 = A1_2.BlockTypeChessBoardColor
    end
    if L3_2 == nil or L3_2 == "" then
      L3_2 = "#FFFFFF"
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = G
    L5_2 = L5_2.UIColorUtils
    L5_2 = L5_2.GetColor
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L4_2.color = L5_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.BlockIntroName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.BlockIntroDesc
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
return L0_1
