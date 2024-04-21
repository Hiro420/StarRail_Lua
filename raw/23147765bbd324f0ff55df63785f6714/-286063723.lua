local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonTeamPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonTeamPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonHintPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonUltraPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonUltraPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonMonsterDetailBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonMonsterDetailBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonExplorePointPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonExplorePointPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonBuffPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonBuffPanelBinder"
L0_1(L1_1)
L0_1 = 25
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TreasureDungeonMainPageBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/Quest/TreasureDungeon/TreasureDungeonMainPage.prefab"
  return L1_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_close = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/StatePanel/Collecting/FloorInfo/NumPanel/CurrentNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_floor = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/Contents/StatePanel/Collecting/FloorInfo/NumPanel/FloorNum"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_floor_count = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfo/Title/TitleText"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_main_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/PageInfo/TitleType/Text"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.text_sub_title = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Text
  L4_2 = "Root/ResourceDetail/TextPanel/Root/Num"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.txt_wait = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/HardEffect"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_hard = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/Contents/BtnMonsterBook"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_env_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonBuffPanel
  L4_2 = G
  L4_2 = L4_2.TreasureDungeonBuffPanelBinder
  L5_2 = "Root/AvatarTeam/AvatarTeam"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ParticleSystemProxy
  L4_2 = "Root/AvatarTeam/AvatarTeam/BtnSkillIcon/Hint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.partical_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonExplorePointPanel
  L4_2 = G
  L4_2 = L4_2.TreasureDungeonExplorePointPanelBinder
  L5_2 = "Root/Contents/StatePanel/Collecting/ExploreLevelInfo"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_explore_point = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/Contents/BtnMonsterBook/Received"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_env_buff = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonTeamPanel
  L4_2 = G
  L4_2 = L4_2.TreasureDungeonTeamPanelBinder
  L5_2 = "Root/AvatarTeam"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_team = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AvatarTeam/AvatarTeam/BtnTeam"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_team = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonMonsterDetailBtnPanel
  L4_2 = G
  L4_2 = L4_2.TreasureDungeonMonsterDetailBtnPanelBinder
  L5_2 = "Root/BtnMonsterDetail"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.monster_detail_btn_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonHintPanel
  L4_2 = G
  L4_2 = L4_2.TreasureDungeonHintPanelBinder
  L5_2 = "Root/TrialObjectivePanelInfoRow"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonUltraPanel
  L4_2 = G
  L4_2 = L4_2.TreasureDungeonUltraPanelBinder
  L5_2 = "Root/AvatarTeam"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.ultra_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AvatarTeam"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.layout_menu = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ParticleSystemProxy
  L4_2 = "Root/AvatarTeam/UltraSPInfoWithNature/UltraHint"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.partical_ultra = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AvatarTeam/Buff"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_property = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animation
  L4_2 = "Root/AvatarTeam/Buff"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.anim_property = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Root/AvatarTeam/UltraSPInfoWithNature"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.node_ultra = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_incontrol_tip
  L3_2 = "Root/Contents/BtnMonsterBook/KeyMapInfo"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_incontrol_tip
  L3_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnRuleTipTop/KeyMapInfo"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_incontrol_tip
  L3_2 = "Root/BtnMonsterDetail/KeyMapInfo"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_incontrol_tip
  L3_2 = "Root/AvatarTeam/UltraSPInfoWithNature/KeyMapInfo"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_incontrol_tip
  L3_2 = "Root/AvatarTeam/AvatarTeam/BtnTeam/KeyMapInfo"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_incontrol_tip
  L3_2 = "Root/AvatarTeam/AvatarTeam/BtnSkillIcon/KeyMapInfo"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_incontrol_tip
  L3_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnRuleTipTop/KeyMapInfo"
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_find
  L4_2 = "Root/AvatarTeam/Buff/BlackMask"
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L2_2(L3_2, L4_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  A0_2.nodes_to_mask = L1_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2._safe_get_cmpt
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.CanvasGroup
  L5_2 = "Root/Contents/BtnMonsterBook"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._safe_get_cmpt
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.CanvasGroup
  L6_2 = "Root/Contents/StatePanel"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._safe_get_cmpt
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.CanvasGroup
  L7_2 = "Root/TopBarArea"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._safe_get_cmpt
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.CanvasGroup
  L8_2 = "Root/BtnBack"
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._safe_get_cmpt
  L8_2 = CS
  L8_2 = L8_2.UnityEngine
  L8_2 = L8_2.CanvasGroup
  L9_2 = "Root/BtnMonsterDetail"
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2._safe_get_cmpt
  L9_2 = CS
  L9_2 = L9_2.UnityEngine
  L9_2 = L9_2.CanvasGroup
  L10_2 = "Root/ResourceDetail"
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  L1_2[4] = L5_2
  L1_2[5] = L6_2
  L1_2[6] = L7_2
  L1_2[7] = L8_2
  L1_2[8] = L9_2
  L1_2[9] = L10_2
  A0_2.canvas_groups_to_mask = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Root/TopBarArea/AreaPanel/TopBtnList/BtnRuleTipTop"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_intro = L1_2
end
L1_1._on_bind = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._all_incontrol_tip
  if L2_2 == nil then
    return
  end
  L2_2 = ipairs
  L3_2 = A0_2._all_incontrol_tip
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L6_2.IsShowTip = A1_2
  end
end
L1_1.setup_all_incontrol_tip = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._all_incontrol_tip
  if L2_2 == nil then
    L2_2 = {}
    A0_2._all_incontrol_tip = L2_2
  end
  L2_2 = A0_2._all_incontrol_tip
  L3_2 = A0_2._all_incontrol_tip
  L3_2 = #L3_2
  L3_2 = L3_2 + 1
  L5_2 = A0_2
  L4_2 = A0_2._safe_get_cmpt
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.MonoInControlTip
  L7_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2[L3_2] = L4_2
end
L1_1._add_incontrol_tip = L2_1
return L1_1
