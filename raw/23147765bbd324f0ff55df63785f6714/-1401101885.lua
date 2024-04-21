local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AvatarSkin.NormalObtainSkinPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarSkin.NormalObtainSkinPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NewSkinDropDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1()
  local L0_2, L1_2
  L0_2 = "UI/Avatar/NewAvatarDropDialog.prefab"
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
  L3_2 = L3_2.Button
  L4_2 = "Btn_Exit"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_bg_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.NormalObtainSkinPanel
  L4_2 = G
  L4_2 = L4_2.NormalObtainSkinPanelBinder
  L5_2 = "AvatarSkinContents"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.skin_obtain_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "AvatarContents"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "LightConeContents"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_lightcone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_fade_in = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "TalkButton"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_skip_btn = L1_2
  L1_2 = A0_2.node_skip_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_bind = L1_1
return L0_1
