local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordMonsterListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordMonsterListPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordSearchBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordSearchBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordControlPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordControlPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordMonsterInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordMonsterInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordShareInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Widget.PunkLordShareInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordMainPanelBinder"
L2_1 = G
L2_1 = L2_1.TabItemBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PunkLordMonsterListPanel
  L4_2 = G
  L4_2 = L4_2.PunkLordMonsterListPanelBinder
  L5_2 = "ListPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.punklord_list_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PunkLordSearchBtnPanel
  L4_2 = G
  L4_2 = L4_2.PunkLordSearchBtnPanelBinder
  L5_2 = "ListPanel/BoxSearch"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.btn_search_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PunkLordControlPanel
  L4_2 = G
  L4_2 = L4_2.PunkLordControlPanelBinder
  L5_2 = "ControlPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.control_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PunkLordMonsterInfoPanel
  L4_2 = G
  L4_2 = L4_2.PunkLordMonsterInfoPanelBinder
  L5_2 = "MonsterInfoPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.monster_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PunkLordShareInfoPanel
  L4_2 = G
  L4_2 = L4_2.PunkLordShareInfoPanelBinder
  L5_2 = "BoxKill"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.share_info_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "InfoPanel/BoxTimer/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "InfoPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnComForthIconDark"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_record = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxMonsterEmpty"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_empty = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "BoxMonsterEmpty/BoxEmpty/TxtEmpty"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_empty_hint = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "BoxMonsterKilled"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_killed = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Motions
  L3_2 = L3_2.MonoTextMotion
  L4_2 = "BoxMonsterEmpty/BoxEmpty/TxtEmpty"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.motion_empty_hint = L1_2
end
L0_1._on_bind = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_tab_btn_bind = L1_1
return L0_1
