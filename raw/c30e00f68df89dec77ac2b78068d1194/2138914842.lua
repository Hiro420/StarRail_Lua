local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSubMenuVerticalPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Avatar/Widget/AvatarSubMenuPanel_Vertical.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnDetail/AvatarSubMenuInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnPaths/AvatarSubMenuInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_skill_tree = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnLightCone/AvatarSubMenuInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_lightcone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnRelic/AvatarSubMenuInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_relic = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnAvatarRank/AvatarSubMenuInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_eidolon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnData/AvatarSubMenuInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_btn_data_bank = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnPaths"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_tree = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnAvatarHero"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hero_path = L1_2
  L1_2 = A0_2.node_hero_path
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnRelic"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_relic = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnData"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_data_bank = L1_2
end
L0_1._on_bind = L1_1
return L0_1
