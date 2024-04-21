local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "MissionUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.StoryLineModule
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = {}
  L5_2 = 0
  L6_2 = A0_2.Length
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L4_2
    L11_2 = L0_1._format_item_display_data
    L12_2 = A0_2[L8_2]
    L13_2 = A1_2
    L14_2 = A2_2
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  end
  L5_2 = L0_1.sort_mission_items
  L6_2 = L4_2
  L7_2 = A3_2
  L5_2(L6_2, L7_2)
  return L4_2
end
L0_1.format_item_display_datas = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = {}
  L3_2.ConfigID = A0_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.InventoryModule
  L5_2 = L4_2
  L4_2 = L4_2.GetItemCountByConfigID
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.Num = L4_2
  L3_2.IsHide = false
  L3_2.IsInvisible = false
  L4_2 = 0
  L5_2 = A1_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2[L7_2]
    L9_2 = L3_2.ConfigID
    if L8_2 == L9_2 then
      L3_2.IsHide = true
    end
  end
  if A2_2 ~= nil then
    L4_2 = A2_2.Length
    if L4_2 then
      L4_2 = 0
      L5_2 = A2_2.Length
      L5_2 = L5_2 - 1
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = A2_2[L7_2]
        L9_2 = L3_2.ConfigID
        if L8_2 == L9_2 then
          L3_2.IsInvisible = true
        end
      end
    end
  end
  L3_2.isChoose = false
  return L3_2
