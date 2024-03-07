local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarObtainPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarObtainPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaAddtionalItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaAddtionalItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NormalObtainAvatarPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.AvatarObtainPanel
  L4_2 = G
  L4_2 = L4_2.AvatarObtainPanelBinder
  L5_2 = "AvatarContents"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.avatar_obtain_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.GachaAddtionalItemPanel
  L4_2 = G
  L4_2 = L4_2.GachaAddtionalItemPanelBinder
  L5_2 = "AvatarContents/AdditionalAcquisition"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.avatar_additional_item_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarContents/AvatarDetailInfoPanel/AvatarInfo/NamePanel/RoleNameInfo/Text/NewMemberHintPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_new_avatar_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "AvatarContents/AvatarDetailInfoPanel/ItemConversionPanel/IconMiniPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.node_convert_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarContents/AvatarDetailInfoPanel/ItemConversionPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_convert = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Image
  L4_2 = "EffPanel/R5/R5Pre/BgProfession"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.img_eff_r5 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "AvatarContents/AvatarDetailInfoPanel/ItemConversionPanel/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_avatar_convert = L1_2
end
L0_1._on_bind = L1_1
return L0_1
