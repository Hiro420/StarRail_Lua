local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildGearSlotsPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildStatsBar"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.BattleProgress.BattleEvolveBuildBattleProgressPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Avatar.Panels.RogueAvatarIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildResultPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
L1_1 = require
L2_1 = "Generate.EvolveBuildResultDialogIndex"
L1_1 = L1_1(L2_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/EvolveBuild/EvolveBuildResultDialog.prefab"
  return L1_2
end
L0_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.auto_bind
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogError
    L2_2 = G
    L2_2 = L2_2.LogTag
    L2_2 = L2_2.UI
    L3_2 = "[EvolveBuild] EvolveBuildResultPage: auto_bind Failed."
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.EvolveBuildGearSlotsPanel
  L4_2 = G
  L4_2 = L4_2.EvolveBuildGearSlotsPanelBinder
  L5_2 = A0_2.weapon_panel
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.weapon_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.EvolveBuildGearSlotsPanel
  L4_2 = G
  L4_2 = L4_2.EvolveBuildGearSlotsPanelBinder
  L5_2 = A0_2.accessory_panel
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.accessory_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.BattleEvolveBuildBattleProgressPanel
  L4_2 = G
  L4_2 = L4_2.BattleEvolveBuildBattleProgressPanelBinder
  L5_2 = A0_2.progress_panel
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.progress_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel_with_root_trans
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = A0_2.bar_chart
  L6_2 = G
  L6_2 = L6_2.EvolveBuildStatsBar
  L7_2 = G
  L7_2 = L7_2.EvolveBuildStatsBarBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2.bar_chart = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._create_panel_with_root_trans
  L4_2 = G
  L4_2 = L4_2.RogueAvatarIconPanel
  L5_2 = G
  L5_2 = L5_2.RogueAvatarIconPanelBinder
  L6_2 = A0_2.team_member1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._create_panel_with_root_trans
  L5_2 = G
  L5_2 = L5_2.RogueAvatarIconPanel
  L6_2 = G
  L6_2 = L6_2.RogueAvatarIconPanelBinder
  L7_2 = A0_2.team_member2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._create_panel_with_root_trans
  L6_2 = G
  L6_2 = L6_2.RogueAvatarIconPanel
  L7_2 = G
  L7_2 = L7_2.RogueAvatarIconPanelBinder
  L8_2 = A0_2.team_member3
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._create_panel_with_root_trans
  L7_2 = G
  L7_2 = L7_2.RogueAvatarIconPanel
  L8_2 = G
  L8_2 = L8_2.RogueAvatarIconPanelBinder
  L9_2 = A0_2.team_member4
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  A0_2.team_members = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Content/RightPanel/LevelPanel/Root/TxtTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.stage_name_1 = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "StatisticsPanel/StatisticsPanel/LevelPanel/Root/TxtTitle"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.stage_name_2 = L1_2
end
L0_1._on_bind = L2_1
return L0_1
