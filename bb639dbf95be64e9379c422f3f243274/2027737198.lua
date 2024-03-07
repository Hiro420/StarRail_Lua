local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Utilities.QuestUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousStoryData"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "RogueNousUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.QuestModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.ChessRogueModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.RogueNousUtils
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A2_2 == nil then
    A2_2 = false
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ChessRogueModule
  L3_2 = L3_2.ChessRogueData
  L5_2 = L3_2
  L4_2 = L3_2.GetNousValueInfo
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2.AreaInfo
  L5_2 = L5_2.CurAreaID
  if L4_2 == nil or L5_2 == 0 then
    L6_2 = nil
    return L6_2
  end
  L7_2 = A0_2
  L6_2 = A0_2.instantiate_object
  L8_2 = A1_2.Prefab
  L9_2 = A1_2.transform
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2.create_panel
  L9_2 = "Ui.RogueDLC.RogueNous.NousValue.RogueNousValuePanel"
  L10_2 = "Ui.RogueDLC.RogueNous.NousValue.RogueNousValuePanelBinder"
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L9_2 = L7_2
  L8_2 = L7_2.bind
  L10_2 = L6_2
  L8_2(L9_2, L10_2)
  L9_2 = L7_2
  L8_2 = L7_2.setup_view
  L10_2 = L4_2
  L11_2 = L5_2
  L12_2 = A2_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  return L7_2
end
L0_1.create_nous_value_panel = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A0_2
  L4_2 = A0_2.instantiate_object
  L6_2 = A1_2.Prefab
  L7_2 = A1_2.transform
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = "Ui.RogueDLC.RogueNous.NousValue.RogueNousValuePanel"
  L8_2 = "Ui.RogueDLC.RogueNous.NousValue.RogueNousValuePanelBinder"
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.bind
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L7_2 = L5_2
  L6_2 = L5_2.setup_handbook_view
  L8_2 = A2_2
  L9_2 = A3_2
  L6_2(L7_2, L8_2, L9_2)
  return L5_2
end
L0_1.create_nous_value_panel_handbook = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = L0_1._create_title_display_data
  L5_2 = "UIText_RogueNous_AeonBlessMenu_SurfaceEffect"
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = L0_1._create_aeon_gain_display_data
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = L0_1._create_title_display_data
  L5_2 = "UIText_RogueDLC_AeonBless_Active"
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = L0_1._create_aeon_active_display_data
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = L0_1._create_title_display_data
  L5_2 = "UIText_RogueDLC_AeonBless"
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L2_2 = L0_1.create_aeon_buff_display_data
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
L0_1.format_entrance_aeon_display_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L1_2.TypeTag = "Title"
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L1_2.DescContent = L2_2
  return L1_2
end
L0_1._create_title_display_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L1_2.TypeTag = "Desc"
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = A0_2.EffectDesc1
  L2_2 = L2_2(L3_2)
  L1_2.DescContent = L2_2
  return L1_2
end
L0_1._create_aeon_gain_display_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L1_2.TypeTag = "Desc"
  L2_2 = L0_1.get_entrance_aeon_display_content_and_param
  L3_2 = A0_2.AeonID
  L2_2 = L2_2(L3_2)
  L1_2.DescContent = L2_2
  return L1_2
