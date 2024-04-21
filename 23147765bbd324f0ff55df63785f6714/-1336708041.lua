local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAetherDivideAvatarPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar_tabs = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/TabRow"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.tab_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/TabRow/TabControl"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar_info_tab = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/Content/CharacterDetailPanelContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/Content/SkillDetailPanelContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skill_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "RightPanel/Content/AetherDividePanelContainer"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_passive_skill = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "UnavailableTip"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unavailable_tip = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "RightPanel/Content/BgProfession"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_bg = L1_2
end
L0_1._on_bind = L1_1
return L0_1
