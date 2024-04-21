local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.RewardDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumPhasePreviewPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumPhasePreviewQuestPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumPhasePreviewQuestPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumPhasePreviewPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 5
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.MuseumPhaseExcelTable
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumPhasePreviewPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_save_by_click = true
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2.current_data = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 35
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._short_cut_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close_bg
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_quest_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_quest_panel
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2.data = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1.GetData
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.data
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_quest_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._phase_panels = L1_2
  L1_2 = {}
  A0_2.btn_table = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MuseumPhasePreviewQuestPanel
    L8_2 = G
    L8_2 = L8_2.MuseumPhasePreviewQuestPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_quest_items
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._phase_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.btn_table
    L8_2 = L5_2._binder
    L8_2 = L8_2.btn_root
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_quest_panel = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_quest
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_navigation_target
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._phase_panels
  L1_2 = L1_2[1]
  if L1_2 ~= nil then
    L2_2 = L1_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.current_quest_panel
  if L1_2 then
    L1_2 = A0_2.current_quest_panel
    L2_2 = L1_2
    L1_2 = L1_2.show_reward_dialog
    L1_2(L2_2)
  end
end
L0_1._on_left_stick_button_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2.btn_table
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = ipairs
  L2_2 = A0_2._phase_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2.data
    L6_2 = L6_2[L4_2]
    L8_2 = L5_2
    L7_2 = L5_2.setup_view
    L9_2 = L6_2.PhaseQuestID
    L7_2(L8_2, L9_2)
    L8_2 = L5_2
    L7_2 = L5_2.setup_phase_info
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L8_2 = L5_2
    L7_2 = L5_2.register_select_callback
    L9_2 = A0_2._quest_on_select
    L10_2 = A0_2
    L11_2 = L5_2
    L12_2 = L4_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L8_2 = L5_2
    L7_2 = L5_2.register_callback
    L9_2 = A0_2._quest_get_click
    L10_2 = A0_2
    L11_2 = L6_2.PhaseQuestID
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1.refresh_quest = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
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
  L4_2 = L2_2
  L3_2 = L2_2.Add
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_NetworkManager
  L4_2 = L3_2
  L3_2 = L3_2.JCCHEMBPEEE
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._quest_get_click = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.save_navigation_target
  L5_2 = A1_2._binder
  L5_2 = L5_2.btn_root
  L5_2 = L5_2.gameObject
  L3_2(L4_2, L5_2)
  A0_2.current_quest_panel = A1_2
end
L0_1._quest_on_select = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_quest
  L2_2(L3_2)
end
L0_1._on_quest_get_reward = L3_1
return L0_1
