local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattlePropertyBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattlePropertyBarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAvatarHPInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.BattleAvatarHPInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideSPContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.AetherDivide.BattleAetherDivideSPContainerPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleAetherDivideAvatarInfoPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Battle/ViewMode/Widget/AvatarInfo.prefab"
  return L0_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TextPanel/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "TextPanel/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_lv = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "DamageType/UltraSPInfoForAd/SpIcon/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_ultra = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattleAvatarHPInfoPanel
  L4_2 = G
  L4_2 = L4_2.BattleAvatarHPInfoPanelBinder
  L5_2 = "AvatarInfoPanel/AvatarInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.hp_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BattleAetherDivideSPContainerPanel
  L4_2 = G
  L4_2 = L4_2.BattleAetherDivideSPContainerPanelBinder
  L5_2 = "DamageType/UltraSPInfoForAd/OutlineProgress"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.sp_container_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AttributeType/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.damage_type_icon = L1_2
end
L0_1._on_bind = L1_1
return L0_1
