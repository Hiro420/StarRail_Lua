local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.CommonComponents.RogueEndlessStatisticsItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.CommonComponents.RogueEndlessStatisticsItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessStatisticsPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = 31
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = G
  L5_2 = L5_2.RogueEndlessStatisticsItem
  L6_2 = G
  L6_2 = L6_2.RogueEndlessStatisticsItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2.statistics_list = L1_2
  L1_2 = A0_2.statistics_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_statistics
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueMiracleUpdated
  L4_2 = L0_1.refresh
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2.data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L2_2.name = "UIText_ActivityRogueEndless_UI_SP_Tip_1"
  L3_2 = L1_2.ItemCurrencyIconPath
  L2_2.icon_path = L3_2
  L2_2.num = 0
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.data
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L3_2.name = "UIText_ActivityRogueEndless_UI_SP_Tip_2"
  L3_2.icon_path = nil
  L3_2.custom_num = 0
  L2_2 = L3_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2.data
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.init_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.buff_param
  if L2_2 == nil then
    L2_2 = L1_1.RogueEndlessConstValue
    L2_2 = L2_2.CosmicFragmentMazeBuff
    L3_2 = G
    L3_2 = L3_2.BuffUtils
    L3_2 = L3_2.GetMazeBuffData
    L4_2 = L2_2
    L5_2 = 1
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2.ParamList
    L4_2 = L4_2[0]
    L5_2 = L4_2
    L4_2 = L4_2.ToFloat
    L4_2 = L4_2(L5_2)
    A0_2.buff_param = L4_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.MMathf
  L2_2 = L2_2.RoundToInt
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A1_2 / 100
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.buff_param
  L3_2 = L3_2 * L4_2
  L3_2 = L3_2 * 100
  L2_2 = L2_2(L3_2)
  return L2_2
end
L0_1.calc_buff_param_percent = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.GetCosmicFragmentCountInEndlessSpecificLevel
  L1_2 = L1_2()
  L2_2 = A0_2.data
  L2_2 = L2_2[1]
  L2_2.num = L1_2
  L2_2 = A0_2.data
  L2_2 = L2_2[2]
  L4_2 = A0_2
  L3_2 = A0_2.calc_buff_param_percent
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.custom_num = L3_2
  L2_2 = A0_2.statistics_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2.data
  L2_2(L3_2, L4_2)
end
L0_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.init_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L0_1.setup_view = L3_1
return L0_1
