local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubResonanceCardPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.BoxingClubResonanceBattleEnterItemIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/BoxingClubResonance/Widget/BoxingClubResonanceBattleEnterItem.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "auto_bind fail!!!"
    L1_2(L2_2)
    return
  end
  L1_2 = {}
  L2_2 = A0_2.img_nature_bg_1
  L1_2[1] = L2_2
  L2_2 = A0_2.img_nature_bg_2
  L1_2[2] = L2_2
  A0_2.img_nature_bg = L1_2
  L1_2 = {}
  L2_2 = A0_2.img_nature_icon_1
  L1_2[1] = L2_2
  L2_2 = A0_2.img_nature_icon_2
  L1_2[2] = L2_2
  A0_2.img_nature_icon = L1_2
  L1_2 = {}
  L2_2 = A0_2.node_buff_item_1
  L1_2[1] = L2_2
  L2_2 = A0_2.node_buff_item_2
  L1_2[2] = L2_2
  A0_2.node_buff_items = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.animator_root = L1_2
end
L0_1._on_bind = L2_1
return L0_1