end
L0_1._format_item_display_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MissionBeginType
  L3_2 = L3_2.MultiSequence
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.MissionModule
    L3_2 = L2_2
    L2_2 = L2_2.GetMainMissionRow
    L4_2 = A1_2.Value
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MainMissionTypeConfigExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2.Type
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2.SafeSetTextID
    L6_2 = "UIText_Mission_BeginType_Tips_2"
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L3_2.TypeName
    L7_2 = L7_2(L8_2)
    L8_2 = G
    L8_2 = L8_2.TextmapStatic
    L8_2 = L8_2.GetText
    L9_2 = L2_2.Name
    L8_2, L9_2 = L8_2(L9_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  else
    L2_2 = A1_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MissionBeginType
    L3_2 = L3_2.PlayerLevel
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.SafeSetTextID
      L4_2 = "UIText_Mission_BeginType_Tips_5"
      L5_2 = A1_2.Value
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A1_2.Type
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.MissionBeginType
      L3_2 = L3_2.WorldLevel
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2.SafeSetTextID
        L4_2 = "UIText_Mission_BeginType_Tips_6"
        L5_2 = A1_2.Value
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1.set_begin_text_by_mission_condition = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MissionBeginType
  L2_2 = L2_2.MultiSequence
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionModule
    L2_2 = L1_2
    L1_2 = L1_2.GetMainMissionRow
    L3_2 = A0_2.Value
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MainMissionTypeConfigExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2.Type
    L2_2 = L2_2(L3_2)
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = "UIText_Mission_TakeType_Tips_4"
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = L2_2.TypeName
    L5_2 = L5_2(L6_2)
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L1_2.Name
    L6_2, L7_2 = L6_2(L7_2)
    return L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = A0_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MissionBeginType
    L2_2 = L2_2.PlayerLevel
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.TextmapStatic
      L1_2 = L1_2.GetText
      L2_2 = "UIText_Mission_TakeType_Tips_5"
      L3_2 = A0_2.Value
      return L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.Type
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.MissionBeginType
      L2_2 = L2_2.WorldLevel
      if L1_2 == L2_2 then
        L1_2 = G
        L1_2 = L1_2.TextmapStatic
        L1_2 = L1_2.GetText
        L2_2 = "UIText_Mission_TakeType_Tips_6"
        L3_2 = A0_2.Value
        return L1_2(L2_2, L3_2)
      end
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_take_string_by_mission_condition = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A0_2 then
    return
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = L0_1._array_contains
    L3_3 = A1_2
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 then
      L2_3 = L0_1._array_contains
      L3_3 = A1_2
      L4_3 = A1_3
      L2_3 = L2_3(L3_3, L4_3)
      if not L2_3 then
        L2_3 = false
        return L2_3
      end
    end
    L2_3 = L0_1._array_contains
    L3_3 = A1_2
    L4_3 = A0_3
    L2_3 = L2_3(L3_3, L4_3)
    if not L2_3 then
      L2_3 = L0_1._array_contains
      L3_3 = A1_2
      L4_3 = A1_3
      L2_3 = L2_3(L3_3, L4_3)
      if L2_3 then
        L2_3 = true
        return L2_3
      end
    end
    L2_3 = A0_3.Num
    if L2_3 ~= 0 then
      L2_3 = A1_3.Num
      if L2_3 == 0 then
        L2_3 = true
        return L2_3
      end
    end
    L2_3 = A0_3.Num
    if L2_3 == 0 then
      L2_3 = A1_3.Num
      if L2_3 ~= 0 then
        L2_3 = false
        return L2_3
      end
    end
    L2_3 = A0_3.ConfigID
    L3_3 = A1_3.ConfigID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
end
L0_1.sort_mission_items = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = 0
  L3_2 = A0_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L7_2 = A1_2.ConfigID
    if L6_2 == L7_2 then
      L6_2 = true
      return L6_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._array_contains = L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  if L0_2 ~= nil then
    L1_2 = L0_2.ADPInitParams
    if L1_2 ~= nil then
      goto lbl_15
    end
  end
  L1_2 = false
  do return L1_2 end
  ::lbl_15::
  L1_2 = L0_2.ADPInitParams
  L1_2 = L1_2.Map
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  return L1_2
end
L0_1._get_map = L3_1
L3_1 = {}
L3_1.title = "UIText_Mission_NpcOccuoation_Tips_Title"
L3_1.context = "UIText_Mission_NpcOccuoation_Tips_Confirm"
L3_1.ok = "UIText_Mission_NpcOccuoation_Tips_Confirm_True"
L3_1.cancel = "UIText_Mission_NpcOccuoation_Tips_Confirm_False"
L4_1 = {}
L4_1.title = "UIText_Mission_NpcOccuoation_Tips_Title"
L4_1.context = "UIText_Mission_FuncBtnOccuoation_Tips_Confirm"
L4_1.ok = "UIText_Mission_NpcOccuoation_Tips_Confirm_True"
L4_1.cancel = "UIText_Mission_NpcOccuoation_Tips_Confirm_False"
L5_1 = {}
L5_1.title = "UIText_Mission_NpcOccuoation_Tips_Title"
L5_1.context = "UIText_Mission_AreaOccuoation_Tips_Confirm"
L5_1.ok = "UIText_Mission_NpcOccuoation_Tips_Confirm_True"
L5_1.cancel = "UIText_Mission_NpcOccuoation_Tips_Confirm_False"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L0_1.check_story_line_satisfied
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    function L2_2()
      local L0_3, L1_3, L2_3
      L0_3 = L1_1
      L1_3 = L0_3
      L0_3 = L0_3.MutuallySetTrackingMission
      L2_3 = A0_2.ID
      L0_3(L1_3, L2_3)
    end
    L3_2 = G
    L3_2 = L3_2.StoryLineUtils
    L3_2 = L3_2.switch_line_with_confirm
    L4_2 = A0_2.StoryLineID
    L5_2 = L2_2
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.StoryLineSwitchReason
    L6_2 = L6_2.Mission
    L7_2 = A0_2.ID
    L3_2(L4_2, L5_2, L6_2, L7_2)
    return
  end
  L2_2 = L0_1.check_mission_conflict
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L5_2 = nil
  if L2_2 then
    L5_2 = L3_1
  elseif L4_2 then
    L5_2 = L4_1
  elseif L3_2 then
    L5_2 = L5_1
  end
  if L2_2 or L3_2 or L4_2 then
    L6_2 = L0_1._show_track_confirm_dialog
    L7_2 = L5_2
    L8_2 = A0_2
    L9_2 = A1_2
    L6_2(L7_2, L8_2, L9_2)
  else
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.MutuallySetTrackingMission
    L8_2 = A0_2.ID
    L6_2(L7_2, L8_2)
    if A1_2 ~= nil then
      L6_2 = A1_2
      L6_2()
    end
  end
end
L0_1.set_track_mission_with_check = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ConfirmDialogUtil
  L3_2 = L3_2.ShowOkCancelHint
  L4_2 = A0_2.context
  L5_2 = A0_2.title
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = L1_1
      L2_3 = L1_3
      L1_3 = L1_3.MutuallySetTrackingMission
      L3_3 = A1_2.ID
      L1_3(L2_3, L3_3)
      L1_3 = A2_2
      if L1_3 ~= nil then
        L1_3 = A2_2
        L1_3()
      end
    end
  end
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetComponentOK
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2.ok
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.GetComponentCancel
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A0_2.cancel
  L4_2(L5_2, L6_2)
end
L0_1._show_track_confirm_dialog = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1.CurrentLine
  L1_2 = L1_2.ID
  L2_2 = A0_2.StoryLineID
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.check_story_line_satisfied = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1._get_map
  L1_2 = L1_2()
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.IfMainMissionIsOccupied
  L4_2 = A0_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = false
  L4_2 = false
  L5_2 = false
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ConflictType
  L6_2 = L6_2.NPC
  if L2_2 == L6_2 then
    L3_2 = true
    L4_2 = false
  else
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ConflictType
    L6_2 = L6_2.Region
    if L2_2 == L6_2 then
      L3_2 = false
      L4_2 = true
    end
  end
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_GamePhaseManager
  L7_2 = L6_2
  L6_2 = L6_2.GetCurrentPhase
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L7_2 = L6_2.FuncBtnModule
    if L7_2 then
      L7_2 = L6_2.FuncBtnModule
      L8_2 = L7_2
      L7_2 = L7_2.IfMainMissionIsOccupied
      L9_2 = A0_2.ID
      L7_2 = L7_2(L8_2, L9_2)
      L5_2 = L7_2
    end
  end
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  return L7_2, L8_2, L9_2
end
L0_1.check_mission_conflict = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MissionBeginType
  L2_2 = L2_2.MultiSequence
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.MissionModule
    L2_2 = L1_2
    L1_2 = L1_2.GetMainMissionRow
    L3_2 = A0_2.Value
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MainMissionTypeConfigExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2.Type
    L2_2 = L2_2(L3_2)
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = "UIText_Mission_BeginType_Tips_2"
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = L2_2.TypeName
    L5_2 = L5_2(L6_2)
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L1_2.Name
    L6_2, L7_2 = L6_2(L7_2)
    return L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = A0_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.MissionBeginType
    L2_2 = L2_2.PlayerLevel
    if L1_2 == L2_2 then
      L1_2 = G
      L1_2 = L1_2.TextmapStatic
      L1_2 = L1_2.GetText
      L2_2 = "UIText_Mission_BeginType_Tips_5"
      L3_2 = A0_2.Value
      return L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.Type
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.MissionBeginType
      L2_2 = L2_2.WorldLevel
      if L1_2 == L2_2 then
        L1_2 = G
        L1_2 = L1_2.TextmapStatic
        L1_2 = L1_2.GetText
        L2_2 = "UIText_Mission_BeginType_Tips_6"
        L3_2 = A0_2.Value
        return L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1.get_begin_text_by_mission_condition = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.IsShow
  if L2_2 then
    L2_2 = L0_1.jump_to_mission
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MainMissionType
    L3_2 = L3_2.None
    L3_2 = #L3_2
    L4_2 = A0_2.ID
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2.SubMissions
    L3_2 = 0
    L4_2 = L2_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2[L6_2]
      L8_2 = L7_2.IsStart
      if L8_2 then
        L8_2 = L7_2.IsTrackByMessage
        if L8_2 then
          L8_2 = L2_1
          L9_2 = L8_2
          L8_2 = L8_2.IsMainLine
          L8_2 = L8_2(L9_2)
          if L8_2 then
            L8_2 = G
            L8_2 = L8_2.GotoManager
            L8_2 = L8_2.Goto
            L9_2 = 4000
            L10_2 = {}
            L11_2 = L7_2.MessageGroupID
            L10_2[1] = L11_2
            L8_2(L9_2, L10_2)
          else
            L8_2 = G
            L8_2 = L8_2.StoryLineUtils
            L8_2 = L8_2.switch_to_main_line_by_message
            L9_2 = A0_2.ID
            L10_2 = L7_2.MessageGroupID
            L8_2(L9_2, L10_2)
          end
          return
        else
          L8_2 = L7_2.WayPointType
          L9_2 = CS
          L9_2 = L9_2.RPG
          L9_2 = L9_2.GameCore
          L9_2 = L9_2.MissionWayPointType
          L9_2 = L9_2.None
          if L8_2 ~= L9_2 then
            L8_2 = L0_1.open_map_by_submission_data
            L9_2 = L7_2
            L8_2(L9_2)
            return
          end
        end
      end
    end
  end
end
L0_1.common_jump_to_mission_by_main_mission = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.jump_to_mission
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MainMissionType
  L2_2 = L2_2.Main
  L2_2 = #L2_2
  L3_2 = nil
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.jump_to_main_mission = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = "Ui.Mission.MissionPage"
  L3_2 = L3_2(L4_2)
  if A2_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.register_command_in_setup_view
    function L6_2()
      local L0_3, L1_3, L2_3
      L0_3 = G
      L0_3 = L0_3.UIManager
      L0_3 = L0_3.load_and_async_show
      L1_3 = "Ui.Common.Toast.PileToastCenterDialog"
      L2_3 = A2_2
      L0_3(L1_3, L2_3)
    end
    L4_2(L5_2, L6_2)
  end
  L5_2 = L3_2
  L4_2 = L3_2.init
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.show
  L4_2(L5_2)
end
L0_1.jump_to_mission = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MainMissionExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MainMissionType
  L3_2 = L3_2.Main
  if L2_2 == L3_2 then
    L2_2 = G
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = "UIText_COCOON2_GoToUnlock_Tips_01"
    L4_2 = G
    L4_2 = L4_2.TextmapStatic
    L4_2 = L4_2.GetText
    L5_2 = L1_2.Name
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L3_2 = L0_1.jump_to_main_mission
    L4_2 = L2_2
    L3_2(L4_2)
  else
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.GetGapChainDoingMissionID
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= 0 then
      L3_2 = L1_1
      L4_2 = L3_2
      L3_2 = L3_2.TryGetMainMissionData
      L5_2 = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = G
      L4_2 = L4_2.TextmapStatic
      L4_2 = L4_2.GetText
      L5_2 = "UIText_COCOON2_GoToUnlock_Tips_03"
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = L1_2.Name
      L6_2, L7_2 = L6_2(L7_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L5_2 = L0_1.common_jump_to_mission_by_main_mission
      L6_2 = L3_2
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
    else
      L3_2 = L0_1.jump_to_main_mission
      L4_2 = G
      L4_2 = L4_2.TextmapStatic
      L4_2 = L4_2.GetText
      L5_2 = "UIText_COCOON2_GoToUnlock_Tips_02"
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L0_1.trace_main_mission = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1.goto_not_show_start_mission_track_by_main_mission = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = 0
  L3_2 = A0_2.SubMissions
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.SubMissions
    L6_2 = L6_2[L5_2]
    if L6_2 ~= nil then
      L6_2 = A0_2.SubMissions
      L6_2 = L6_2[L5_2]
      L6_2 = L6_2.IsStart
      if L6_2 then
        L6_2 = A0_2.SubMissions
        L6_2 = L6_2[L5_2]
        L6_2 = L6_2.IsShow
        if L6_2 then
          L6_2 = A0_2.SubMissions
          L1_2 = L6_2[L5_2]
          break
        end
      end
    end
  end
  L2_2 = L0_1.open_map_by_submission_data
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1.open_map_with_locate_target_main_mission = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.GetSubMissionInfoConfig
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.MazePlaneID
  L4_2 = L1_2.PlaneID
  L3_2 = L3_2 == L4_2
  return L3_2
end
L0_1.check_player_is_in_target_submission_map = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionInfoConfig
  L3_2 = A0_2.Row
  L3_2 = L3_2.SubMissionID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.MazeFloorID
  L3_2 = L0_1.get_entry_id_by_floor_id
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.GotoManager
  L4_2 = L4_2.GotoByType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GotoType
  L5_2 = L5_2.AreaSwitch
  L5_2 = #L5_2
  L6_2 = {}
  L7_2 = L3_2
  L8_2 = nil
  L9_2 = A0_2.ID
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  return L4_2(L5_2, L6_2)
end
L0_1.open_map_by_submission_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionInfoConfig
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.MazeFloorID
  L3_2 = L0_1.get_entry_id_by_floor_id
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.GotoManager
  L4_2 = L4_2.GotoByType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GotoType
  L5_2 = L5_2.AreaSwitch
  L5_2 = #L5_2
  L6_2 = {}
  L7_2 = L3_2
  L8_2 = nil
  L9_2 = A0_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L6_2[3] = L9_2
  L4_2(L5_2, L6_2)
end
L0_1.open_map_by_submission_id = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionInfoConfig
  L3_2 = A0_2.Row
  L3_2 = L3_2.SubMissionID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2.IsGotoUIPage
  if L2_2 == false then
    L2_2 = L0_1.open_map_by_submission_data
    L3_2 = A0_2
    return L2_2(L3_2)
  else
    L2_2 = L0_1.jump_to_mission_target_ui_page_by_mission_config
    L3_2 = L1_2
    return L2_2(L3_2)
  end
end
L0_1.jump_to_mission_target_system = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.GotoID
  if 0 < L1_2 then
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = A0_2.GotoID
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.create_lua_table_from_cs_array
    L4_2 = A0_2.GotoParam
    L3_2, L4_2 = L3_2(L4_2)
    return L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = false
  return L1_2
end
L0_1.jump_to_mission_target_ui_page_by_mission_config = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazeFloorExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.BaseFloorID
  if L2_2 ~= A0_2 then
    A0_2 = L1_2.BaseFloorID
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MapEntryExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.BigMapUtils
    L9_2 = L9_2.IsShowAreaMap
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = L8_2.FloorID
      if A0_2 == L9_2 then
        L3_2 = L8_2.ID
        break
      end
    end
  end
  if L3_2 == 0 then
    return
  end
  return L3_2
end
L0_1.get_entry_id_by_floor_id = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionRow
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = ""
    L3_2 = ""
    return L2_2, L3_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.GetSubMissionInfoConfig
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.MazePlaneID
  L4_2 = L2_2.MazeFloorID
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MazePlaneExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.WorldID
  L7_2 = L0_1.get_location_name
  L8_2 = L6_2
  L9_2 = L4_2
  return L7_2(L8_2, L9_2)
end
L0_1.get_location_name_by_submission_id = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazeFloorExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.WorldDataConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.WorldName
  L4_2 = L2_2.FloorName
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L0_1.get_location_name = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1.get_entry_id_by_floor_id
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MapEntryExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MazePlaneExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.PlaneID
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.WorldID
  L5_2 = L0_1.get_location_name
  L6_2 = L4_2
  L7_2 = A0_2
  return L5_2(L6_2, L7_2)
end
L0_1.get_location_name_by_floor_id = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionRow
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.GetSubMissionInfoConfig
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetSubMissionData
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.IsShow
    if L4_2 then
      L4_2 = L3_2.IsStart
      if L4_2 then
        goto lbl_33
      end
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_33::
  L4_2 = L2_2.IsShowStartHint
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.BeginHintType
  L5_2 = L5_2.New
  if L4_2 ~= L5_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L1_2.MainMissionID
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.TryGetMainMissionData
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 == nil then
    L6_2 = false
    return L6_2
  end
  L6_2 = L5_2.MainMissionType
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.MainMissionType
  L7_2 = L7_2.Main
  L7_2 = L6_2 == L7_2
  return L7_2
end
L0_1.is_show_full_screen_take_toast_by_submission_id = L6_1
return L0_1
