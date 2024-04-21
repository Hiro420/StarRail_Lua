local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherGym.AetherDivideBadgeListDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideBadgeListDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherDivideBadgeListDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_stay
  L4_2 = A0_2._on_btn_stay
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mission_list
  L2_2 = L1_2
  L1_2 = L1_2.register_panel_setup_callback
  L3_2 = A0_2._on_setup_mission_info
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view_by_quest
  L5_2 = A0_2._quest_id_list
  L5_2 = L5_2[A2_2]
  L3_2(L4_2, L5_2)
end
L0_1._on_setup_mission_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_mission_list
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.GymData
  L2_2 = L1_2
  L1_2 = L1_2.GetGymDataItem
  L3_2 = L1_1.GymData
  L3_2 = L3_2.CurGymID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_array
    L3_2 = L1_2.GymInfoRow
    L3_2 = L3_2.ChallengeQuestList
    L2_2 = L2_2(L3_2)
    A0_2._quest_id_list = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.mission_list
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = A0_2._quest_id_list
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_mission_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.KFDMMGIDICI
  L1_2(L2_2)
end
L0_1._on_btn_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_stay = L2_1
return L0_1
