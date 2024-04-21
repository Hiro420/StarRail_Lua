local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarArchiveDetailSubMenuPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/DataBank/Widget/AvatarSubMenuPanel_Vertical.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnData/AvatarSubMenuInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnVoice/AvatarSubMenuInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_voice = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnStory/AvatarSubMenuInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_story = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnAvatarRank/AvatarSubMenuInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_eidolon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnPaths/AvatarSubMenuInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_tree = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnData"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_detail_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnVoice"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_voice_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnStory"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_story_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnAvatarRank"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_eidolon_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "FunctionBtnPanel/BtnPaths"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_tree_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1
