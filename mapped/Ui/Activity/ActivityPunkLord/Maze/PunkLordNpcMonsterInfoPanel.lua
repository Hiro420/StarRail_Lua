local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Maze.MazeTarget.NpcMonsterInfoPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PunkLordModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PunkLordNpcMonsterInfoPanel"
L3_1 = G
L3_1 = L3_1.NpcMonsterInfoPanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.CurPunkLordInstance
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.PunkLordDataRef
  L2_2 = L2_2.CurHP
  L3_2 = L1_2.PunkLordDataRef
  L3_2 = L3_2.MaxHP
  L2_2 = L2_2 / L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.punklord_hp_progress_bar
  L3_2.fillAmount = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.punklord_hp_progress_bar2
  L3_2.fillAmount = L2_2
end
L1_1.refresh_monster_hp = L2_1
return L1_1