end
L0_1._create_aeon_active_display_data = L5_1
function L5_1(A0_2)
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
L0_1.get_entrance_aeon_display_content_and_param = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.GetRogueNousAeonCrossRow
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
L0_1._get_aeon_cross_params = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if A1_2 == nil then
    A1_2 = false
  end
  L2_2 = {}
  L3_2 = {}
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetRogueBuffRowsByGroupID
  L6_2 = A0_2.BattleEventBuffGroup
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.Count
  if L5_2 == 0 then
    return L2_2
  end
  L5_2 = L3_1.ChessRogueData
  L5_2 = L5_2.BuffInfo
  L6_2 = L5_2
  L5_2 = L5_2.GetAchivedBuffList
  L5_2 = L5_2(L6_2)
  L6_2 = G
  L6_2 = L6_2.BuffUtils
  L6_2 = L6_2.GetMazeBuffData
  L7_2 = L4_2[0]
  L7_2 = L7_2.MazeBuffID
  L8_2 = L4_2[0]
  L8_2 = L8_2.MazeBuffLevel
  L6_2 = L6_2(L7_2, L8_2)
  L3_2.TypeTag = "Buff"
  L7_2 = L6_2.BuffName
  L3_2.Title = L7_2
  L7_2 = L6_2.BuffDesc
  L3_2.Desc = L7_2
  L7_2 = L6_2.BuffIcon
  L3_2.Icon = L7_2
  L3_2.ShowStatus = true
  L7_2 = L6_2.ParamList
  L3_2.Param = L7_2
  L7_2 = L0_1._is_buff_got
  L8_2 = L4_2[0]
  L8_2 = L8_2.MazeBuffID
  L9_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  L3_2.IsActive = L7_2
  L7_2 = L6_2.ID
  L3_2.BuffID = L7_2
  L7_2 = L6_2.Lv
  L3_2.BuffLv = L7_2
  L7_2 = table
  L7_2 = L7_2.insert
  L8_2 = L2_2
  L9_2 = L3_2
  L7_2(L8_2, L9_2)
  if not A1_2 then
    L7_2 = {}
    L7_2.TypeTag = "Tips"
    L8_2 = G
    L8_2 = L8_2.TextmapStatic
    L8_2 = L8_2.GetText
    L9_2 = "UIText_RogueDLC_AeonEntrance_Hint"
    L8_2 = L8_2(L9_2)
    L7_2.DescContent = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.ChessRogueUtils
  L7_2 = L7_2.GetRogueNousAeonCrossBuff
  L8_2 = A0_2.AeonID
  L7_2 = L7_2(L8_2)
  L8_2 = 0
  L9_2 = L7_2.Count
  L9_2 = L9_2 - 1
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = {}
    L13_2 = L7_2[L11_2]
    L14_2 = G
    L14_2 = L14_2.BuffUtils
    L14_2 = L14_2.GetMazeBuffData
    L15_2 = L13_2.MazeBuffID
    L16_2 = L13_2.MazeBuffLevel
    L14_2 = L14_2(L15_2, L16_2)
    L6_2 = L14_2
    L12_2.TypeTag = "Buff"
    L14_2 = L6_2.BuffName
    L12_2.Title = L14_2
    L14_2 = L6_2.BuffDesc
    L12_2.Desc = L14_2
    L14_2 = L6_2.BuffIcon
    L12_2.Icon = L14_2
    L14_2 = L6_2.ParamList
    L12_2.Param = L14_2
    L12_2.ShowStatus = true
    L14_2 = L0_1._is_buff_got
    L15_2 = L13_2.MazeBuffID
    L16_2 = L5_2
    L14_2 = L14_2(L15_2, L16_2)
    L12_2.IsActive = L14_2
    L14_2 = L11_2 == 0
    L12_2.IsFirstEnhanceBuff = L14_2
    L14_2 = L6_2.ID
    L12_2.BuffID = L14_2
    L14_2 = L6_2.Lv
    L12_2.BuffLv = L14_2
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L2_2
    L16_2 = L12_2
    L14_2(L15_2, L16_2)
  end
  L8_2 = L1_1
  L9_2 = L8_2
  L8_2 = L8_2.GetRogueBuffRowsByGroupID
  L10_2 = A0_2.BattleEventEnhanceBuffGroup
  L8_2 = L8_2(L9_2, L10_2)
  L7_2 = L8_2
  L8_2 = 0
  L9_2 = L7_2.Count
  L9_2 = L9_2 - 1
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = {}
    L13_2 = L7_2[L11_2]
    L14_2 = G
    L14_2 = L14_2.BuffUtils
    L14_2 = L14_2.GetMazeBuffData
    L15_2 = L13_2.MazeBuffID
    L16_2 = L13_2.MazeBuffLevel
    L14_2 = L14_2(L15_2, L16_2)
    L6_2 = L14_2
    L12_2.TypeTag = "Buff"
    L14_2 = L6_2.BuffName
    L12_2.Title = L14_2
    L14_2 = L6_2.BuffDesc
    L12_2.Desc = L14_2
    L14_2 = L6_2.BuffIcon
    L12_2.Icon = L14_2
    L14_2 = L6_2.ParamList
    L12_2.Param = L14_2
    L12_2.ShowStatus = true
    L14_2 = L0_1._is_buff_got
    L15_2 = L13_2.MazeBuffID
    L16_2 = L5_2
    L14_2 = L14_2(L15_2, L16_2)
    L12_2.IsActive = L14_2
    L14_2 = L11_2 == 0
    L12_2.IsFirstEnhanceBuff = L14_2
    L14_2 = L6_2.ID
    L12_2.BuffID = L14_2
    L14_2 = L6_2.Lv
    L12_2.BuffLv = L14_2
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L2_2
    L16_2 = L12_2
    L14_2(L15_2, L16_2)
  end
  return L2_2
end
L0_1.create_aeon_buff_display_data = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
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
L0_1._is_buff_got = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueDLCDiceSurfaceRarityExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.SafeSetTextColor
  L5_2 = L2_2.NameColor
  L3_2(L4_2, L5_2)
end
L0_1.set_title_color = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = {}
  L3_2.AeonID = A0_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RogueAeonDisplayExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L3_2.Row = L4_2
  L3_2.IsSelected = A1_2
  L3_2.IsCrossAeon = A2_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RogueAeonExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.Sort
  L3_2.Sort = L5_2
  return L3_2
end
L0_1.create_one_ban_aeon_data = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A2_2 ~= nil then
    L3_2 = #A2_2
    if L3_2 ~= 0 then
      goto lbl_10
    end
  end
  L3_2 = L0_1.get_all_cross_aeon_ids
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A2_2 = L3_2
  ::lbl_10::
  L3_2 = {}
  L4_2 = ipairs
  L5_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L0_1.create_one_ban_aeon_data
    L10_2 = L8_2
    L11_2 = true
    L12_2 = L0_1._is_id_in_list
    L13_2 = L8_2
    L14_2 = A2_2
    L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  return L3_2
