local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoMapPageCommand"
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
L2_1 = L2_1.RaidModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.StoryLineModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.StoryLineData
L4_1 = L4_1.MAIN_LINE_ID
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.MissionModule
L0_1._text_already_open = "UIText_Goto_Error_01"
L0_1._text_entry_lock = "UIText_Goto_Error_02"
L6_1 = "Ui.Map3D.Map3DMainPage"
L7_1 = "Ui.Map.Map2DView.Map2DViewPage"
L8_1 = {}
L8_1.MainMap = 1
L8_1.SubMap2D = 2
L8_1.SubMap3D = 3
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2._is_game_mode_allow_map_open
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ConfirmDialogUtil
    L3_2 = L3_2.ShowOkHint
    L4_2 = "UIText_FuncLock_MapFuncDisable"
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.TextID
    L5_2 = L5_2.empty
    L3_2(L4_2, L5_2)
    L3_2 = false
    L4_2 = ""
    return L3_2, L4_2
  end
  L3_2 = A1_2.GotoType
  A0_2._goto_type = L3_2
  L3_2 = L0_1.super
  L3_2 = L3_2.get_params
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._story_line_id_by_goto_type
  L6_2 = A1_2.GotoType
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._check_goto_map_type
  L7_2 = A2_2
  L8_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._goto_map_page
  L8_2 = L5_2
  L9_2 = A2_2
  L10_2 = L3_2
  L11_2 = L4_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.execute = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L6_2 = A0_2
  L5_2 = A0_2._get_param_data
  L7_2 = A2_2
  L8_2 = A3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  if L7_2 ~= nil then
    L9_2 = L5_1
    L10_2 = L9_2
    L9_2 = L9_2.GetSubMissionData
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      A4_2 = L9_2.StoryLineID
    end
  end
  L9_2 = L8_1.MainMap
  if A1_2 == L9_2 then
    L10_2 = A0_2
    L9_2 = A0_2._goto_main_map_page
    L11_2 = A2_2
    L12_2 = A3_2
    L13_2 = A4_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
  else
    L9_2 = L8_1.SubMap2D
    if A1_2 == L9_2 then
      L9_2 = G
      L9_2 = L9_2.new
      L10_2 = L7_1
      L9_2 = L9_2(L10_2)
      if L7_2 then
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.Client
        L10_2 = L10_2.GlobalVars
        L10_2 = L10_2.s_ModuleManager
        L10_2 = L10_2.MissionModule
        L11_2 = L10_2
        L10_2 = L10_2.GetSubMissionInfoConfig
        L12_2 = L7_2
        L10_2 = L10_2(L11_2, L12_2)
        L11_2 = L10_2 or L11_2
        if L10_2 then
          L11_2 = L10_2.WayPointFloorID
        end
        L12_2 = CS
        L12_2 = L12_2.RPG
        L12_2 = L12_2.Client
        L12_2 = L12_2.BigMapUtils
        L12_2 = L12_2.GetEntranceIDByFloorID
        L13_2 = L11_2
        L12_2 = L12_2(L13_2)
        L5_2 = L12_2
      end
      L11_2 = L9_2
      L10_2 = L9_2.init
      L12_2 = L5_2
      L13_2 = L6_2
      L14_2 = L7_2
      L10_2(L11_2, L12_2, L13_2, L14_2)
      L11_2 = L9_2
      L10_2 = L9_2.set_story_line_id
      L12_2 = A4_2
      L10_2(L11_2, L12_2)
      L11_2 = L9_2
      L10_2 = L9_2.async_show
      L10_2(L11_2)
    else
      L9_2 = L8_1.SubMap3D
      if A1_2 == L9_2 then
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.GlobalVars
        L9_2 = L9_2.s_ModuleManager
        L9_2 = L9_2.AdventureModule
        L9_2 = L9_2.MapDef
        L10_2 = G
        L10_2 = L10_2.new
        L11_2 = L6_1
        L10_2 = L10_2(L11_2)
        L11_2 = nil
        if L5_2 then
          if L7_2 then
            L12_2 = CS
            L12_2 = L12_2.RPG
            L12_2 = L12_2.Client
            L12_2 = L12_2.GlobalVars
            L12_2 = L12_2.s_ModuleManager
            L12_2 = L12_2.MissionModule
            L13_2 = L12_2
            L12_2 = L12_2.GetSubMissionInfoConfig
            L14_2 = L7_2
            L12_2 = L12_2(L13_2, L14_2)
            L13_2 = CS
            L13_2 = L13_2.RPG
            L13_2 = L13_2.Client
            L13_2 = L13_2.BigMapUtils
            L13_2 = L13_2.GetRotatableRegionIndex
            L14_2 = L5_2
            L15_2 = L12_2.WayPointGroupID
            L13_2 = L13_2(L14_2, L15_2)
            L11_2 = L13_2
          elseif L6_2 then
            L12_2 = L1_1.TempShowMapMonsterData
            if L12_2 then
              L13_2 = L12_2.EntranceID
              if L5_2 == L13_2 then
                L13_2 = CS
                L13_2 = L13_2.RPG
                L13_2 = L13_2.Client
                L13_2 = L13_2.BigMapUtils
                L13_2 = L13_2.IsInRotatableRegion
                L14_2 = L5_2
                L15_2 = L12_2.MapNpcDef
                L15_2 = L15_2.GroupInstanceID
                L16_2 = L12_2.DimensionID
                L13_2 = L13_2(L14_2, L15_2, L16_2)
                if L13_2 then
                  L13_2 = CS
                  L13_2 = L13_2.RPG
                  L13_2 = L13_2.Client
                  L13_2 = L13_2.BigMapUtils
                  L13_2 = L13_2.GetRotatableRegionIndex
                  L14_2 = L5_2
                  L15_2 = L12_2.MapNpcDef
                  L15_2 = L15_2.GroupInstanceID
                  L13_2 = L13_2(L14_2, L15_2)
                  L11_2 = L13_2
              end
            end
            else
              L13_2 = L8_2 or L13_2
              if not L8_2 then
                L13_2 = CS
                L13_2 = L13_2.RPG
                L13_2 = L13_2.Client
                L13_2 = L13_2.BigMapUtils
                L13_2 = L13_2.GetGroupIDByMappingInfoID
                L14_2 = L5_2
                L15_2 = L6_2
                L13_2 = L13_2(L14_2, L15_2)
              end
              L14_2 = CS
              L14_2 = L14_2.RPG
              L14_2 = L14_2.Client
              L14_2 = L14_2.BigMapUtils
              L14_2 = L14_2.GetRotatableRegionIndex
              L15_2 = L5_2
              L16_2 = L13_2
              L14_2 = L14_2(L15_2, L16_2)
              L11_2 = L14_2
            end
          end
        else
          L12_2 = CS
          L12_2 = L12_2.RPG
          L12_2 = L12_2.GameCore
          L12_2 = L12_2.AdventureStatic
          L13_2 = L12_2
          L12_2 = L12_2.GetCurrentGameModeType
          L12_2 = L12_2(L13_2)
          L13_2 = CS
          L13_2 = L13_2.RPG
          L13_2 = L13_2.GameCore
          L13_2 = L13_2.GameModeType
          L13_2 = L13_2.Raid
          if L12_2 == L13_2 then
            L5_2 = L9_2.CurMapEntryID
          else
            L13_2 = CS
            L13_2 = L13_2.RPG
            L13_2 = L13_2.Client
            L13_2 = L13_2.BigMapUtils
            L13_2 = L13_2.GetCurShowEntranceID
            L13_2 = L13_2()
            L5_2 = L13_2
          end
          L13_2 = L9_2.MapRotationInfo
          L11_2 = L13_2.CurrentRegionIndex
        end
        L13_2 = L10_2
        L12_2 = L10_2.init
        L14_2 = L5_2
        L15_2 = L11_2
        L16_2 = L6_2
        L17_2 = L7_2
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
        L13_2 = L10_2
        L12_2 = L10_2.set_story_line_id
        L14_2 = A4_2
        L12_2(L13_2, L14_2)
        L13_2 = L10_2
        L12_2 = L10_2.async_show
        L12_2(L13_2)
      end
    end
  end
