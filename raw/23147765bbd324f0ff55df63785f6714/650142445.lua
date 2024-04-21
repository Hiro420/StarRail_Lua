local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.DefaultRogueMenuDataProvider"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMenuDataProvider"
L2_1 = G
L2_1 = L2_1.DefaultRogueMenuDataProvider
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  A0_2._rogue_module = L1_2
end
L0_1._init = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._rogue_module
  return L1_2
end
L0_1._get_cur_rogue_module = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_module
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.BuffInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetAchivedBuffList
  return L1_2(L2_2)
end
L0_1.get_selected_buffs = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_rogue_sub_mode
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueSubMode
  L2_2 = L2_2.ChessRogue
  if L1_2 == L2_2 then
    L2_2 = "UIText_RogueDLC_MainStory"
    return L2_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.RogueSubMode
    L2_2 = L2_2.ChessRogueNous
    if L1_2 == L2_2 then
      L2_2 = "UIText_RogueNous_Common_SubTtitle"
      return L2_2
    end
  end
end
L0_1._get_main_title_id = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1._should_show_map_tab = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1._should_show_aeon_tab = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._should_show_miracle_tab = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.IsInGuideOne
  L1_2 = L1_2()
  L1_2 = not L1_2
  return L1_2
end
L0_1._should_show_dice_tab = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._should_show_chess_aeon_tab = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._should_show_chess_map_tab = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.is_rogue_map_res_bar_unlock
  return L1_2()
end
L0_1._is_res_bar_unlocked = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = 1
  return L1_2
end
L0_1._get_bg_prefab_index = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._rogue_module
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.MiracleInfo
  L1_2 = L1_2.AchivedMiracles
  return L1_2
end
L0_1._get_selected_miracles = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._rogue_module
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.AeonInfo
  L1_2 = L1_2.AeonBuffInfo
  return L1_2
end
L0_1._get_selected_aeon_buffs = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._rogue_module
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.AeonInfo
  L1_2 = L1_2.SelectedAeonID
  return L1_2
end
L0_1.get_cur_selected_aeon_id = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._rogue_module
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.AeonInfo
  L1_2 = L1_2.SelectedAeonData
  return L1_2
end
L0_1._get_cur_chess_rogue_aeon_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_rogue_sub_mode
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueSubMode
  L2_2 = L2_2.ChessRogue
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_cur_chess_rogue_aeon_data
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2 or L3_2
    if L2_2 then
      L3_2 = G
      L3_2 = L3_2.ChessRogueUtils
      L3_2 = L3_2.get_entrance_aeon_display_buff_tb
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
    end
    return L3_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.RogueSubMode
    L2_2 = L2_2.ChessRogueNous
    if L1_2 == L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.RogueNousAeonExcelTable
      L2_2 = L2_2.GetData
      L4_2 = A0_2
      L3_2 = A0_2.get_cur_selected_aeon_id
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L3_2 = L2_2 or L3_2
      if L2_2 then
        L3_2 = G
        L3_2 = L3_2.RogueNousUtils
        L3_2 = L3_2.create_aeon_buff_display_data
        L4_2 = L2_2
        L5_2 = true
        L3_2 = L3_2(L4_2, L5_2)
      end
      return L3_2
    end
  end
end
L0_1.get_aeon_display_buff_tb = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_rogue_sub_mode
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueSubMode
  L2_2 = L2_2.ChessRogue
  if L1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_cur_chess_rogue_aeon_data
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2 or L3_2
    if L2_2 then
      L3_2 = L2_2.AeonDisplayRow
    end
    return L3_2
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.RogueSubMode
    L2_2 = L2_2.ChessRogueNous
    if L1_2 == L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.RogueNousAeonExcelTable
      L2_2 = L2_2.GetData
      L4_2 = A0_2
      L3_2 = A0_2.get_cur_selected_aeon_id
      L3_2, L4_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = L2_2 or L3_2
      if L2_2 then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.RogueAeonDisplayExcelTable
        L3_2 = L3_2.GetData
        L4_2 = L2_2.DisplayID
        L3_2 = L3_2(L4_2)
      end
      return L3_2
    end
  end
end
L0_1.get_aeon_display_row = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_rogue_sub_mode
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueSubMode
  L2_2 = L2_2.ChessRogue
  if L1_2 == L2_2 then
    L2_2 = G
    L2_2 = L2_2.ChessRogueUtils
    L2_2 = L2_2.get_entrance_aeon_display_content_and_param
    L4_2 = A0_2
    L3_2 = A0_2.get_cur_selected_aeon_id
    L3_2, L4_2 = L3_2(L4_2)
    return L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.RogueSubMode
    L2_2 = L2_2.ChessRogueNous
    if L1_2 == L2_2 then
      L2_2 = G
      L2_2 = L2_2.RogueNousUtils
      L2_2 = L2_2.get_entrance_aeon_display_content_and_param
      L4_2 = A0_2
      L3_2 = A0_2.get_cur_selected_aeon_id
      L3_2, L4_2 = L3_2(L4_2)
      return L2_2(L3_2, L4_2)
    end
  end
end
L0_1.get_aeon_display_content_and_param = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._rogue_module
  L1_2 = L1_2.ChessRogueData
  L1_2 = L1_2.DiceInfo
  return L1_2
end
L0_1.get_cur_dice_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_module
  L2_2 = L1_2
  L1_2 = L1_2.GetCurSubMode
  return L1_2(L2_2)
end
L0_1.get_cur_rogue_sub_mode = L1_1
return L0_1
