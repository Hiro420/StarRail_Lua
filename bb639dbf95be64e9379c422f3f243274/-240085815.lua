local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Train.VisitorRegister.VisitorRegisterPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Train.VisitorRegister.VisitorRegisterAvatarHeadIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Train.VisitorRegister.VisitorRegisterAvatarHeadIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarCampFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "VisitorRegisterPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TrainModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.AvatarModule
L3_1 = 4012801
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.VisitorRegisterPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_save_by_click = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.AvatarCampFilter
  L1_2 = L1_2(L2_2)
  A0_2._camp_filter = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._cur_selected_panel
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._cur_selected_panel
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 33
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.short_cut_hint_panel = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TrainVisitorTakeReward
  L4_2 = A0_2._on_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TrainVisitorRegisterInfoSynced
  L4_2 = A0_2._on_visitor_info_update
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_avatar_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SendGetTrainVisitorRegisterCsReq
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.custom_setup_view
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AchievementModule
  L2_2 = L1_2
  L1_2 = L1_2.SendFinishClientAchievementCsReq
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.init_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_filter
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_register
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._all_avatar_data
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.try_show_new_supplement_dialog
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._init_ui_navigation
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1.custom_setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = L1_1.NewVisitorIDList
  L1_2 = L1_2.Count
  if L1_2 == 0 then
    return
  end
  L1_2 = {}
  L2_2 = L1_1.NewVisitorIDList
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.GetTrainVisitorInfo
    L9_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L0_1.get_avatar_data
    L11_2 = L7_2.AvatarID
    L10_2, L11_2 = L10_2(L11_2)
    L8_2(L9_2, L10_2, L11_2)
  end
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_show
  L4_2 = "Ui.Train.VisitorRegister.NewVisitor.VisitorRegisterNewAvatarDialog"
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1.try_show_new_supplement_dialog = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.sort_avatar_list
  L1_2(L2_2)
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2[1]
  A0_2._cur_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_avatar_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_detail_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_navigation_target
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._avatar_data
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.ID
    L3_3 = A1_3.ID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
end
L0_1.sort_avatar_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._all_avatar_data = L1_2
  L1_2 = {}
  A0_2._train_visitor_data = L1_2
  L1_2 = {}
  A0_2.camp_id_list = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllTrainVisitorInfos
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = L6_2.Status
    L7_2 = #L7_2
    L8_2 = CS
    L8_2 = L8_2.JBBKIEHKBCK
    L8_2 = L8_2.OLBDPNDLNIP
    L8_2 = #L8_2
    if L7_2 > L8_2 then
      L7_2 = A0_2._train_visitor_data
      L8_2 = L6_2.AvatarID
      L7_2[L8_2] = L6_2
      L7_2 = L0_1.get_avatar_data
      L8_2 = L6_2.AvatarID
      L7_2 = L7_2(L8_2)
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._all_avatar_data
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2.camp_id_list
      L10_2 = L7_2.CampID
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1.init_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  function L1_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3 = L2_3(L3_3)
    for L5_3, L6_3 in L2_3, L3_3, L4_3 do
      if L6_3 == A1_3 then
        L7_3 = true
        return L7_3
      end
    end
    L2_3 = false
    return L2_3
  end
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.CharacterCampConfigExcelTable
  L3_2 = L3_2.dataDict
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.CampType
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.CharacterCampType
    L10_2 = L10_2.Avatar
    if L9_2 == L10_2 then
      L9_2 = L1_2
      L10_2 = A0_2.camp_id_list
      L11_2 = L8_2.ID
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L9_2 = A0_2._camp_filter
        L10_2 = L9_2
        L9_2 = L9_2._create_filter_data
        L11_2 = L8_2.ID
        L12_2 = L8_2.Name
        L13_2 = nil
        L14_2 = false
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
        L10_2 = #L2_2
        L10_2 = L10_2 + 1
        L2_2[L10_2] = L9_2
      end
    end
  end
  return L2_2
end
L0_1._get_all_filter_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._avatar_data
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_left
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._avatar_data
  L3_2 = #L3_2
  L3_2 = L3_2 == 0
  L1_2(L2_2, L3_2)
end
L0_1.refresh_avatar_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAvatar
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.AvatarData
    L2_2 = L2_2.CreateGachaData
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  return L1_2
end
L0_1.get_avatar_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._camp_filter
  L2_2 = L1_2
  L1_2 = L1_2.inject_all_filter_data
  L4_2 = A0_2
  L3_2 = A0_2._get_all_filter_data
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_filters
  L3_2 = A0_2._camp_filter
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_source_data
  L3_2 = A0_2._all_avatar_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_callback
  L3_2 = nil
  L4_2 = A0_2._on_filter_finished
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.filter_panel
  L2_2 = L1_2
  L1_2 = L1_2.refresh_filters
  L1_2(L2_2)
end
L0_1._init_filter = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._avatar_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_filter_finished = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.VisitorRegisterAvatarHeadIconPanel
    L8_2 = G
    L8_2 = L8_2.VisitorRegisterAvatarHeadIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._avatar_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._train_visitor_data
  L10_2 = L5_2.ID
  L9_2 = L9_2[L10_2]
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_call_back
  L8_2 = A0_2._on_item_click
  L9_2 = A0_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2._cur_data
  if L5_2 == L6_2 then
    A0_2._cur_selected_panel = L4_2
  end
  L7_2 = L4_2
  L6_2 = L4_2.set_checked
  L8_2 = A0_2._cur_data
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_avatar_changed = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._cur_selected_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._cur_selected_panel
    if L3_2 ~= A1_2 then
      L3_2 = A0_2._cur_selected_panel
      L4_2 = L3_2
      L3_2 = L3_2.set_checked
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  end
  L4_2 = A1_2
  L3_2 = A1_2.set_checked
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._cur_data = A2_2
  L3_2 = A0_2._train_visitor_data
  L4_2 = A2_2.ID
  L3_2 = L3_2[L4_2]
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.RecordVisitorInRegisterSeen
  L6_2 = L3_2.VisitorID
  L4_2(L5_2, L6_2)
  A0_2._cur_selected_panel = A1_2
  L5_2 = A0_2
  L4_2 = A0_2.refresh_detail_panel
  L4_2(L5_2)
end
L0_1._on_item_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cur_data
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.detail_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = nil
    L4_2 = nil
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_data
  L4_2 = A0_2._train_visitor_data
  L5_2 = A0_2._cur_data
  L5_2 = L5_2.ID
  L4_2 = L4_2[L5_2]
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = 33
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_rect
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
end
L0_1.refresh_detail_panel = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_reward_btn_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = "UIText_VisitorRegister_VisitorLeave_Reward_Title"
  L5_2 = "UIText_VisitorRegister_VisitorLeave_Reward_Describe"
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_get_reward = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh_detail_panel
  L1_2(L2_2)
end
L0_1._on_visitor_info_update = L4_1
return L0_1