end
L0_1._goto_map_page = L9_1
function L9_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L4_2 = #A1_2
    if 0 < L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._try_load_and_async_show_map_page
      L6_2 = A1_2
      L7_2 = A3_2
      L4_2(L5_2, L6_2, L7_2)
  end
  else
    L4_2 = GotoType2Page
    L5_2 = A0_2._goto_type
    L4_2 = L4_2[L5_2]
    L5_2 = G
    L5_2 = L5_2.new
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = #A2_2
    if 0 < L6_2 then
      L7_2 = L5_2
      L6_2 = L5_2.init
      L8_2 = unpack
      L9_2 = A2_2
      L8_2, L9_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2)
    else
      L7_2 = L5_2
      L6_2 = L5_2.init
      L6_2(L7_2)
    end
    L7_2 = L5_2
    L6_2 = L5_2.set_story_line_id
    L8_2 = A3_2
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.async_show
    L6_2(L7_2)
  end
end
L0_1._goto_main_map_page = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.CurrentPlaneCanSwitchLine
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = L4_1
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.StoryLineAreaSwitch
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L2_2 = L3_1.CurrentLine
    L2_2 = L2_2.ID
    return L2_2
  else
    L2_2 = L4_1
    return L2_2
  end
end
L0_1._story_line_id_by_goto_type = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.ParamIntList
  L2_2 = L2_2.Length
  if 0 < L2_2 then
    L2_2 = A1_2.ParamIntList
    L2_2 = L2_2[0]
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.BigMapUtils
    L3_2 = L3_2.IsEntryUnlocked
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = false
      L4_2 = L0_1._text_entry_lock
      return L3_2, L4_2
    end
  end
  L2_2 = L1_1.LockMapToastString
  L3_2 = L1_1.IsLockMapSwitch
  if L3_2 then
    L3_2 = false
    L4_2 = L2_2
    return L3_2, L4_2
  end
  L3_2 = true
  L4_2 = ""
  return L3_2, L4_2
