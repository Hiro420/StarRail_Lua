local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoMonsterTrackCommand"
L2_1 = "Logic.Goto.BaseCommand"
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BigMapModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.StoryLineModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "NPCMonsterTrack_Enable_GameModeType"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.ArrayValue
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A1_2.GotoType
  L4_2 = L0_1.super
  L4_2 = L4_2.get_params
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AdventureStatic
  L6_2 = L5_2
  L5_2 = L5_2.GetCurrentGameModeType
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2._check_contain_game_mode
  L8_2 = L3_1
  L9_2 = #L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L6_2 = nil
    if A2_2 then
      L7_2 = #A2_2
      if 0 < L7_2 then
        L6_2 = A2_2[1]
    end
    else
      L7_2 = #L4_2
      if 0 < L7_2 then
        L6_2 = L4_2[1]
      end
    end
    L7_2 = L2_1
    L8_2 = L7_2
    L7_2 = L7_2.IsMainLine
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.Client
      L7_2 = L7_2.GlobalVars
      L7_2 = L7_2.s_UIManager
      L8_2 = L7_2
      L7_2 = L7_2.TopPage
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2.Name
      L9_2 = G
      L9_2 = L9_2.MapUtil
      L9_2 = L9_2.Map_Main_Page
      if L8_2 == L9_2 then
        L9_2 = G
        L9_2 = L9_2.NotifyManager
        L9_2 = L9_2.notify
        L10_2 = G
        L10_2 = L10_2.CS
        L10_2 = L10_2.NotifyType
        L10_2 = L10_2.UIPileToastMessageTextID
        L11_2 = "UIText_Goto_Error_01"
        L9_2(L10_2, L11_2)
      else
        L9_2 = L1_1
        L10_2 = L9_2
        L9_2 = L9_2.GotoMonsterTrackID
        L11_2 = L6_2
        L9_2(L10_2, L11_2)
      end
    else
      L7_2 = G
      L7_2 = L7_2.StoryLineUtils
      L7_2 = L7_2.switch_to_main_line_by_monster_track
      L8_2 = L6_2
      L7_2(L8_2)
    end
  else
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ConfirmDialogUtil
    L6_2 = L6_2.ShowOkHint
    L7_2 = "UIText_FuncLock_MapFuncDisable"
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.TextID
    L8_2 = L8_2.empty
    L6_2(L7_2, L8_2)
  end
end
L0_1.execute = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = 0
  L4_2 = A1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L7_2 = L7_2.UintValue
    if L7_2 == A2_2 then
      L8_2 = true
      return L8_2
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._check_contain_game_mode = L4_1
return L0_1
