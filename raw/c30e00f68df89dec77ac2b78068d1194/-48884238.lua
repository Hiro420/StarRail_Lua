local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBarBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBar"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DefaultGachaAvatarPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "AvatarInfo/NamePanel/DamageType/Icon"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_damage_type = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "AvatarInfo/NamePanel/DamageType/Name"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_damage_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "AvatarInfo/NamePanel/RoleNameInfo/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_avatar_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "AvatarInfo/NamePanel/BtnTips"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_avatar_detail = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.DiscreteProgressBar
  L4_2 = G
  L4_2 = L4_2.DiscreteProgressBarBinder
  L5_2 = "AvatarInfo/Promotion"
  L6_2 = "Ui.Avatar.RarityStarPanel"
  L7_2 = "Ui.Avatar.RarityStarPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.promotion_stars_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarInfo"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar_info = L1_2
end
L0_1._on_bind = L1_1
return L0_1
