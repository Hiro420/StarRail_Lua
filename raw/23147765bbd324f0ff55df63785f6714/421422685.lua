local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleEvolveBuildGearDetailPanelBinder"
L2_1 = G
L2_1 = L2_1.BattleEvolveBuildSelectGearDetailPanelBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.btn_empty_close = nil
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/EmptyPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/LockedPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_locked = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/Root/EmptyPanel/Root/TxtEmpty"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "InfoPanel/Root/EmptyPanel/Root/IconWeapon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.imge_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView/Viewport/Content/TitlePanel/TypePanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/Root/ScrollView/Viewport/Content/TitlePanel/TextTitle/TextTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/Root/ScrollView/Viewport/Content/TitlePanel/TextTitle/UpdateLabel/TxtLv1"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/Root/ScrollView/Viewport/Content/RogueTextDescButton"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView/Viewport/Content/TitlePanel/TextTitle/UpdateLabel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_level = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView/Viewport/Content/ItemPanel/Bg/WeaponBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.weapon_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView/Viewport/Content/ItemPanel/Bg/OrnamenBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.accessory_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView/Viewport/Content/ItemPanel/Bg/SuperWeaponBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.super_weapon_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView/Viewport/Content/ItemPanel/EvolvePropsPanel/EvolveProps/Root/FrameBg/TypeBgPanel/WeaponBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.icon_weapon_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView/Viewport/Content/ItemPanel/EvolvePropsPanel/EvolveProps/Root/FrameBg/TypeBgPanel/OrnamentBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.icon_accessory_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView/Viewport/Content/ItemPanel/EvolvePropsPanel/EvolveProps/Root/FrameBg/TypeBgPanel/SuperWeaponBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.icon_super_weapon_bg = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/Root/ScrollView/Viewport/Content/TitlePanel/TipsPanel/Root/TxtTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_resonance_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "InfoPanel/Root/ScrollView/Viewport/Content/TitlePanel/TipsPanel/Root/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_resonance_gear = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "InfoPanel/Root/ScrollView/Viewport/Content/TitlePanel/TipsPanel/Root/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_resonance_gear_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView/Viewport/Content/TitlePanel/TipsPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_resonance_tips = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "InfoPanel/Root/ScrollView/Viewport/Content/TitlePanel/TextTitle/PropTypeList"
  L6_2 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearTagPanel"
  L7_2 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearTagPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.panel_tags = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "InfoPanel/Root/ScrollView/Viewport/Content/ItemPanel/EvolvePropsPanel/DamageTypeLayout"
  L6_2 = "Ui.Monster.MonsterDamageTypePanel"
  L7_2 = "Ui.Monster.MonsterDamageTypePanelBinder"
  L8_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2.damage_type_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView/Viewport/Content/MixPanel/EvolveMixListItem"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mix_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView/Viewport/Content/MixPanel/TipsPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mix_finish = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel/Root/ScrollView/Viewport/Content/MixPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mix_root = L1_2
end
L0_1._on_bind = L1_1
return L0_1
