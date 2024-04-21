local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumMarketPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumMarketStaffItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumMarketStaffItemPanelBinder"
L0_1(L1_1)
L0_1 = "UIText_Activity_Museum_Recruit_Confirm"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_NetworkManager
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "MuseumMarketPage"
L5_1 = G
L5_1 = L5_1.BasePage
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumMarketPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumDataRefresh
  L4_2 = A0_2._on_museum_data_refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumGetAvatarStaff
  L4_2 = A0_2._on_museum_get_avatar_staff
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.staff_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_res_bar
  L3_2 = "MuseumPage"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._museum_data = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.NewMuseumMarketStaff
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.ForceSave
  L1_2()
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.talk_panel
  L2_2 = L1_2
  L1_2 = L1_2.trigger_random_talk
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MuseumTalkTriggerType
  L3_2 = L3_2.Market
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_Select"
  L5_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L1_2(L2_2, L3_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._create_array_from_staff_dict
  L2_2 = L1_1.AllStaffs
  L1_2 = L1_2(L2_2)
  A0_2._staffs = L1_2
  L1_2 = G
  L1_2 = L1_2.MuseumUtils
  L1_2 = L1_2.generate_random_rotation_angles
  L2_2 = A0_2._staffs
  L3_2 = A0_2._staff_rotation_angles
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._staff_rotation_angles = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.staff_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._staffs
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.staff_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L3_1._refresh = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_25
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.MuseumMarketStaffItemPanel
  L8_2 = G
  L8_2 = L8_2.MuseumMarketStaffItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_click_callback
  L7_2 = A0_2._on_btn_staff
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L3_2.UserObjectData = L4_2
  ::lbl_25::
  L5_2 = A0_2._staffs
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_avatar_head_rotation
  L8_2 = A0_2._staff_rotation_angles
  L9_2 = L5_2.ID
  L8_2 = L8_2[L9_2]
  L6_2(L7_2, L8_2)
  return L3_2
end
L3_1._on_item_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_btn_close = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.NewMuseumMarketStaff
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2.ID
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkCancelHint
  L3_2 = ""
  L4_2 = ""
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = L2_1
      L2_3 = L1_3
      L1_3 = L1_3.CAKFHGCDAGN
      L3_3 = A1_2.ID
      L1_3(L2_3, L3_3)
    end
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.SetContent
  L5_2 = L0_1
  L6_2 = A1_2.StaffRow
  L6_2 = L6_2.RecruitPrice
  L3_2(L4_2, L5_2, L6_2)
  return
end
L3_1._on_btn_staff = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L3_1._on_museum_get_avatar_staff = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L3_1._on_museum_data_refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L3_2 = L3_2.Value
    L4_2 = L3_2.StaffRow
    L4_2 = L4_2.Type
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.StuffType
    L5_2 = L5_2.NPC
    if L4_2 == L5_2 then
      L4_2 = L3_2.Status
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.MuseumStaffData
      L5_2 = L5_2.StaffStatus
      L5_2 = L5_2.None
      if L4_2 ~= L5_2 then
        L4_2 = L3_2.StaffRow
        L4_2 = L4_2.IsTargetReward
        if not L4_2 then
          L4_2 = #L1_2
          L4_2 = L4_2 + 1
          L5_2 = L2_2.Current
          L5_2 = L5_2.Value
          L1_2[L4_2] = L5_2
        end
      end
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L1_2
  L5_2 = L3_1._compare_staff_data
  L3_2(L4_2, L5_2)
  return L1_2
end
L3_1._create_array_from_staff_dict = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.IsOwned
  L3_2 = A1_2.IsOwned
  if L2_2 ~= L3_2 then
    L2_2 = A1_2.IsOwned
    return L2_2
  end
  L2_2 = A0_2.StaffRow
  L2_2 = L2_2.RecruitPrice
  L3_2 = A1_2.StaffRow
  L3_2 = L3_2.RecruitPrice
  if L2_2 ~= L3_2 then
    L2_2 = A0_2.StaffRow
    L2_2 = L2_2.RecruitPrice
    L3_2 = A1_2.StaffRow
    L3_2 = L3_2.RecruitPrice
    L2_2 = L2_2 > L3_2
    return L2_2
  end
  L2_2 = A0_2.ID
  L3_2 = A1_2.ID
  L2_2 = L2_2 > L3_2
  return L2_2
end
L3_1._compare_staff_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.staff_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L3_1.get_first_selected_object = L4_1
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
L3_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L3_1._init_ui_navigation = L4_1
return L3_1