end
L0_1._check_goto_condition = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AdventureModule
  L2_2 = L2_2.MapDef
  L2_2 = L2_2.CurrentGameMode
  L3_2 = A1_2.GotoType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GotoType
  L4_2 = L4_2.AreaSwitch
  L4_2 = #L4_2
  if L3_2 ~= L4_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameModeType
  L3_2 = L3_2.Raid
  if L2_2 == L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = true
  return L3_2
end
L0_1._is_game_mode_allow_map_open = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A1_2[1]
  L4_2 = A1_2[3]
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AreaMapConfigExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = GotoType2Page
  L7_2 = A0_2._goto_type
  L6_2 = L6_2[L7_2]
  L7_2 = G
  L7_2 = L7_2.new
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  if L5_2 then
    L8_2 = L5_2.IsUnlockAfterEnter
    if L8_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.BigMapUtils
      L8_2 = L8_2.IsEntryUnlockedExtend
      L9_2 = L3_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L9_2 = L7_2
        L8_2 = L7_2.init
        L10_2 = unpack
        L11_2 = A1_2
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2)
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      else
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.Client
        L8_2 = L8_2.BigMapUtils
        L8_2 = L8_2.GetFromEntranceIDByToEntranceID
        L9_2 = L3_2
        L8_2 = L8_2(L9_2)
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.BigMapUtils
        L9_2 = L9_2.GetFloorConnectivityRowByToEntranceID
        L10_2 = L3_2
        L9_2 = L9_2(L10_2)
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.Client
        L10_2 = L10_2.BigMapUtils
        L10_2 = L10_2.GetMappingInfoID
        L11_2 = L8_2
        L12_2 = L9_2.WayPointGroupID
        L13_2 = L9_2.WayPointEntityID
        L10_2 = L10_2(L11_2, L12_2, L13_2)
        if 0 < L8_2 then
          L11_2 = CS
          L11_2 = L11_2.RPG
          L11_2 = L11_2.Client
          L11_2 = L11_2.BigMapUtils
          L11_2 = L11_2.IsEntryUnlocked
          L12_2 = L8_2
          L11_2 = L11_2(L12_2)
          if L11_2 then
            if L4_2 == nil then
              L12_2 = L7_2
              L11_2 = L7_2.init
              L13_2 = L8_2
              L14_2 = L10_2
              L11_2(L12_2, L13_2, L14_2)
            else
              L12_2 = L7_2
              L11_2 = L7_2.init
              L13_2 = L8_2
              L14_2 = nil
              L15_2 = L4_2
              L11_2(L12_2, L13_2, L14_2, L15_2)
            end
        end
        else
          L11_2 = G
          L11_2 = L11_2.NotifyManager
          L11_2 = L11_2.notify
          L12_2 = G
          L12_2 = L12_2.CS
          L12_2 = L12_2.NotifyType
          L12_2 = L12_2.UIPileToastMessageTextID
          L13_2 = L0_1._text_entry_lock
          L11_2(L12_2, L13_2)
          return
        end
      end
  end
  else
    L9_2 = L7_2
    L8_2 = L7_2.init
    L10_2 = unpack
    L11_2 = A1_2
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L9_2 = L7_2
  L8_2 = L7_2.set_story_line_id
  L10_2 = A2_2
  L8_2(L9_2, L10_2)
  L9_2 = L7_2
  L8_2 = L7_2.async_show
  L8_2(L9_2)