end
L0_1.create_all_selected_aeon_data = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = L0_1.get_all_cross_aeon_ids
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RogueNousAeonExcelTable
  L4_2 = L4_2.GetEnumerator
  L4_2 = L4_2()
  while true do
    L6_2 = L4_2
    L5_2 = L4_2.MoveNext
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      break
    end
    L5_2 = L4_2.Current
    if L5_2 ~= nil then
      L6_2 = L5_2.AeonID
      if L6_2 ~= A0_2 then
        L7_2 = L0_1.create_one_ban_aeon_data
        L8_2 = L6_2
        L9_2 = L0_1._is_id_in_list
        L10_2 = L6_2
        L11_2 = A1_2
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = L0_1._is_id_in_list
        L11_2 = L6_2
        L12_2 = L3_2
        L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L2_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  L5_2 = table
  L5_2 = L5_2.sort
  L6_2 = L2_2
  function L7_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.IsSelected
    L3_3 = A1_3.IsSelected
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.IsSelected
      return L2_3
    end
    L2_3 = A0_3.IsCrossAeon
    L3_3 = A1_3.IsCrossAeon
    if L2_3 == L3_3 then
      L2_3 = A0_3.Sort
      L3_3 = A1_3.Sort
      L2_3 = L2_3 < L3_3
      return L2_3
    else
      L2_3 = A1_3.IsCrossAeon
      return L2_3
    end
  end
  L5_2(L6_2, L7_2)
  return L2_2
end
L0_1.create_all_selectable_ban_aeon_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ChessRogueUtils
  L3_2 = L3_2.GetRogueNousAeonCrossRow
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2.SubAeonID
    L8_2(L9_2, L10_2)
  end
  return L1_2
end
L0_1.get_all_cross_aeon_ids = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = ipairs
  L3_2 = A1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if A0_2 == L6_2 then
      L7_2 = true
      return L7_2
    end
  end
  L2_2 = false
  return L2_2
end
L0_1._is_id_in_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueNousSelectedBanAeons
  L2_2 = L1_2
  L1_2 = L1_2.ContainsKey
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.RogueNousSelectedBanAeons
  L2_2 = L2_2[A0_2]
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 ~= A0_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L2_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = L0_1.create_all_selected_aeon_data
  L4_2 = A0_2
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L0_1.try_get_rogue_nous_selected_banned_aeon = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueNousSelectedAvatars
  L2_2 = L1_2
  L1_2 = L1_2.ContainsKey
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.RogueNousSelectedAvatars
  L2_2 = L2_2[A0_2]
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.AvatarModule
  L4_2 = ipairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L3_2
    L9_2 = L3_2.GetAvatar
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  return L2_2
end
L0_1.try_get_rogue_nous_selected_avatars = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A2_2
  L3_2 = A2_2.ContainsKey
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = A2_2[A0_2]
    L5_2 = L3_2
    L4_2 = L3_2.Clear
    L4_2(L5_2)
    L4_2 = pairs
    L5_2 = A1_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L10_2 = L3_2
      L9_2 = L3_2.Add
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
    A2_2[A0_2] = L3_2
  else
    L3_2 = CS
    L3_2 = L3_2.System
    L3_2 = L3_2.Collections
    L3_2 = L3_2.Generic
    L3_2 = L3_2.List
    L4_2 = CS
    L4_2 = L4_2.System
    L4_2 = L4_2.UInt32
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2()
    L4_2 = pairs
    L5_2 = A1_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L10_2 = L3_2
      L9_2 = L3_2.Add
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
    L5_2 = A2_2
    L4_2 = A2_2.Add
    L6_2 = A0_2
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.try_save_rouge_nous_pref_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 == nil then
    return
  end
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.TagList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.UtilEngineWrap
    L6_2 = L6_2.ConvCsEnumToNum
    L7_2 = A0_2.TagList
    L7_2 = L7_2[L5_2]
    L6_2 = L6_2(L7_2)
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.RogueNousSurfaceTagExcelTable
    L7_2 = L7_2.GetEnumerator
    L7_2 = L7_2()
    while true do
      L9_2 = L7_2
      L8_2 = L7_2.MoveNext
      L8_2 = L8_2(L9_2)
      if not L8_2 then
        break
      end
      L8_2 = L7_2.Current
      L9_2 = L8_2.TagID
      if L9_2 == L6_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L1_2
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.Sort
    L3_3 = A1_3.Sort
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1.get_sorted_tag_table_by_surface_row = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 == nil then
    return
  end
  L2_2 = {}
  L3_2 = L3_1.ChessRogueData
  L3_2 = L3_2.DiceInfo
  L3_2 = L3_2.RogueNousDiceData
  L4_2 = L3_2
  L3_2 = L3_2.GetCanEquippedSurfacesByBranch
  L5_2 = A1_2.BranchID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = L8_2.Rarity
    if A0_2 >= L9_2 then
      L9_2 = L8_2.IsUnlocked
      if L9_2 then
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = L2_2
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  return L2_2
end
L0_1.get_surface_data_table_with_correct_rarity = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 == nil then
    return
  end
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueNousDiceSurfaceExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = 0
    L5_2 = L3_2.SlotList
    L5_2 = L5_2.Length
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2.SlotList
      L8_2 = L8_2[L7_2]
      L9_2 = A0_2.SlotID
      if L8_2 == L9_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.Client
        L10_2 = L10_2.RogueNousUtils
        L10_2 = L10_2.GetSurfaceDataItem
        L11_2 = L3_2.SurfaceID
        L10_2, L11_2 = L10_2(L11_2)
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
  return L1_2
