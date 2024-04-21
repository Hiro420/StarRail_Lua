local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DefaultRogueMenuDataProvider"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init
  L1_2(L2_2)
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  A0_2._rogue_module = L1_2
end
L0_1._init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_cur_rogue_module
  return L1_2(L2_2)
end
L0_1.get_cur_rogue_module = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._rogue_module
  return L1_2
end
L0_1._get_cur_rogue_module = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.get_cur_rogue_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_module
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  return L1_2(L2_2)
end
L0_1._get_cur_rogue_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_module
  L2_2 = L1_2
  L1_2 = L1_2.GetAchivedBuffList
  return L1_2(L2_2)
end
L0_1.get_selected_buffs = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._should_show_map_tab
  return L1_2(L2_2)
end
L0_1.should_show_map_tab = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = true
  return L1_2
end
L0_1._should_show_map_tab = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_main_title_id
  return L1_2(L2_2)
end
L0_1.get_main_title_id = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "UIText_Rogue_Title"
  return L1_2
end
L0_1._get_main_title_id = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_res_bar_key
  return L1_2(L2_2)
end
L0_1.get_res_bar_key = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "RogueMenuPage"
  return L1_2
end
L0_1._get_res_bar_key = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._should_show_aeon_tab
  return L1_2(L2_2)
end
L0_1.should_show_aeon_tab = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._rogue_module
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.GetSelectedRogueAeonID
  L2_2 = L2_2(L3_2)
  L2_2 = 0 < L2_2
  return L2_2
end
L0_1._should_show_aeon_tab = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._should_show_chess_aeon_tab
  return L1_2(L2_2)
end
L0_1.should_show_chess_aeon_tab = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1._should_show_chess_aeon_tab = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._should_show_chess_map_tab
  return L1_2(L2_2)
end
L0_1.should_show_chess_map_tab = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1._should_show_chess_map_tab = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._should_show_miracle_tab
  return L1_2(L2_2)
end
L0_1.should_show_miracle_tab = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueAdventureModule
  L1_2 = L1_2.IsMiracleUnlocked
  return L1_2
end
L0_1._should_show_miracle_tab = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._should_show_dice_tab
  return L1_2(L2_2)
end
L0_1.should_show_dice_tab = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1._should_show_dice_tab = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_res_bar_unlocked
  return L1_2(L2_2)
end
L0_1.is_res_bar_unlocked = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.is_rogue_map_res_bar_unlock
  return L1_2()
end
L0_1._is_res_bar_unlocked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_bg_prefab_index
  return L1_2(L2_2)
end
L0_1.get_bg_prefab_index = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = 0
  return L1_2
end
L0_1._get_bg_prefab_index = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_progress_params
  return L1_2(L2_2)
end
L0_1.get_progress_params = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._rogue_module
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.MapData
  L3_2 = L1_2
  L2_2 = L1_2.GetProgressNum
  L2_2 = L2_2(L3_2)
  L4_2 = L1_2
  L3_2 = L1_2.GetBranchTotalNum
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1._get_progress_params = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_selected_miracles
  return L1_2(L2_2)
end
L0_1.get_selected_miracles = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_module
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.MiracleInfo
  L1_2 = L1_2.AchivedMiracles
  return L1_2
end
L0_1._get_selected_miracles = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_selected_aeon_buffs
  return L1_2(L2_2)
end
L0_1.get_selected_aeon_buffs = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_module
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.GetSelectedRogueAeonBuffInfo
  return L1_2(L2_2)
end
L0_1._get_selected_aeon_buffs = L1_1
return L0_1