end
L0_1._try_load_and_async_show_map_page = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._check_goto_sub_map_3d
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    L3_2 = L8_1.SubMap3D
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._check_goto_sub_map_2d
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if L3_2 then
    L3_2 = L8_1.SubMap2D
    return L3_2
  end
  L3_2 = L8_1.MainMap
  return L3_2
end
L0_1._check_goto_map_type = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A0_2
  L3_2 = A0_2._get_param_data
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AdventureStatic
  L8_2 = L7_2
  L7_2 = L7_2.GetCurrentGameModeType
  L7_2 = L7_2(L8_2)
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.GameModeType
  L8_2 = L8_2.Raid
  if L7_2 == L8_2 then
    L8_2 = L2_1.CurrentTreasureChallengeSnapShot
    L8_2 = L8_2.CurrentRaidID
    L9_2 = L2_1.CurrentTreasureChallengeSnapShot
    L9_2 = L9_2.CurrentRaidLevel
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.RaidConfigExcelTable
    L10_2 = L10_2.GetData
    L11_2 = L8_2
    L12_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L10_2.IsHiddenAreaMap
    if L11_2 then
      L11_2 = false
      return L11_2
    end
  end
  if L3_2 == nil then
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.Map3DUtils
    L8_2 = L8_2.ShouldShow3DMap
    L8_2 = L8_2()
    if L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  if L3_2 and L5_2 then
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.GlobalVars
    L8_2 = L8_2.s_ModuleManager
    L8_2 = L8_2.MissionModule
    L9_2 = L8_2
    L8_2 = L8_2.GetSubMissionInfoConfig
    L10_2 = L5_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.BigMapUtils
    L9_2 = L9_2.IsInRotatableRegion
    L10_2 = L3_2
    L11_2 = L8_2.WayPointGroupID
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L9_2 = true
      return L9_2
    end
  end
  if L3_2 and L4_2 then
    if L6_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.BigMapUtils
      L8_2 = L8_2.IsInRotatableRegion
      L9_2 = L3_2
      L10_2 = L6_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = true
        return L8_2
      end
    else
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.BigMapUtils
      L8_2 = L8_2.IsInRotatableRegionByMappingInfoID
      L9_2 = L3_2
      L10_2 = L4_2
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        L8_2 = true
        return L8_2
      end
    end
  end
  L8_2 = L1_1.TempShowMapMonsterData
  if L3_2 and L8_2 then
    L9_2 = L8_2.EntranceID
    if L3_2 == L9_2 then
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.BigMapUtils
      L9_2 = L9_2.IsInRotatableRegion
      L10_2 = L3_2
      L11_2 = L8_2.MapNpcDef
      L11_2 = L11_2.GroupInstanceID
      L12_2 = L8_2.DimensionID
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      if L9_2 then
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.Client
        L9_2 = L9_2.BigMapUtils
        L9_2 = L9_2.IsMapSectionLighten
        L10_2 = L3_2
        L11_2 = L8_2.SectionID
        return L9_2(L10_2, L11_2)
      end
    end
  end
  L9_2 = false
  return L9_2
