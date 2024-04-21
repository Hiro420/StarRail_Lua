local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonBEUltraSkillCutInDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.StrExt
  L1_2 = L1_2.IsNullOrEmpty
  L2_2 = A0_2._custom_path
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2
  if L1_2 then
    L2_2 = A0_2._custom_path
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = "UI/Battle/SpecialAction/SpecialAction_Item.prefab"
  ::lbl_13::
  return L2_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2, A1_2)
  A0_2._custom_path = A1_2
end
L0_1.set_custom_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_cutin = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Contents/ActionTitlePanel/Title"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_skill_name = L1_2
end
L0_1._on_bind = L1_1
return L0_1
