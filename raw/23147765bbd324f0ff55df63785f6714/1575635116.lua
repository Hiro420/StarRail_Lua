local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueMainPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Entrance.Components.ChessRogueSelectLevelPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Missions.Components.ChessRogueMainMissionReplayPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMainPageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Rogue/DLC/Dice/DiceEnterPage.prefab"
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
  L4_2 = "Animator_Root/Root/BtnClose"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.exit_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Animator_Root/Root/BtnBack"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.return_btn = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueMainPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueMainPanelBinder
  L5_2 = "Animator_Root/Root/DiceEnterMainPanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.main_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueSelectLevelPanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueSelectLevelPanelBinder
  L5_2 = "Animator_Root/Root/DicEnterBattlePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.level_select_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_find
  L3_2 = "Animator_Root/PictureBg"
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.bg_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Animator
  L4_2 = "Animator_Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.root_animator = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = "Animator_Root/Root"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.prefab_load_meta = L1_2
end
L0_1._on_bind = L1_1
return L0_1