end
L0_1.get_surface_data_table_by_config = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A2_2.SurfaceID
  L4_2 = A0_2.CurEquippedSurface
  L4_2 = L4_2.SurfaceID
  if L4_2 == L3_2 then
    L4_2 = 999
    return L4_2
  end
  L4_2 = A1_2.SlotList
  L5_2 = 0
  L6_2 = L4_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L4_2[L8_2]
    L10_2 = L9_2.SlotID
    L11_2 = A0_2.SlotID
    if L10_2 ~= L11_2 then
      L10_2 = L9_2.CurEquippedSurface
      L10_2 = L10_2.SurfaceID
      if L10_2 == L3_2 then
        L10_2 = 0
        return L10_2
      end
    end
  end
  L5_2 = A2_2.Rarity
  return L5_2
end
L0_1.get_surface_sort_weight = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A1_2.SurfaceID
  L4_2 = A0_2.SlotList
  L5_2 = 0
  L6_2 = L4_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L4_2[L8_2]
    if A2_2 ~= L9_2 then
      L10_2 = L9_2.CurEquippedSurface
      L10_2 = L10_2.SurfaceID
      if L10_2 == L3_2 then
        L10_2 = true
        return L10_2
      end
    end
  end
  L5_2 = false
  return L5_2
end
L0_1.is_surface_equipped_by_other_slot = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2.RogueNousSelectedBranchID = A0_2
end
L0_1.store_selected_branch_id = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.Prefs
  L0_2 = L0_2.User
  L0_2 = L0_2.RogueNousSelectedBranchID
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.DiceInfo
  L1_2 = L1_2.RogueNousDiceData
  L2_2 = L1_2
  L1_2 = L1_2.GetBranchByID
  L3_2 = L0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L0_2
    L3_2 = L1_2.GenreTagValue
    return L2_2, L3_2
  end
end
L0_1.get_selected_branch_id_and_tag = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A0_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2[L6_2]
    L7_2 = L7_2.SubStoryID
    if not L7_2 then
      L7_2 = A0_2[L6_2]
      L7_2 = L7_2.MainStoryID
    end
    L9_2 = A1_2
    L8_2 = A1_2.Contains
    L10_2 = L7_2
    L8_2 = A1_2 ~= nil and L8_2
    L9_2 = L0_1.construct_rogue_nous_story_data
    L10_2 = A0_2[L6_2]
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    L2_2[L7_2] = L9_2
  end
  return L2_2
end
L0_1.struct_rogue_nous_mission_data = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousStoryData"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.init
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  return L2_2
end
L0_1.construct_rogue_nous_story_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1._construct_rogue_nous_main_story_data
    L7_2 = A0_2[L5_2]
    L6_2 = L6_2(L7_2)
    L8_2 = L6_2
    L7_2 = L6_2.get_native
    L7_2 = L7_2(L8_2)
    L7_2 = L7_2.MainStoryID
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L0_1.create_rogue_nous_main_mission_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1._construct_rogue_nous_main_story_data
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.construct_rogue_nous_main_story_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousMainStoryData"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  return L1_2
end
L0_1._construct_rogue_nous_main_story_data = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.ChessRogueModule
  L1_2 = L0_2.ChessRogueData
  L2_2 = L1_2
  L1_2 = L1_2.GetNousValueInfo
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.CurNousValue
  L3_2 = L0_2.ChessRogueData
  L3_2 = L3_2.AreaInfo
  L3_2 = L3_2.CurAreaLayerIndex
  L4_2 = L0_2.ChessRogueDimensionData
  L4_2 = L4_2.NousStoryInfo
  L5_2 = L0_2.ChessRogueData
  L5_2 = L5_2.StoryInfo
  L6_2 = L5_2
  L5_2 = L5_2.GetTriggeredSubStoryID
  L7_2 = L3_2 - 1
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L4_2
  L6_2 = L4_2.GetNextSubStoryIDs
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L5_2
  if L6_2 ~= nil then
    L8_2 = L6_2.Length
    if 0 < L8_2 then
      L8_2 = 0
      L9_2 = L6_2.Length
      L9_2 = L9_2 - 1
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        L12_2 = L4_2.SubMissionDict
        L13_2 = L6_2[L11_2]
        L12_2 = L12_2[L13_2]
        if L12_2 ~= nil then
          L13_2 = L12_2.MinNousValue
          if L2_2 >= L13_2 then
            L13_2 = L12_2.MaxNousValue
            if L2_2 <= L13_2 then
              L7_2 = L12_2.SubStoryID
            end
          end
        end
      end
    end
  end
  L8_2 = G
  L8_2 = L8_2.UIManager
  L8_2 = L8_2.load_and_async_show
  L9_2 = "Ui.RogueDLC.RogueNous.Story.RogueNousStoryPage"
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
end
L0_1.show_story_page_in_game = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = {}
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueNousMissionRewardExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = {}
    L3_2 = L1_2.Current
    L2_2.IsUnlock = true
    L4_2 = L3_2.TabTitle
    L2_2.TabTitle = L4_2
    L4_2 = L3_2.MissionRewardID
    L2_2.ID = L4_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RogueUnlockConfigExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2.UnlockID
    L4_2 = L4_2(L5_2)
    if L4_2 ~= nil then
      L5_2 = L4_2.RogueUnlockDetail
      L2_2.UnlockText = L5_2
    end
    L5_2 = {}
    L6_2 = 0
    L7_2 = L3_2.QuestList
    L7_2 = L7_2.Length
    L7_2 = L7_2 - 1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L5_2
      L12_2 = L3_2.QuestList
      L12_2 = L12_2[L9_2]
      L10_2(L11_2, L12_2)
    end
    L6_2 = G
    L6_2 = L6_2.QuestUtils
    L6_2 = L6_2.get_quest_datas_from_quest_ids
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L2_2.QuestDataList = L6_2
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L0_2
    L8_2 = L2_2
    L6_2(L7_2, L8_2)
  end
  return L0_2
