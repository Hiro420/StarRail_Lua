local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumPhaseIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumPhaseIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumPhaseUpgradeDialogBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/Museum/MuseumStagePromotionDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumPhaseIconPanel
  L4_2 = G
  L4_2 = L4_2.MuseumPhaseIconPanelBinder
  L5_2 = "Contents/TitlePanel/GlowBg/PhaseIconPanel/PhaseIconNext"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.phase_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Contents/TitlePanel/GlowBg/PhaseTextPanel/PhaseNamePrev"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_phase_prev = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Contents/TitlePanel/GlowBg/PhaseTextPanel/PhaseNameNext"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_phase_next = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/MissionHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mission_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Contents/MissionHint/TextPanel/MissionName"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_mission_name = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/NoMissionHint"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_no_mission = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Contents/TipPanel"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_mission_time_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LocalizedText
  L4_2 = "Contents/TipPanel/Root/TipText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_mission_time_left = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.MonoRemainTimer
  L4_2 = "Contents/TipPanel/Root/RemainTime"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.mission_remain_time = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg/BtnEmptyClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "BtnPanel/BtnGo"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_go = L1_2
end
L0_1._on_bind = L1_1
return L0_1
