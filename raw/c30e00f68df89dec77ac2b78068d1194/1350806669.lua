local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerPhotoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.PlayerPhotoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordDamageAttackInfoRowPanelBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatePanel/Loading"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_loading = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatePanel/Normal"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_normal = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PlayerPhotoPanel
  L4_2 = G
  L4_2 = L4_2.PlayerPhotoPanelBinder
  L5_2 = "Root/StatePanel/Normal/AvatarPhoto"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_player_photo = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/StatePanel/Normal/TextPanel/BoxName/TxtName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/StatePanel/Normal/TextPanel/BoxDmgLayout/BoxDmg/TxtTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Root/StatePanel/Normal/TextPanel/BoxDmgLayout/BoxDmg/TxtDmgValue"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_damage = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/StatePanel/Normal/TextPanel/BoxName/BoxKillTag"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_final_hit = L1_2
end
L0_1._on_bind = L1_1
return L0_1
