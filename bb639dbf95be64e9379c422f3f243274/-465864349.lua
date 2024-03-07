local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Map.RegionalDetail.MapSymbolDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MapDroneDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.param_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_mapping_info_drone_view
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress_raid
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_ghost_fire_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_game_pad
  L5_2 = A0_2._on_btn_game_pad_click
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_btn_game_pad_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.SpecialMappingInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.param_data
  L2_2 = L2_2.map_icon_data
  L2_2 = L2_2.MappingInfoRow
  L2_2 = L2_2.ID
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = L1_2.ParamList
  L2_2 = L2_2(L3_2)
  A0_2._quest_ids = L2_2
  L2_2 = {}
  A0_2._quest_datas = L2_2
  L2_2 = 1
  L3_2 = A0_2._quest_ids
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.TryGetQuestData
    L8_2 = A0_2._quest_ids
    L8_2 = L8_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._quest_datas
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    else
      L7_2 = {}
      L6_2 = L7_2
      L7_2 = A0_2._quest_ids
      L7_2 = L7_2[L5_2]
      L6_2.ID = L7_2
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.QuestDataExcelTable
      L7_2 = L7_2.GetData
      L8_2 = A0_2._quest_ids
      L8_2 = L8_2[L5_2]
      L7_2 = L7_2(L8_2)
      L6_2.DataRow = L7_2
      L7_2 = CS
      L7_2 = L7_2.BLHLCHNAJKK
      L7_2 = L7_2.BILIHDBLNBB
      L6_2.Status = L7_2
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = A0_2._quest_datas
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = A0_2._quest_datas
  L2_2 = L2_2[1]
  A0_2._progress_quest_data = L2_2
  L2_2 = A0_2._quest_datas
  L2_2 = L2_2[2]
  A0_2._reddot_quest_data = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._progress_quest_data
  L4_2 = L4_2 ~= nil
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_ghost_fire
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = {}
  L5_2 = A0_2._progress_quest_data
  L4_2[1] = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._progress_quest_data
  L2_2 = L2_2 ~= nil
  L3_2 = A0_2._reddot_quest_data
  L3_2 = L3_2 ~= nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_red_dot_tip
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2 or L6_2
  if L2_2 then
    L6_2 = not L3_2
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_red_dot_tip
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_ActivityRedDot_Reward"
  L4_2(L5_2, L6_2)
end
L0_1._setup_mapping_info_drone_view = L2_1
return L0_1
