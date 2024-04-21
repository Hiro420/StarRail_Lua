local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.BtnArchiveEntrancePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.BtnArchiveEntrancePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ArchiveEntrancePageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/DataBank/DataBankPage.prefab"
  return L1_2
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
  L4_2 = "Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnArchiveEntrancePanel
  L4_2 = G
  L4_2 = L4_2.BtnArchiveEntrancePanelBinder
  L5_2 = "Root/PanelContent/BtnLightCone/BtnLightCone"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn_archive_lightcone = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnArchiveEntrancePanel
  L4_2 = G
  L4_2 = L4_2.BtnArchiveEntrancePanelBinder
  L5_2 = "Root/PanelContent/BtnRelic/BtnRelic"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn_archive_relic = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnArchiveEntrancePanel
  L4_2 = G
  L4_2 = L4_2.BtnArchiveEntrancePanelBinder
  L5_2 = "Root/PanelContent/BtnFactions/BtnFactions"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn_archive_factions = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnArchiveEntrancePanel
  L4_2 = G
  L4_2 = L4_2.BtnArchiveEntrancePanelBinder
  L5_2 = "Root/PanelContent/BtnAeons/BtnAeons"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn_archive_aeons = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnArchiveEntrancePanel
  L4_2 = G
  L4_2 = L4_2.BtnArchiveEntrancePanelBinder
  L5_2 = "Root/PanelContent/BtnAvatar/BtnAvatar"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn_archive_avatar = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnArchiveEntrancePanel
  L4_2 = G
  L4_2 = L4_2.BtnArchiveEntrancePanelBinder
  L5_2 = "Root/PanelContent/BtnMonster/BtnMonster"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn_archive_monster = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.BtnArchiveEntrancePanel
  L4_2 = G
  L4_2 = L4_2.BtnArchiveEntrancePanelBinder
  L5_2 = "Root/PanelContent/BtnTerms/BtnTerms"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_btn_archive_terms = L1_2
end
L0_1._on_bind = L1_1
return L0_1