end
L0_1.create_mission_reward_data = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = {}
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueNousEndGameRewardExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = {}
    L3_2 = L1_2.Current
    L2_2.IsUnlock = true
    L4_2 = L3_2.EndGameRewardID
    L2_2.ID = L4_2
    L4_2 = L2_1
    L5_2 = L4_2
    L4_2 = L4_2.TryGetQuestData
    L6_2 = L3_2.QuestID
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 ~= nil then
      L5_2 = L4_2.Status
      L6_2 = CS
      L6_2 = L6_2.BLHLCHNAJKK
      L6_2 = L6_2.CDJHHIHBNMN
      if L5_2 == L6_2 then
        goto lbl_36
      end
      L5_2 = L4_2.Status
      L6_2 = CS
      L6_2 = L6_2.BLHLCHNAJKK
      L6_2 = L6_2.FMLBEGJJHMJ
      if L5_2 == L6_2 then
        goto lbl_36
      end
    end
    L2_2.IsUnlock = false
    ::lbl_36::
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.RogueUnlockConfigExcelTable
    L5_2 = L5_2.GetData
    L6_2 = L3_2.UnlockID
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.RogueUnlockDetail
      L2_2.UnlockText = L6_2
    elseif L4_2 ~= nil then
      L6_2 = L4_2.DataRow
      L6_2 = L6_2.QuestTitle
      L2_2.UnlockText = L6_2
      L6_2 = L4_2.FinishWayRow
      L6_2 = L6_2.ParamInt1
      L2_2.UnlockTextParam = L6_2
    end
    L6_2 = L3_2.TabTitle
    L2_2.TabTitle = L6_2
    L6_2 = {}
    L7_2 = 0
    L8_2 = L3_2.QuestList
    L8_2 = L8_2.Length
    L8_2 = L8_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L6_2
      L13_2 = L3_2.QuestList
      L13_2 = L13_2[L10_2]
      L11_2(L12_2, L13_2)
    end
    L7_2 = G
    L7_2 = L7_2.QuestUtils
    L7_2 = L7_2.get_quest_datas_from_quest_ids
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L2_2.QuestDataList = L7_2
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L0_2
    L9_2 = L2_2
    L7_2(L8_2, L9_2)
  end
  return L0_2
end
L0_1.create_tail_reward_data = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = {}
  L1_2 = {}
  L2_2 = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RogueNousStoryRewardExcelTable
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2()
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L5_2 = L4_2.IsImportant
    if not L5_2 then
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = L1_2
      L7_2 = L4_2.QuestID
      L5_2(L6_2, L7_2)
    else
      L2_2 = L4_2.QuestID
    end
  end
  L4_2 = G
  L4_2 = L4_2.QuestUtils
  L4_2 = L4_2.get_quest_datas_from_quest_ids
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L0_2.NormalQuestData = L4_2
  L4_2 = G
  L4_2 = L4_2.QuestUtils
  L4_2 = L4_2.get_quest_data
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L0_2.FinalQuestData = L4_2
  L4_2 = 0
  L5_2 = ipairs
  L6_2 = L0_2.NormalQuestData
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.Status
    L11_2 = CS
    L11_2 = L11_2.BLHLCHNAJKK
    L11_2 = L11_2.CDJHHIHBNMN
    if L10_2 ~= L11_2 then
      L10_2 = L9_2.Status
      L11_2 = CS
      L11_2 = L11_2.BLHLCHNAJKK
      L11_2 = L11_2.FMLBEGJJHMJ
      if L10_2 ~= L11_2 then
        goto lbl_56
      end
    end
    L4_2 = L4_2 + 1
    ::lbl_56::
  end
  L0_2.FinishCount = L4_2
  return L0_2
end
L0_1.get_story_reward_data = L5_1
L5_1 = nil
L6_1 = nil
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L5_1
  if L0_2 ~= nil then
    L0_2 = L6_1
    if L0_2 ~= nil then
      return
    end
  end
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.RogueNousDifficultyLevelExcelTable
  L0_2 = L0_2.GetEnumerator
  L0_2 = L0_2()
  L1_2 = {}
  L5_1 = L1_2
  L1_2 = {}
  L6_1 = L1_2
  while true do
    L2_2 = L0_2
    L1_2 = L0_2.MoveNext
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      break
    end
    L1_2 = L0_2.Current
    if L1_2 ~= nil then
      L2_2 = L1_2.DifficultyType
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.RogueNousDifficultyType
      L3_2 = L3_2.AttributeDifficulty
      if L2_2 == L3_2 then
        L2_2 = table
        L2_2 = L2_2.insert
        L3_2 = L5_1
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
      else
        L2_2 = L1_2.DifficultyType
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.RogueNousDifficultyType
        L3_2 = L3_2.AdditionalDifficulty
        if L2_2 == L3_2 then
          L2_2 = table
          L2_2 = L2_2.insert
          L3_2 = L6_1
          L4_2 = L1_2
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L0_1._init_extra_difficulty_data = L7_1
function L7_1()
  local L0_2, L1_2
  L0_2 = L0_1._init_extra_difficulty_data
  L0_2()
  L0_2 = L5_1
  L0_2 = #L0_2
  return L0_2
