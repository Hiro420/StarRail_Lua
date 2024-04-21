local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingEnterPuzzleTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingEnterPuzzleTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.WolfBroShootingModule
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  A0_2._gun_play_game_mode = A3_2
  L5_2 = A4_2.maze_puzzle_level_row
  A0_2._maze_puzzle_level_row = L5_2
  L5_2 = A4_2.maze_puzzle_level_row
  L5_2 = L5_2.GunLevel
  A0_2._gun_play_level = L5_2
  L5_2 = A4_2.is_lock
  A0_2._is_lock = L5_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazePuzzleWolfGunPlayLevelExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._gun_play_game_mode
  L2_2 = #L2_2
  L3_2 = A0_2._gun_play_level
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = L1_2.QuestList
  L4_2 = L4_2[0]
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_completed
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2.Status
  L6_2 = CS
  L6_2 = L6_2.LEOGBBOPKKO
  L6_2 = L6_2.CMOFEAFMGAK
  L5_2 = L5_2 == L6_2
  L3_2(L4_2, L5_2)
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.CheckShootingLevelIsLockByPreLevel
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_locked
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1.update_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_locked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = G
  L3_2 = L3_2.UITextUtils
  L3_2 = L3_2.GetEnRomanNumberTextID
  L4_2 = A0_2._gun_play_level
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazePuzzleWolfGunPlayLevelExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._gun_play_game_mode
  L2_2 = #L2_2
  L3_2 = A0_2._gun_play_level
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = L1_2.QuestList
  L4_2 = L4_2[0]
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_completed
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2.Status
  L6_2 = CS
  L6_2 = L6_2.LEOGBBOPKKO
  L6_2 = L6_2.CMOFEAFMGAK
  L5_2 = L5_2 == L6_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.update_view
  L3_2(L4_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_unselect = L3_1
return L0_1
