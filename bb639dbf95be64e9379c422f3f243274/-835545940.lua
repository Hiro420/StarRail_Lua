local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumStaffChooseDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumStaffChooseDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MuseumModule
L2_1 = 3
L3_1 = "UIText_Activity_Museum_SetStuff_Full"
L4_1 = "UIText_Activity_Museum_SetStuff_Exchange"
L5_1 = 32
L6_1 = 131
L7_1 = "5039"
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumStaffChooseDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L8_1
function L8_1(A0_2, A1_2)
  A0_2._museum_area_data = A1_2
end
L0_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_shop
  L4_2 = A0_2._on_btn_shop_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_atlas
  L4_2 = A0_2._on_btn_atlas_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.staff_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_click_callback
  L3_2 = A0_2._on_staff_click
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.staff_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_gamepad_select_callback
  L3_2 = A0_2._on_gamepad_select_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_switch_area_callback
  L3_2 = A0_2._on_switch_area
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_staff_slots
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumMarket"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_shop_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MuseumAtlasCollectReward"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_atlas_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumSetStaff
  L4_2 = A0_2._on_museum_staff_add
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MuseumRemoveStaff
  L4_2 = A0_2._on_museum_staff_remove
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._museum_area_data
  L2_2 = L1_2
  L1_2 = L1_2.ClearPreview
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.NewMuseumStaff
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
L0_1._on_dispose = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_atlas
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.IsAtlasUnlock
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = L7_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.staff_slot_panel_table
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_btn_enable
    L8_2 = true
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_btn_callback
    L8_2 = A0_2._on_staff_click
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._init_staff_slots = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._museum_area_data
  L2_2 = L2_2.AreaRenewPoint
  L2_2 = L2_2.IsJustMax
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.area_info_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_renew_point_anim
    L2_2(L3_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.area_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.try_play_property_bar_anim
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.area_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.try_play_rank_anim
  L2_2(L3_2)
  L2_2 = A0_2._museum_area_data
  L3_2 = L2_2
  L2_2 = L2_2.PreviewAddStaff
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_staff_change
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_museum_staff_add = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._museum_area_data
  L3_2 = L2_2
  L2_2 = L2_2.ClearPreview
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_staff_change
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_museum_staff_remove = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_area_staff
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.staff_select_panel
  L3_2 = L2_2
  L2_2 = L2_2.on_staff_change
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_staff_change = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_show_preview
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_renew_point_preview
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_ctrl_color
  L3_2 = true
  L4_2 = true
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._museum_area_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.area_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_switch_area_btn_active
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.OwnerMuseum
  L4_2 = L3_2
  L3_2 = L3_2.GetUnlockAreaNum
  L3_2 = L3_2(L4_2)
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.staff_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_selected_checker
  L3_2 = A0_2._check_staff_selected
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.staff_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.OwnerMuseum
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_area_staff
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_shop
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L1_1.IsMarketUnlock
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_return_to_top = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = A0_2._museum_area_data
  L2_2 = L2_2.MuseumStaffDatas
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L4_2 + 1
    L6_2 = A0_2._museum_area_data
    L6_2 = L6_2.MuseumStaffDatas
    L6_2 = L6_2[L4_2]
    L7_2 = A0_2._binder
    L7_2 = L7_2.staff_slot_panel_table
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_area_staff = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.OwnerAreaID
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.ID
  L2_2 = L2_2 == L3_2
  return L2_2
end
L0_1._check_staff_selected = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.NewMuseumStaff
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2.ID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._check_staff_selected
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_unselect_staff
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._try_select_staff
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_staff_click = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._museum_area_data
  L3_2 = L2_2
  L2_2 = L2_2.GetStaffNum
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1
  if L2_2 == L3_2 then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = L3_1
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A1_2.IsSettled
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ConfirmDialogUtil
    L3_2 = L3_2.ShowOkCancelHint
    L4_2 = ""
    L5_2 = ""
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3
      if A0_3 then
        L1_3 = A0_2._museum_area_data
        L2_3 = L1_3
        L1_3 = L1_3.TryAddStaff
        L3_3 = A1_2
        L1_3(L2_3, L3_3)
      end
    end
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2._museum_area_data
    L4_2 = L4_2.OwnerMuseum
    L5_2 = L4_2
    L4_2 = L4_2.GetAreaData
    L6_2 = A1_2.OwnerAreaID
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = L4_2.Row
    L6_2 = L6_2.MuseumAreaName
    L5_2 = L5_2(L6_2)
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = A0_2._museum_area_data
    L7_2 = L7_2.Row
    L7_2 = L7_2.MuseumAreaName
    L6_2 = L6_2(L7_2)
    L8_2 = L3_2
    L7_2 = L3_2.SetContent
    L9_2 = L4_1
    L10_2 = L5_2
    L11_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
    return
  end
  L3_2 = A0_2._museum_area_data
  L4_2 = L3_2
  L3_2 = L3_2.TryAddStaff
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1._try_select_staff = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._museum_area_data
  L3_2 = L2_2
  L2_2 = L2_2.TryRemoveStaff
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._try_unselect_staff = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_confirm_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshStaffAvailable
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.UIManager
    L0_3 = L0_3.load_and_async_show
    L1_3 = "Ui.Museum.MuseumMarketPage"
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_shop_click = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Museum.MuseumAtlasPage"
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_atlas_click = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._museum_area_data
  L2_2 = L2_2.ID
  L2_2 = L2_2 + A1_2
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.OwnerMuseum
  L4_2 = L3_2
  L3_2 = L3_2.GetUnlockAreaNum
  L3_2 = L3_2(L4_2)
  if L2_2 > L3_2 then
    L2_2 = L2_2 - L3_2
  end
  if L2_2 <= 0 then
    L2_2 = L2_2 + L3_2
  end
  L4_2 = A0_2._museum_area_data
  L5_2 = L4_2
  L4_2 = L4_2.ClearPreview
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._museum_area_data
  L4_2 = L4_2.OwnerMuseum
  L5_2 = L4_2
  L4_2 = L4_2.GetAreaData
  L6_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._museum_area_data = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.MuseumCurEditAreaChange
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1._on_switch_area = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.staff_select_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L8_1
function L8_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.NewMuseumStaff
  L3_2 = L2_2
  L2_2 = L2_2.Remove
  L4_2 = A1_2.ID
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.OwnerAreaID
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.ID
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = L6_1
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = L5_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_gamepad_select_item = L8_1
return L0_1