end
L0_1.get_max_attribute_level = L7_1
function L7_1()
  local L0_2, L1_2
  L0_2 = L0_1._init_extra_difficulty_data
  L0_2()
  L0_2 = L6_1
  L0_2 = #L0_2
  return L0_2
end
L0_1.get_max_additional_level = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1._init_extra_difficulty_data
  L1_2()
  L1_2 = 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueNousDifficultyLevelExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.DifficultyType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RogueNousDifficultyType
    L4_2 = L4_2.AttributeDifficulty
    if L3_2 == L4_2 then
      L3_2 = L2_2.DifficultyID
      L4_2 = L5_1[1]
      L4_2 = L4_2.DifficultyID
      L3_2 = L3_2 - L4_2
      L1_2 = L3_2 + 1
    else
      L3_2 = L2_2.DifficultyType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.RogueNousDifficultyType
      L4_2 = L4_2.AdditionalDifficulty
      if L3_2 == L4_2 then
        L3_2 = L2_2.DifficultyID
        L4_2 = L6_1[1]
        L4_2 = L4_2.DifficultyID
        L3_2 = L3_2 - L4_2
        L1_2 = L3_2 + 1
      end
    end
  end
  return L1_2
end
L0_1.get_level_from_difficulty_id = L7_1
function L7_1(A0_2, A1_2)
  local L2_2
  L2_2 = L0_1._init_extra_difficulty_data
  L2_2()
  L2_2 = L5_1[A0_2]
  if L2_2 == nil then
    L2_2 = 0
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueNousDifficultyType
  L2_2 = L2_2.AttributeDifficulty
  if A1_2 == L2_2 then
    L2_2 = L5_1[A0_2]
    L2_2 = L2_2.DifficultyID
    return L2_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.RogueNousDifficultyType
    L2_2 = L2_2.AdditionalDifficulty
    if A1_2 == L2_2 then
      L2_2 = L6_1[A0_2]
      L2_2 = L2_2.DifficultyID
      return L2_2
    end
  end
  L2_2 = 0
  return L2_2
end
L0_1.get_difficulty_id_from_level = L7_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = L0_1._init_extra_difficulty_data
  L0_2()
  L0_2 = 0
  L1_2 = 0
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L3_1.ChessRogueData
  L3_2 = L3_2.AreaInfo
  L3_2 = L3_2.UnlockedExtendDifficultyCompInfo
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.RogueNousDifficultyLevelExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 ~= nil then
      L9_2 = L8_2.DifficultyType
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.RogueNousDifficultyType
      L10_2 = L10_2.AttributeDifficulty
      if L9_2 == L10_2 then
        L9_2 = math
        L9_2 = L9_2.max
        L10_2 = L0_2
        L11_2 = L8_2.DifficultyID
        L9_2 = L9_2(L10_2, L11_2)
        L0_2 = L9_2
      else
        L9_2 = L8_2.DifficultyType
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.GameCore
        L10_2 = L10_2.RogueNousDifficultyType
        L10_2 = L10_2.AdditionalDifficulty
        if L9_2 == L10_2 then
          L9_2 = math
          L9_2 = L9_2.max
          L10_2 = L1_2
          L11_2 = L8_2.DifficultyID
          L9_2 = L9_2(L10_2, L11_2)
          L1_2 = L9_2
        end
      end
    end
  end
  L3_2 = L0_2
  L4_2 = L1_2
  return L3_2, L4_2
end
L0_1.get_max_unlock_extend_difficulty_ids = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._get_extra_difficulty_data
  L2_2 = A0_2
  L3_2 = L5_1
  return L1_2(L2_2, L3_2)
end
L0_1.create_attribute_difficulty_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1._get_extra_difficulty_data
  L2_2 = A0_2
  L3_2 = L6_1
  return L1_2(L2_2, L3_2)
end
L0_1.create_additional_difficulty_data = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L0_1._init_extra_difficulty_data
  L2_2()
  L2_2 = {}
  L3_2 = 1
  L4_2 = A0_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L8_2 = L0_1._try_insert_row
    L9_2 = L7_2
    L10_2 = L2_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L2_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.Sort
    L3_3 = A1_3.Sort
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L3_2(L4_2, L5_2)
  return L2_2