end
L0_1._check_goto_sub_map_3d = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L4_2 = A0_2
  L3_2 = A0_2._get_param_data
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_ModuleManager
  L7_2 = L7_2.AdventureModule
  L7_2 = L7_2.MapDef
  L8_2 = L7_2.CurMapEntryID
  if L3_2 == nil or L8_2 == L3_2 and L4_2 == nil then
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.SubMapConfigExcelTable
    L9_2 = L9_2.dataDict
    L10_2 = pairs
    L11_2 = L9_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L14_2.Type
      L16_2 = CS
      L16_2 = L16_2.RPG
      L16_2 = L16_2.GameCore
      L16_2 = L16_2.MinimapAreaType
      L16_2 = L16_2.AnotherFloor
      if L15_2 == L16_2 then
        L15_2 = CS
        L15_2 = L15_2.RPG
        L15_2 = L15_2.GameCore
        L15_2 = L15_2.MapEntryExcelTable
        L15_2 = L15_2.GetData
        L16_2 = L14_2.MapEntranceID
        L15_2 = L15_2(L16_2)
        if L15_2 then
          L16_2 = L15_2.FloorID
          L17_2 = L7_2.FloorID
          if L16_2 == L17_2 then
            L16_2 = CS
            L16_2 = L16_2.RPG
            L16_2 = L16_2.Client
            L16_2 = L16_2.BigMapUtils
            L16_2 = L16_2.IsMapContainHideArea
            L17_2 = L7_2
            L16_2 = L16_2(L17_2)
            if L16_2 then
              L17_2 = A0_2
              L16_2 = A0_2._get_show_player_position
              L16_2 = L16_2(L17_2)
              L17_2 = L16_2 or L17_2
              if L16_2 then
                L17_2 = CS
                L17_2 = L17_2.RPG
                L17_2 = L17_2.Client
                L17_2 = L17_2.BigMapUtils
                L17_2 = L17_2.GetPlayerAreaData
                L18_2 = L7_2
                L19_2 = L16_2
                L17_2 = L17_2(L18_2, L19_2)
              end
              if L17_2 then
                L18_2 = L17_2.AreaID
                if L18_2 then
                  L18_2 = L17_2.AreaID
                  if 0 < L18_2 then
                    L18_2 = L17_2.AreaID
                    L19_2 = L14_2.AreaID
                    L18_2 = L18_2 == L19_2
                    return L18_2
                  end
                end
              end
            else
              L16_2 = true
              return L16_2
            end
          end
        end
      end
    end
  end
  if L3_2 and L5_2 then
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.GlobalVars
    L9_2 = L9_2.s_ModuleManager
    L9_2 = L9_2.MissionModule
    L10_2 = L9_2
    L9_2 = L9_2.GetSubMissionInfoConfig
    L11_2 = L5_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L9_2 or L10_2
    if L9_2 then
      L10_2 = L9_2.WayPointFloorID
    end
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.Client
    L11_2 = L11_2.BigMapUtils
    L11_2 = L11_2.GetEntranceIDByFloorID
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.GameCore
    L12_2 = L12_2.SubMapConfigExcelTable
    L12_2 = L12_2.dataDict
    L13_2 = pairs
    L14_2 = L12_2
    L13_2, L14_2, L15_2 = L13_2(L14_2)
    for L16_2, L17_2 in L13_2, L14_2, L15_2 do
      L18_2 = L17_2.MapEntranceID
      if L18_2 == L11_2 then
        L18_2 = L17_2.Type
        L19_2 = CS
        L19_2 = L19_2.RPG
        L19_2 = L19_2.GameCore
        L19_2 = L19_2.MinimapAreaType
        L19_2 = L19_2.AnotherFloor
        if L18_2 == L19_2 then
          L18_2 = CS
          L18_2 = L18_2.RPG
          L18_2 = L18_2.Client
          L18_2 = L18_2.BigMapUtils
          L18_2 = L18_2.IsMapContainHideAreaByEntranceID
          L19_2 = L11_2
          L18_2 = L18_2(L19_2)
          if L18_2 then
            L18_2 = CS
            L18_2 = L18_2.RPG
            L18_2 = L18_2.Client
            L18_2 = L18_2.BigMapUtils
            L18_2 = L18_2.GetMapTargetAreaIDByEntranceID
            L19_2 = L9_2.WayPointGroupID
            L20_2 = L9_2.WayPointEntityID
            L21_2 = L11_2
            L18_2 = L18_2(L19_2, L20_2, L21_2)
            L19_2 = L17_2.AreaID
            L19_2 = L18_2 == L19_2
            return L19_2
          else
            L18_2 = true
            return L18_2
          end
        end
      end
    end
  end
  if L3_2 and L4_2 ~= nil then
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.SubMapConfigExcelTable
    L9_2 = L9_2.dataDict
    L10_2 = pairs
    L11_2 = L9_2
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    for L13_2, L14_2 in L10_2, L11_2, L12_2 do
      L15_2 = L14_2.Type
      L16_2 = CS
      L16_2 = L16_2.RPG
      L16_2 = L16_2.GameCore
      L16_2 = L16_2.MinimapAreaType
      L16_2 = L16_2.AnotherFloor
      if L15_2 == L16_2 then
        L15_2 = L14_2.MapEntranceID
        if L15_2 == L3_2 then
          L15_2 = L6_2 or L15_2
          if not L6_2 then
            L15_2 = 0
          end
          L16_2 = CS
          L16_2 = L16_2.RPG
          L16_2 = L16_2.Client
          L16_2 = L16_2.BigMapUtils
          L16_2 = L16_2.IsMapContainHideAreaByEntranceID
          L17_2 = L3_2
          L16_2 = L16_2(L17_2)
          if L16_2 then
            L16_2 = CS
            L16_2 = L16_2.RPG
            L16_2 = L16_2.Client
            L16_2 = L16_2.BigMapUtils
            L16_2 = L16_2.IsInAppointAreaIDByMappingInfoID
            L17_2 = L3_2
            L18_2 = L4_2
            L19_2 = L14_2.AreaID
            L20_2 = L15_2
            L16_2 = L16_2(L17_2, L18_2, L19_2, L20_2)
            if L16_2 then
              L16_2 = true
              return L16_2
            end
          else
            L16_2 = true
            return L16_2
          end
        end
      end
    end
  end
  L9_2 = L1_1.TempShowMapMonsterData
  if L3_2 and L9_2 then
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.SubMapConfigExcelTable
    L10_2 = L10_2.dataDict
    L11_2 = pairs
    L12_2 = L10_2
    L11_2, L12_2, L13_2 = L11_2(L12_2)
    for L14_2, L15_2 in L11_2, L12_2, L13_2 do
      L16_2 = L15_2.MapEntranceID
      if L16_2 == L3_2 then
        L16_2 = L15_2.Type
        L17_2 = CS
        L17_2 = L17_2.RPG
        L17_2 = L17_2.GameCore
        L17_2 = L17_2.MinimapAreaType
        L17_2 = L17_2.AnotherFloor
        if L16_2 == L17_2 then
          L16_2 = CS
          L16_2 = L16_2.RPG
          L16_2 = L16_2.Client
          L16_2 = L16_2.BigMapUtils
          L16_2 = L16_2.IsMapContainHideAreaByEntranceID
          L17_2 = L3_2
          L16_2 = L16_2(L17_2)
          if L16_2 then
            L16_2 = CS
            L16_2 = L16_2.RPG
            L16_2 = L16_2.Client
            L16_2 = L16_2.BigMapUtils
            L16_2 = L16_2.GetMapTargetAreaIDByEntranceID
            L17_2 = L9_2.GroupID
            L18_2 = L9_2.InstanceId
            L19_2 = L3_2
            L16_2 = L16_2(L17_2, L18_2, L19_2)
            L17_2 = L15_2.AreaID
            L17_2 = L16_2 == L17_2
            return L17_2
          else
            L16_2 = true
            return L16_2
          end
        end
      end
    end
  end
  L10_2 = false
  return L10_2
end
L0_1._check_goto_sub_map_2d = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  if A1_2 then
    L7_2 = #A1_2
    if 0 < L7_2 then
      L3_2 = A1_2[1]
      L4_2 = A1_2[2]
      L5_2 = A1_2[3]
      L6_2 = A1_2[4]
  end
  else
    L3_2 = A2_2[1]
    L4_2 = A2_2[2]
    L5_2 = A2_2[3]
    L6_2 = A2_2[4]
  end
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = L6_2
  return L7_2, L8_2, L9_2, L10_2
end
L0_1._get_param_data = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.TeamManager
    if L2_2 then
      L2_2 = L1_2.TeamManager
      L2_2 = L2_2.CurrentTeamLeader
    end
  end
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L3_2 = L2_2.UnityGO
    L3_2 = L3_2.transform
  end
  L4_2 = L3_2 or L4_2
  if L3_2 then
    L4_2 = L3_2.Position
    if not L4_2 then
      L4_2 = L3_2.position
    end
  end
  return L4_2
end
L0_1._get_show_player_position = L9_1
return L0_1
