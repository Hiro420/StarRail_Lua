local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildSelectGearPropPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/EvolveBuild/Widget/EvolveProps.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/BoxIcon"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "Root/BoxIcon/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_icon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Unknown"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_unknown = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/FrameBg/TypeBgPanel/WeaponBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_weapon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/FrameBg/TypeBgPanel/SuperWeaponBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_super_weapon = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/FrameBg/TypeBgPanel/OrnamentBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_accessory = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/FrameBg/TypeBgPanel/OtherBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_other_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Selected/SuperWeaponOutlineGlow"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_super_weapon_glow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Selected/OutlineGlow"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal_glow = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/FrameBg/RewardEffect"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_reward_effect_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Root/FrameBg/RewardEffect"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_load_meta_reward_effect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn = L1_2
end
L0_1._on_bind = L1_1
return L0_1
