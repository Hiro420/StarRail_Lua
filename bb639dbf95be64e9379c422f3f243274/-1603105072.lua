local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Battle.RogueNousBattleBossBPBuffItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Battle.RogueNousBattleBossBPBuffItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousBattleBossBPBuffPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._buff_item_panels = L3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.IsInChessRogueMode
  L1_2 = L1_2()
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_cell_data_item
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.IsBossSelectDecayCell
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_25
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
  do return end
  ::lbl_25::
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_decay_maze_buff_rows
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_buff_list
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._buff_item_panels
    L7_2 = L7_2[L5_2]
    if L7_2 == nil then
      L8_2 = A0_2
      L7_2 = A0_2.instantiate_object
      L9_2 = A0_2._binder
      L9_2 = L9_2.prefab_load_meta
      L9_2 = L9_2.Prefab
      L10_2 = A0_2._binder
      L10_2 = L10_2.prefab_load_meta
      L10_2 = L10_2.transform
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.RogueNousBattleBossBPBuffItemPanel
      L11_2 = G
      L11_2 = L11_2.RogueNousBattleBossBPBuffItemPanelBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.bind
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      L9_2 = A0_2._buff_item_panels
      L9_2[L5_2] = L8_2
    end
    L7_2 = A0_2._buff_item_panels
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_buff_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2.ChessRogueData
  L2_2 = L2_2.AreaInfo
  L3_2 = L2_2
  L2_2 = L2_2.GetCurCellDataItem
  L2_2 = L2_2(L3_2)
  return L2_2
end
L0_1._get_cur_cell_data_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L2_2.BattleInstanceRef
  L3_2 = L3_2.BattleLineupDataRef
  L3_2 = L3_2.Context
  L5_2 = L3_2
  L4_2 = L3_2.GetAllMazeBuffDataList
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    L5_2 = nil
    return L5_2
  end
  L5_2 = {}
  L6_2 = 0
  L7_2 = L4_2.Count
  L7_2 = L7_2 - 1
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L4_2[L9_2]
    L11_2 = G
    L11_2 = L11_2.BuffUtils
    L11_2 = L11_2.GetMazeBuffData
    L12_2 = L10_2.ID
    L13_2 = L10_2.Level
    L11_2 = L11_2(L12_2, L13_2)
    if L11_2 ~= nil then
      L12_2 = L11_2.ID
      L5_2[L12_2] = L11_2
    end
  end
  L6_2 = {}
  L8_2 = A1_2
  L7_2 = A1_2.GetExtraDecayData
  L7_2 = L7_2(L8_2)
  L8_2 = L7_2
  L7_2 = L7_2.GetAddedMazeBuffIDs
  L7_2 = L7_2(L8_2)
  L8_2 = 0
  L9_2 = L7_2.Count
  L9_2 = L9_2 - 1
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = L7_2[L11_2]
    L12_2 = L5_2[L12_2]
    if L12_2 ~= nil then
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = L6_2
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
  end
  return L6_2
end
L0_1._get_decay_maze_buff_rows = L1_1
return L0_1
