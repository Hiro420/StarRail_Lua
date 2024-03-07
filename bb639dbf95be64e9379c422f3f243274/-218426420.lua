local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "ChessRogueUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.RogueModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = {}
  L2_2.TitleID = "UIText_RogueDLC_AeonBless_Active"
  L3_2 = L0_1.get_entrance_aeon_display_content_and_param
  L4_2 = A0_2.AeonID
  L3_2 = L3_2(L4_2)
  L2_2.DescContent = L3_2
  L1_2.ContentData = L2_2
  L3_2 = L0_1.get_entrance_aeon_display_buff_tb
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L1_2.BuffData = L3_2
  L1_2.BuffTitle = "UIText_RogueDLC_AeonBless"
  return L1_2
end
L0_1.format_entrance_aeon_display_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.AeonID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueAeonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueStatic
  L3_2 = L3_2.GetRogueAeonDisplayRow
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.RogueAeonPathName2
  return L4_2
end
L0_1.get_entrance_aeon_display_title = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2.PlayerShortDesc
  return L1_2
end
L0_1.get_entrance_aeon_display_content = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1.get_entrance_aeon_display_extra_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueAeonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueStatic
  L3_2 = L3_2.GetRogueAeonDisplayRow
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = L3_2.RogueAeonPathName2
  L4_2 = L4_2(L5_2)
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = "UIText_Rogue_Aeon_Echo_Hint_4"
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L0_1._get_aeon_cross_params
  L7_2 = L1_2
  L6_2 = L6_2(L7_2)
  L7_2 = G
  L7_2 = L7_2.TextmapStatic
  L7_2 = L7_2.GetText
  L8_2 = "UIText_RogueDLC_AeonCross_ActiveHint"
  L9_2 = table
  L9_2 = L9_2.unpack
  L10_2 = L6_2
  L9_2, L10_2 = L9_2(L10_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = L5_2
  L9_2 = "\n"
  L10_2 = L7_2
  L8_2 = L8_2 .. L9_2 .. L10_2
  return L8_2
end
L0_1.get_entrance_aeon_display_content_and_param = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.GetAeonCrossRow
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.RogueAeonDisplayExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2.SubAeonID
    L8_2 = L8_2(L9_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = L7_2.SubAeonNum
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = G
    L11_2 = L11_2.TextmapStatic
    L11_2 = L11_2.GetText
    L12_2 = L8_2.RogueAeonPathName2
    L11_2, L12_2 = L11_2(L12_2)
    L9_2(L10_2, L11_2, L12_2)
  end
  L3_2 = L1_2.Count
  if 0 < L3_2 then
    L3_2 = L1_2[0]
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RogueAeonDisplayExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2.MainAeonID
    L4_2 = L4_2(L5_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L2_2
    L7_2 = L3_2.MainAeonNum
    L5_2(L6_2, L7_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L2_2
    L7_2 = G
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = L4_2.RogueAeonPathName2
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  end
  return L2_2
end
L0_1._get_aeon_cross_params = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  if A0_2 == nil then
    return L1_2
  end
  L2_2 = {}
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.GetRogueBuffRowsByGroupID
  L5_2 = A0_2.BattleEventBuffGroup
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.Count
  if L4_2 == 0 then
    return L1_2
  end
  L4_2 = L1_1.ChessRogueData
  L4_2 = L4_2.BuffInfo
  L5_2 = L4_2
  L4_2 = L4_2.GetAchivedBuffList
  L4_2 = L4_2(L5_2)
  L5_2 = G
  L5_2 = L5_2.BuffUtils
  L5_2 = L5_2.GetMazeBuffData
  L6_2 = L3_2[0]
  L6_2 = L6_2.MazeBuffID
  L7_2 = L3_2[0]
  L7_2 = L7_2.MazeBuffLevel
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.BuffName
  L2_2.Title = L6_2
  L6_2 = L5_2.BuffDesc
  L2_2.Desc = L6_2
  L6_2 = L5_2.BuffIcon
  L2_2.Icon = L6_2
  L2_2.ShowStatus = true
  L6_2 = L5_2.ParamList
  L2_2.Param = L6_2
  L6_2 = L0_1._is_buff_got
  L7_2 = L3_2[0]
  L7_2 = L7_2.MazeBuffID
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  L2_2.IsActive = L6_2
  L6_2 = L5_2.ID
  L2_2.BuffID = L6_2
  L6_2 = L5_2.Lv
  L2_2.BuffLv = L6_2
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L1_2
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2.GetAeonCrossBuff
  L6_2 = L6_2(L7_2)
  L7_2 = 0
  L8_2 = L6_2.Count
  L8_2 = L8_2 - 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = {}
    L12_2 = L6_2[L10_2]
    L13_2 = G
    L13_2 = L13_2.BuffUtils
    L13_2 = L13_2.GetMazeBuffData
    L14_2 = L12_2.MazeBuffID
    L15_2 = L12_2.MazeBuffLevel
    L13_2 = L13_2(L14_2, L15_2)
    L5_2 = L13_2
    L13_2 = L5_2.BuffName
    L11_2.Title = L13_2
    L13_2 = L5_2.BuffDesc
    L11_2.Desc = L13_2
    L13_2 = L5_2.BuffIcon
    L11_2.Icon = L13_2
    L13_2 = L5_2.ParamList
    L11_2.Param = L13_2
    L11_2.ShowStatus = true
    L13_2 = L0_1._is_buff_got
    L14_2 = L12_2.MazeBuffID
    L15_2 = L4_2
    L13_2 = L13_2(L14_2, L15_2)
    L11_2.IsActive = L13_2
    L13_2 = L10_2 == 0
    L11_2.IsFirstEnhanceBuff = L13_2
    L13_2 = L5_2.ID
    L11_2.BuffID = L13_2
    L13_2 = L5_2.Lv
    L11_2.BuffLv = L13_2
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = L1_2
    L15_2 = L11_2
    L13_2(L14_2, L15_2)
  end
  L7_2 = L2_1
  L8_2 = L7_2
  L7_2 = L7_2.GetRogueBuffRowsByGroupID
  L9_2 = A0_2.BattleEventEnhanceBuffGroup
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L7_2
  L7_2 = 0
  L8_2 = L6_2.Count
  L8_2 = L8_2 - 1
  L9_2 = 1
  for L10_2 = L7_2, L8_2, L9_2 do
    L11_2 = {}
    L12_2 = L6_2[L10_2]
    L13_2 = G
    L13_2 = L13_2.BuffUtils
    L13_2 = L13_2.GetMazeBuffData
    L14_2 = L12_2.MazeBuffID
    L15_2 = L12_2.MazeBuffLevel
    L13_2 = L13_2(L14_2, L15_2)
    L5_2 = L13_2
    L13_2 = L5_2.BuffName
    L11_2.Title = L13_2
    L13_2 = L5_2.BuffDesc
    L11_2.Desc = L13_2
    L13_2 = L5_2.BuffIcon
    L11_2.Icon = L13_2
    L13_2 = L5_2.ParamList
    L11_2.Param = L13_2
    L11_2.ShowStatus = true
    L13_2 = L0_1._is_buff_got
    L14_2 = L12_2.MazeBuffID
    L15_2 = L4_2
    L13_2 = L13_2(L14_2, L15_2)
    L11_2.IsActive = L13_2
    L13_2 = L10_2 == 0
    L11_2.IsFirstEnhanceBuff = L13_2
    L13_2 = L5_2.ID
    L11_2.BuffID = L13_2
    L13_2 = L5_2.Lv
    L11_2.BuffLv = L13_2
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = L1_2
    L15_2 = L11_2
    L13_2(L14_2, L15_2)
  end
  return L1_2
end
L0_1.get_entrance_aeon_display_buff_tb = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = 0
  L3_2 = A1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = L6_2.BuffID
    if L7_2 == A0_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_buff_got = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  L4_2 = {}
  L5_2 = L0_1.get_entrance_aeon_display_title
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.TitleID = L5_2
  L5_2 = L0_1.get_entrance_aeon_display_content
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.ContentID = L5_2
  L5_2 = A0_2.ExtraEffect
  L4_2.ExtraInfo = L5_2
  L3_2.DiceData = L4_2
  L5_2 = {}
  L5_2.TitleID = "UIText_RogueDLC_AeonSpeciality_Buffer"
  L6_2 = L0_1.get_entrance_dice_display_content
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L5_2.DescContent = L6_2
  L3_2.ContentData = L5_2
  L6_2 = L0_1.get_entrance_dice_surface_display_content
  L7_2 = A1_2
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L3_2.DiceSurfaceData = L6_2
  L3_2.SurfaceTitle = "UIText_RogueDLC_AeonDice_Effect"
  return L3_2
end
L0_1.format_entrance_dice_display_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsInGuideTwo
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = "UIText_RogueDLC_Special_Guide_Text"
    return L1_2(L2_2)
  end
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.DiceEffects
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.DiceEffects
    L6_2 = L6_2[L5_2]
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = "UIText_RogueDLC_AeonSpeciality_Link "
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.get_entrance_dice_display_content = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ChessRogueModule
  L3_2 = L3_2.ChessRogueData
  L3_2 = L3_2.DiceInfo
  L3_2 = L3_2.CurDiceSurfaceID
  L4_2 = 0
  L5_2 = A0_2.SurfaceRows
  L5_2 = L5_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = {}
    L9_2 = A0_2.SurfaceRows
    L9_2 = L9_2[L7_2]
    L10_2 = L9_2.DiceSurfaceName
    L8_2.Title = L10_2
    L10_2 = L9_2.DiceSurfaceDesc
    L8_2.Desc = L10_2
    L10_2 = L9_2.DescParam
    L8_2.Param = L10_2
    L10_2 = L9_2.DiceSurfaceIcon
    L8_2.Icon = L10_2
    L8_2.IsDice = true
    L10_2 = L9_2.AeonSurfaceDiceID
    L8_2.DiceID = L10_2
    L10_2 = L9_2.Rarity
    L8_2.Rarity = L10_2
    L10_2 = L9_2.Sort
    L8_2.Sort = L10_2
    L10_2 = L9_2.AeonSurfaceDiceID
    if L3_2 ~= L10_2 then
      L8_2.DiceIsActive = false
      L8_2.DiceActivated = false
      L8_2.ShowStatus = false
    else
      L8_2.ShowStatus = true
      if A1_2 then
        L10_2 = L9_2.DiceActiveStage
        L10_2 = 1 < L10_2
        L8_2.DiceIsActive = L10_2
        L10_2 = L9_2.DiceActiveStage
        L10_2 = L10_2 <= 1
        L8_2.DiceActivated = L10_2
      else
        L10_2 = L9_2.DiceActiveStage
        L10_2 = 2 < L10_2
        L8_2.DiceIsActive = L10_2
        L10_2 = L9_2.DiceActiveStage
        L10_2 = L10_2 <= 2
        L8_2.DiceActivated = L10_2
      end
    end
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = L2_2
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.Sort
    L3_3 = A1_3.Sort
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L4_2(L5_2, L6_2)
  return L2_2
end
L0_1.get_entrance_dice_surface_display_content = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  if A0_2 == nil then
    return L1_2
  end
  L2_2 = A0_2.Count
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = 0
    L8_2 = A0_2[L6_2]
    L8_2 = L8_2.DimensionIncrementsConfigArray
    L8_2 = L8_2.Length
    L8_2 = L8_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = A0_2[L6_2]
      L11_2 = L11_2.DimensionIncrementsConfigArray
      L11_2 = L11_2[L10_2]
      L12_2 = L11_2.DimensionID
      L13_2 = L11_2.DimensionID
      L13_2 = L1_2[L13_2]
      if not L13_2 then
        L13_2 = 0
      end
      L14_2 = L11_2.Increments
      L13_2 = L13_2 + L14_2
      L1_2[L12_2] = L13_2
    end
  end
  return L1_2
end
L0_1.calculate_cabinet_increment_tb_by_missions = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L1_1.ChessRogueData
  L1_2 = L1_2.BuffInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetAchivedBuffList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueAeonExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2.AeonID
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0
  L5_2 = L1_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L10_2 = L8_2
    L9_2 = L8_2.GetRogueBuffTypeRow
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2.RogueBuffType
    L11_2 = L3_2.RogueBuffType
    if L10_2 == L11_2 then
      L2_2 = L2_2 + 1
    end
  end
  return L2_2
end
L0_1.get_aeon_related_achieved_buff_count = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L1_1.ChessRogueData
  L1_2 = L1_2.BuffInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetAchivedBuffList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueAeonExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0
  L5_2 = L1_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L10_2 = L8_2
    L9_2 = L8_2.GetRogueBuffTypeRow
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2.RogueBuffType
    L11_2 = L3_2.RogueBuffType
    if L10_2 == L11_2 then
      L11_2 = L8_2
      L10_2 = L8_2.IsNormalBuff
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L2_2 = L2_2 + 1
      end
    end
  end
  return L2_2
end
L0_1.get_aeon_related_achieved_common_buff_count = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueDimensionData
  L1_2 = L1_2.DimensionInfo
  L1_2 = L1_2.ChessRogueDimensionDict
  L3_2 = L1_2
  L2_2 = L1_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  while true do
    L5_2 = L2_2
    L4_2 = L2_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L0_1._format_one_dimension_display_data
    L5_2 = L2_2.Current
    L5_2 = L5_2.Value
    L6_2 = A0_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2.ID
    L3_2[L5_2] = L4_2
  end
  L5_2 = L2_2
  L4_2 = L2_2.Dispose
  L4_2(L5_2)
  return L3_2
end
L0_1.format_dimension_display_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = A0_2.MaxDimensionValue
  L3_2.Max = L4_2
  L4_2 = A0_2.CurDimensionProgress
  L3_2.Current = L4_2
  L2_2.Value = L3_2
  L4_2 = A0_2.ID
  L4_2 = A1_2[L4_2]
  L2_2.Increase = L4_2
  L4_2 = A0_2.ID
  L2_2.ID = L4_2
  return L2_2
end
L0_1._format_one_dimension_display_data = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.ChessRogueModule
  L0_2 = L0_2.ChessRogueDimensionData
  L0_2 = L0_2.ReplayInfo
  L1_2 = L0_2
  L0_2 = L0_2.GetSortedSubStoryReplayInfo
  L0_2 = L0_2(L1_2)
  L1_2 = {}
  L2_2 = 0
  L3_2 = L0_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_2[L5_2]
    L7_2 = L0_1._get_one_title_data
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = 0
    L9_2 = L6_2.Count
    L9_2 = L9_2 - 1
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      L12_2 = L0_1._get_one_tab_data
      L13_2 = L6_2[L11_2]
      L12_2 = L12_2(L13_2)
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = L1_2
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
  end
  return L1_2
end
L0_1.get_sub_story_display_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L1_2.IsTitle = true
  L2_2 = L0_1._is_any_sub_story_unlock
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2[0]
    L2_2 = L2_2.GroupName
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = "UIText_RogueDLC_Story_Locked"
  ::lbl_13::
  L1_2.TitleID = L2_2
  return L1_2
end
L0_1._get_one_title_data = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = {}
  L1_2.IsTitle = false
  L1_2.Data = A0_2
  return L1_2
end
L0_1._get_one_tab_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 0
  L2_2 = A0_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2[L4_2]
    L5_2 = L5_2.Unlocked
    if L5_2 then
      L5_2 = true
      return L5_2
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._is_any_sub_story_unlock = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.ChessRogueTeamRecords
  L3_2 = L2_2
  L2_2 = L2_2.ContainsKey
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.User
    L2_2 = L2_2.ChessRogueTeamRecords
    L2_2 = L2_2[A0_2]
    L4_2 = L2_2
    L3_2 = L2_2.Clear
    L3_2(L4_2)
    L3_2 = pairs
    L4_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      if L7_2 ~= nil then
        L9_2 = L2_2
        L8_2 = L2_2.Add
        L10_2 = L7_2.ID
        L8_2(L9_2, L10_2)
      end
    end
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L3_2 = L3_2.ChessRogueTeamRecords
    L3_2[A0_2] = L2_2
  else
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.Collections
    L2_2 = L2_2.Generic
    L2_2 = L2_2.List
    L3_2 = CS
    L3_2 = L3_2.System
    L3_2 = L3_2.UInt32
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2()
    L3_2 = pairs
    L4_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      if L7_2 ~= nil then
        L9_2 = L2_2
        L8_2 = L2_2.Add
        L10_2 = L7_2.ID
        L8_2(L9_2, L10_2)
      end
    end
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L3_2 = L3_2.ChessRogueTeamRecords
    L4_2 = L3_2
    L3_2 = L3_2.Add
    L5_2 = A0_2
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.ForceSave
  L2_2()
end
L0_1.save_edited_team_tb = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.ChessRogueTeamRecords
  L2_2 = L1_2
  L1_2 = L1_2.ContainsKey
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.ChessRogueTeamRecords
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1.try_get_edited_team_tb = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1._gen_extra_info_data
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = #L1_2
    if L2_2 ~= 0 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.AvatarEducation.AvatarDetail.StatusDescriptionDialog"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1.show_extra_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  if A0_2 ~= nil then
    L2_2 = A0_2.Length
    if L2_2 ~= 0 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = 0
  L3_2 = A0_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ExtraEffectExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 ~= nil then
      L8_2 = {}
      L9_2 = L7_2.ExtraEffectName
      L8_2.Name = L9_2
      L9_2 = L7_2.ExtraEffectDesc
      L8_2.Desc = L9_2
      L9_2 = table
      L9_2 = L9_2.pack
      L10_2 = G
      L10_2 = L10_2.UITextUtils
      L10_2 = L10_2.GetSkillParams
      L11_2 = L7_2.DescParamList
      L10_2, L11_2 = L10_2(L11_2)
      L9_2 = L9_2(L10_2, L11_2)
      L8_2.DescParam = L9_2
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  return L1_2
end
L0_1._gen_extra_info_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._is_same_area_id
  L2_2 = A0_2
  L3_2 = "RogueDLC_GuideArea1"
  return L1_2(L2_2, L3_2)
end
L0_1.is_area_the_guide_area_1 = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._is_same_area_id
  L2_2 = A0_2
  L3_2 = "RogueDLC_GuideArea2"
  return L1_2(L2_2, L3_2)
end
L0_1.is_area_the_guide_area_2 = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A0_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.UintValue
  L3_2 = L2_2 == A0_2
  return L3_2
end
L0_1._is_same_area_id = L3_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = "RogueDLC_TimeLimited_Module"
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.Value
  L2_2 = L2_2.UintValue
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ScheduleModule
  L4_2 = L3_2
  L3_2 = L3_2.GetScheduleDataByActivityModuleID
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.IsInSchedule
    L4_2 = L4_2(L5_2)
    if L4_2 ~= false then
      goto lbl_32
    end
  end
  L4_2 = false
  do return L4_2 end
  ::lbl_32::
  L4_2 = true
  return L4_2
end
L0_1.is_in_quest_schedule = L3_1
L3_1 = {}
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.RogueSubMode
L4_1 = L4_1.ChessRogue
L3_1[L4_1] = "UIText_RogueDLC_Title_Activity"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.RogueSubMode
L4_1 = L4_1.ChessRogueNous
L3_1[L4_1] = "UIText_RogueNous_Title_Activity"
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L1_1.ChessRogueData
  L2_2 = L2_2.AreaInfo
  L2_2 = L2_2.CurRecordArea
  if L2_2 ~= nil then
    L3_2 = L2_2.RogueSubMode
    if A0_2 ~= L3_2 then
      goto lbl_11
    end
  end
  L3_2 = false
  do return L3_2 end
  ::lbl_11::
  L3_2 = L2_2.RogueSubMode
  L3_2 = L3_1[L3_2]
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.Rogue.MainPage.RogueDLCQuickSettlementDialog"
  L6_2 = L3_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = true
  return L4_2
end
L0_1.try_show_quick_settlement_dialog = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1.is_nous_rogue_sub_mode
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = "RogueNous_ActionPoint_Intro_DescParam"
    if L0_2 then
      goto lbl_9
    end
  end
  L0_2 = "RogueDLC_ActionPoint_Intro_DescParam"
  ::lbl_9::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.ArrayValue
  return L1_2
end
L0_1.get_const_action_point_intro_param = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1.is_nous_rogue_sub_mode
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = "RogueNous_ActionPoint_WarningNum"
    if L0_2 then
      goto lbl_9
    end
  end
  L0_2 = "RogueDLC_ActionPoint_WarningNum"
  ::lbl_9::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  return L1_2
end
L0_1.get_const_action_point_warning_num = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1.is_nous_rogue_sub_mode
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = "RogueNous_DiceSurface_AbandonReward"
    if L0_2 then
      goto lbl_9
    end
  end
  L0_2 = "RogueDLC_DiceSurface_AbandonReward"
  ::lbl_9::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.MapValue
  return L1_2
end
L0_1.get_const_dice_surface_abandon_reward = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L0_1.is_nous_rogue_sub_mode
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.GameCore
    L0_2 = L0_2.GotoType
    L0_2 = L0_2.ChessRogueCabinet
    L0_2 = #L0_2
    return L0_2
  end
  L0_2 = nil
  return L0_2
end
L0_1.get_block_hud_go_to_type = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.ChessRogueModule
  L1_2 = L0_2
  L0_2 = L0_2.GetCurSubMode
  L0_2 = L0_2(L1_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueSubMode
  L1_2 = L1_2.ChessRogueNous
  L1_2 = L0_2 == L1_2
  return L1_2
end
L0_1.is_nous_rogue_sub_mode = L4_1
return L0_1