end
L0_1._get_extra_difficulty_data = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = false
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2.Tag
    L9_2 = L7_2.Tag
    if L8_2 == L9_2 then
      L8_2 = A0_2.DifficultyID
      L9_2 = L7_2.DifficultyID
      if L8_2 > L9_2 then
        A1_2[L6_2] = A0_2
      end
      L2_2 = true
    end
  end
  if not L2_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A1_2
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._try_insert_row = L7_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L0_2 = L0_1._init_extra_difficulty_data
  L0_2()
  L0_2 = G
  L0_2 = L0_2.Utils
  L0_2 = L0_2.create_lua_table_from_cs_list
  L1_2 = L3_1.ChessRogueData
  L1_2 = L1_2.AreaInfo
  L1_2 = L1_2.CurExtendDifficultyCompInfo
  L0_2 = L0_2(L1_2)
  L1_2 = 0
  L2_2 = 0
  L3_2 = ipairs
  L4_2 = L0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.RogueNousDifficultyLevelExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 ~= nil then
      L9_2 = L8_2.DifficultyType
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.RogueNousDifficultyType
      L10_2 = L10_2.AttributeDifficulty
      if L9_2 == L10_2 then
        L9_2 = math
        L9_2 = L9_2.max
        L10_2 = L1_2
        L11_2 = L8_2.DifficultyID
        L12_2 = L5_1[1]
        L12_2 = L12_2.DifficultyID
        L11_2 = L11_2 - L12_2
        L11_2 = L11_2 + 1
        L9_2 = L9_2(L10_2, L11_2)
        L1_2 = L9_2
      else
        L9_2 = L8_2.DifficultyType
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.GameCore
        L10_2 = L10_2.RogueNousDifficultyType
        L10_2 = L10_2.AdditionalDifficulty
        if L9_2 == L10_2 then
          L9_2 = math
          L9_2 = L9_2.max
          L10_2 = L2_2
          L11_2 = L8_2.DifficultyID
          L12_2 = L6_1[1]
          L12_2 = L12_2.DifficultyID
          L11_2 = L11_2 - L12_2
          L11_2 = L11_2 + 1
          L9_2 = L9_2(L10_2, L11_2)
          L2_2 = L9_2
        end
      end
    end
  end
  L3_2 = L1_2
  L4_2 = L2_2
  return L3_2, L4_2
end
L0_1.get_cur_difficulty_level = L7_1
function L7_1()
  local L0_2, L1_2
  L0_2 = L4_1.IsGuideOneFinished
  return L0_2()
end
L0_1.is_dice_handbook_unlocked = L7_1
function L7_1()
  local L0_2, L1_2
  L0_2 = L4_1.IsGuideOneFinished
  return L0_2()
end
L0_1.is_talent_tree_unlocked = L7_1
function L7_1()
  local L0_2, L1_2
  L0_2 = L4_1.IsGuideOneFinished
  return L0_2()
end
L0_1.is_edit_dice_unlocked = L7_1
function L7_1()
  local L0_2, L1_2
  L0_2 = L4_1.IsGuideOneFinished
  return L0_2()
end
L0_1.is_story_unlocked = L7_1
function L7_1()
  local L0_2, L1_2
  L0_2 = L4_1.IsGuideOneFinished
  return L0_2()
end
L0_1.is_reward_unlocked = L7_1
function L7_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.ConstValueClientExcelTable
  L0_2 = L0_2.GetData
  L1_2 = "RogueNous_Talent_TalentCoinItemID"
  L0_2 = L0_2(L1_2)
  if L0_2 == nil then
    L1_2 = 0
    return L1_2
  end
  L1_2 = L0_2.Value
  L1_2 = L1_2.UintValue
  return L1_2
end
L0_1.get_talent_coin_item_id = L7_1
function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1.get_talent_coin_item_id
  L0_2 = L0_2()
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L0_2
  return L1_2(L2_2)
end
L0_1.get_talent_coin_item_row = L7_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "RogueNous_DiceHandbook_QuestID"
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = 0
  L3_2 = L1_2.Value
  L3_2 = L3_2.ArrayValue
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L0_2
    L8_2 = L1_2.Value
    L8_2 = L8_2.ArrayValue
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.UintValue
    L6_2(L7_2, L8_2)
  end
  return L0_2
end
L0_1.get_dice_surface_collection_reward_quest_ids = L7_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = L0_1.get_dice_surface_collection_reward_quest_ids
  L0_2 = L0_2()
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Rogue.Handbook.RogueHandbookCollectionRewardDialog"
  L3_2 = "UIText_RogueNous_DiceHandbook_RewardTitle"
  L4_2 = "SpriteOutput/TabIcon/AntiVirus/AntiVirusAwardIcon.png"
  L5_2 = "UIText_RogueNous_DiceHandbook_RewardCondition"
  L6_2 = L0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1.show_dice_surface_collection_reward_dialog = L7_1
function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = L0_1.is_mission_met_condition
  L1_2 = "RogueNous_LevelEntrance_Locked_Round1_SubMissionID"
  L2_2 = "RogueNous_LevelEntrance_Unlock_Round1_SubMissionID"
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = L0_1.is_mission_met_condition
    L1_2 = "RogueNous_LevelEntrance_Locked_Round2_SubMissionID"
    L2_2 = "RogueNous_LevelEntrance_Unlock_Round2_SubMissionID"
    L0_2 = L0_2(L1_2, L2_2)
    if not L0_2 then
      L0_2 = L0_1.is_mission_met_condition
      L1_2 = "RogueNous_LevelEntrance_Locked_Round3_SubMissionID"
      L2_2 = "RogueNous_LevelEntrance_Unlock_Round3_SubMissionID"
      L0_2 = L0_2(L1_2, L2_2)
      if not L0_2 then
        L0_2 = L0_1.is_mission_met_condition
        L1_2 = "RogueNous_LevelEntrance_Locked_Round4_SubMissionID"
        L2_2 = "RogueNous_LevelEntrance_Unlock_Round4_SubMissionID"
        L0_2 = L0_2(L1_2, L2_2)
      end
    end
  end
  return L0_2
