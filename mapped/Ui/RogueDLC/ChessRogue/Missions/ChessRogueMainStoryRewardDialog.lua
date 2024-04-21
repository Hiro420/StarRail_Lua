local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Missions.ChessRogueMainStroyRewardRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Missions.ChessRogueMainStoryRewardDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueMainStoryRewardDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChessRogueMainStoryRewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._goto_mapinfo = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  if A1_2 ~= nil then
    A0_2._goto_mapinfo = A1_2
  end
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_row_view
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueDLCMainStoryRewardExcelTable
  L2_2 = L1_2
  L1_2 = L1_2.AllRows
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._reward_rows = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._sort
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_row_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_rows
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_row_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1.exit_by_jump = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._reward_rows
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = CS
    L2_3 = L2_3.RPG
    L2_3 = L2_3.Client
    L2_3 = L2_3.GlobalVars
    L2_3 = L2_3.s_ModuleManager
    L2_3 = L2_3.QuestModule
    L3_3 = L2_3
    L2_3 = L2_3.TryGetQuestData
    L4_3 = A0_3.QuestID
    L2_3 = L2_3(L3_3, L4_3)
    L3_3 = CS
    L3_3 = L3_3.RPG
    L3_3 = L3_3.Client
    L3_3 = L3_3.GlobalVars
    L3_3 = L3_3.s_ModuleManager
    L3_3 = L3_3.QuestModule
    L4_3 = L3_3
    L3_3 = L3_3.TryGetQuestData
    L5_3 = A1_3.QuestID
    L3_3 = L3_3(L4_3, L5_3)
    L4_3 = L2_3.Status
    L5_3 = L3_3.Status
    if L4_3 == L5_3 then
      L4_3 = A0_3.Important
      L5_3 = A1_3.Important
      if L4_3 == L5_3 then
        L4_3 = A0_3.Sort
        L5_3 = A1_3.Sort
        L4_3 = L4_3 < L5_3
        return L4_3
      else
        L4_3 = A0_3.Important
        return L4_3
      end
    end
    L4_3 = L2_3.Status
    L5_3 = CS
    L5_3 = L5_3.LEOGBBOPKKO
    L5_3 = L5_3.JKFPIINHGPD
    if L4_3 ~= L5_3 then
      L4_3 = L3_3.Status
      L5_3 = CS
      L5_3 = L5_3.LEOGBBOPKKO
      L5_3 = L5_3.JKFPIINHGPD
      if L4_3 ~= L5_3 then
        goto lbl_58
      end
    end
    L4_3 = L2_3.Status
    L5_3 = CS
    L5_3 = L5_3.LEOGBBOPKKO
    L5_3 = L5_3.JKFPIINHGPD
    L4_3 = L4_3 == L5_3
    do return L4_3 end
    ::lbl_58::
    L4_3 = A0_3.Important
    L5_3 = A1_3.Important
    if L4_3 ~= L5_3 then
      L4_3 = A0_3.Important
      return L4_3
    end
    L4_3 = L2_3.Status
    L5_3 = CS
    L5_3 = L5_3.LEOGBBOPKKO
    L5_3 = L5_3.KBBBFCIHJPC
    if L4_3 ~= L5_3 then
      L4_3 = L3_3.Status
      L5_3 = CS
      L5_3 = L5_3.LEOGBBOPKKO
      L5_3 = L5_3.KBBBFCIHJPC
      if L4_3 ~= L5_3 then
        goto lbl_85
      end
    end
    L4_3 = L2_3.Status
    L5_3 = CS
    L5_3 = L5_3.LEOGBBOPKKO
    L5_3 = L5_3.KBBBFCIHJPC
    L4_3 = L4_3 == L5_3
    do return L4_3 end
    ::lbl_85::
    L4_3 = A0_3.Sort
    L5_3 = A1_3.Sort
    L4_3 = L4_3 < L5_3
    return L4_3
  end
  L1_2(L2_2, L3_2)
end
L0_1._sort = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._reward_rows
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L4_2 = nil
  L5_2 = L3_2.IsImportant
  if L5_2 == 1 then
    L6_2 = A1_2
    L5_2 = A1_2.NewListViewItem
    L7_2 = 1
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  else
    L6_2 = A1_2
    L5_2 = A1_2.NewListViewItem
    L7_2 = 0
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
  end
  L5_2 = L4_2.UserObjectData
  if L5_2 ~= nil then
    L6_2 = L5_2.is_destroyed
    if not L6_2 then
      goto lbl_34
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.create_panel
  L8_2 = G
  L8_2 = L8_2.ChessRogueMainStroyRewardRowPanel
  L9_2 = G
  L9_2 = L9_2.ChessRogueMainStroyRewardRowPanelBinder
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L6_2
  L7_2 = L5_2
  L6_2 = L5_2.bind
  L8_2 = L4_2.transform
  L6_2(L7_2, L8_2)
  L4_2.UserObjectData = L5_2
  ::lbl_34::
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = L3_2.QuestID
  L9_2 = L3_2.MainStoryID
  L10_2 = A0_2._goto_mapinfo
  L6_2(L7_2, L8_2, L9_2, L10_2)
  return L4_2
end
L0_1._on_item_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = G
  L3_2 = L3_2.RewardDialog
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.create_lua_table_from_cs_list
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_get_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.reward_row_view
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_10::
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_row_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_row_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L3_2 = L2_2
      L2_2 = L2_2.get_btn_root
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2.gameObject
      return L2_2
    end
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 38
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_in_control_input_switch = L1_1
return L0_1