end
L0_1.should_back_to_first_page_after_settlement = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L0_1._get_const_value
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1._get_const_value
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.MissionModule
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.SubMissionState
  L7_2 = L4_2
  L6_2 = L4_2.GetSubMissionState
  L8_2 = L2_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L5_2.Finish
  L6_2 = L6_2 == L7_2
  L8_2 = L4_2
  L7_2 = L4_2.GetSubMissionState
  L9_2 = L3_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = L5_2.Finish
  L7_2 = L7_2 ~= L8_2
  L8_2 = L6_2 or L8_2
  if L6_2 then
    L8_2 = L7_2
  end
  return L8_2
end
L0_1.is_mission_met_condition = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1._get_const_value
  L2_2 = "RogueNous_ActivityGuide_Message_SubMissionID"
  L1_2 = L1_2(L2_2)
  if L1_2 == 0 then
    L2_2 = false
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.GetSubMissionState
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SubMissionState
  L3_2 = L3_2.Started
  if L2_2 == L3_2 then
    L3_2 = L0_1._get_const_value
    L4_2 = "RogueNous_ActivityGuide_Message_GroupID"
    L3_2 = L3_2(L4_2)
    if L3_2 == 0 then
      L4_2 = false
      return L4_2
    end
    L4_2 = G
    L4_2 = L4_2.GotoManager
    L4_2 = L4_2.GotoByType
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.GotoType
    L5_2 = L5_2.PhoneNotice
    L5_2 = #L5_2
    L6_2 = {}
    L7_2 = L3_2
    L6_2[1] = L7_2
    L4_2(L5_2, L6_2)
    L4_2 = true
    return L4_2
  end
  L3_2 = false
  return L3_2
end
L0_1.try_go_to_guide_phone_message = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1._get_const_value
  L2_2 = "RogueNous_Entrance_LockMainMission"
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1._get_cur_show_main_mission_id
  L3_2 = {}
  L4_2 = L1_2
  L3_2[1] = L4_2
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  if L1_2 == nil or L1_2 == 0 then
    L2_2 = false
    return L2_2
  end
  L2_2 = G
  L2_2 = L2_2.GotoManager
  L2_2 = L2_2.GotoByType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GotoType
  L3_2 = L3_2.Mission
  L3_2 = #L3_2
  L4_2 = {}
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.MainMissionType
  L5_2 = L5_2.None
  L5_2 = #L5_2
  L6_2 = A0_2._cur_lock_main_mission_id
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
  L2_2 = true
  return L2_2
end
L0_1.try_go_to_cur_guide_mission = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L1_2
    L7_2 = L1_2.TryGetMainMissionData
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = L7_2.IsShow
      if L8_2 then
        return L6_2
      end
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_cur_show_main_mission_id = L7_1
function L7_1(A0_2)
  local L1_2
  if A0_2 == 1 then
    L1_2 = "#adf2ff"
    return L1_2
  elseif A0_2 == 2 then
    L1_2 = "#e5d3ff"
    return L1_2
  elseif A0_2 == 3 then
    L1_2 = "#fffddf"
    return L1_2
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_color_by_surface_rarity = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueNousSeenUnlockAeons
  L3_2 = L1_2
  L2_2 = L1_2.Contains
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = L1_2
    L2_2 = L1_2.Add
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.mark_aeon_seen = L7_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L3_1.ChessRogueData
  L0_2 = L0_2.DiceInfo
  L1_2 = L0_2.DiceType
  L2_2 = CS
  L2_2 = L2_2.HCDGMBDIPNG
  L2_2 = L2_2.PPLLDCHMFPN
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.is_cur_dice_branch_need_show_rolled_out_surfaces = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.SurfaceTags
  if L1_2 ~= nil then
    L2_2 = L1_2.Length
    if L2_2 ~= 0 then
      goto lbl_9
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_9::
  L2_2 = false
  L3_2 = L0_1._get_const_value
  L4_2 = "RogusNous_ActiveDisplayDiceSurfaceTagID"
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L5_2 = L1_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L8_2 = #L8_2
    if L8_2 == L3_2 then
      L2_2 = true
      break
    end
  end
  if not L2_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L3_1.ChessRogueData
  L4_2 = L4_2.DiceInfo
  L4_2 = L4_2.CurRolledOutSurfaceIDs
  if L4_2 ~= nil then
    L5_2 = L4_2.Count
    if L5_2 ~= 0 then
      goto lbl_39
    end
  end
  L5_2 = false
  do return L5_2 end
  ::lbl_39::
  L5_2 = 0
  L6_2 = L4_2.Count
  L6_2 = L6_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = A0_2.SurfaceID
    L10_2 = L4_2[L8_2]
    if L9_2 == L10_2 then
      L9_2 = true
      return L9_2
    end
  end
  L5_2 = false
  return L5_2
end
L0_1.is_surface_need_show_rolled_out = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = 0
    return L2_2
  end
  L2_2 = L1_2.Value
  L2_2 = L2_2.UintValue
  return L2_2
end
L0_1._get_const_value = L7_1
return L0_1
