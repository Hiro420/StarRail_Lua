local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LockSetting.LightConeLockSettingDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LockSetting.LightConeSettingListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.LightCone.LockSetting.LightConeSettingListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeLockSettingDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LightConeLockSettingDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._confirm_callback = A2_2
  A0_2._callback_self = A3_2
  L4_2 = A1_2.FromSellPage
  A0_2.from_sell_page = L4_2
  L4_2 = A1_2.ReportPageName
  A0_2.report_page_name = L4_2
end
L0_1.init = L2_1
L2_1 = {}
L2_1.UnlockAllRare = 1
L2_1.UnlockRankMaxRare = 2
L2_1.LockAllRare = 3
L2_1.LockAllSuperRare = 4
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._title = "UIText_Equipment_LockManagement_Title"
  L1_2 = {}
  A0_2.current_select_item = L1_2
  L1_2 = {}
  L2_2 = {}
  L2_2.EnableMultiSelect = false
  L2_2.MaxSelection = 1
  L2_2.MustSelect = false
  L2_2.ListName = "UIText_Equipment_LockManagement_Label_01"
  L3_2 = A0_2.current_select_item
  L2_2.CurrentSelectItem = L3_2
  L3_2 = {}
  L4_2 = {}
  L5_2 = L2_1.UnlockAllRare
  L4_2.Type = L5_2
  L4_2.IsSelected = false
  L4_2.Name = "UIText_Equipment_LockManagement_LockText_01"
  L5_2 = {}
  L6_2 = L2_1.UnlockRankMaxRare
  L5_2.Type = L6_2
  L5_2.IsSelected = false
  L5_2.Name = "UIText_Equipment_LockManagement_LockText_02"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L2_2.AllItem = L3_2
  L3_2 = {}
  L3_2.EnableMultiSelect = false
  L3_2.MaxSelection = 1
  L3_2.MustSelect = false
  L3_2.ListName = "UIText_Equipment_LockManagement_Label_02"
  L4_2 = A0_2.current_select_item
  L3_2.CurrentSelectItem = L4_2
  L4_2 = {}
  L5_2 = {}
  L6_2 = L2_1.LockAllRare
  L5_2.Type = L6_2
  L5_2.IsSelected = false
  L5_2.Name = "UIText_Equipment_LockManagement_UnlockText_03"
  L6_2 = {}
  L7_2 = L2_1.LockAllSuperRare
  L6_2.Type = L7_2
  L6_2.IsSelected = false
  L6_2.Name = "UIText_Equipment_LockManagement_UnlockText_04"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L3_2.AllItem = L4_2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2._data = L1_2
  L1_2 = A0_2.from_sell_page
  if L1_2 then
    L1_2 = table
    L1_2 = L1_2.remove
    L2_2 = A0_2._data
    L2_2 = L2_2[2]
    L2_2 = L2_2.AllItem
    L3_2 = 2
    L1_2(L2_2, L3_2)
  end
end
L0_1._init_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._init_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_clear
  L4_2 = A0_2._on_btn_clear
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sort_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_order_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_filter_dialog_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sort_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._data
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.sort_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Equipment_LockManagement_Info_Label"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2.current_select_item
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2.Type
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
L0_1._get_current_select_type = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.lock_setting_execute
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_current_select_type
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._confirm_callback
  L4_2 = A0_2._callback_self
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = #L1_2
  if 0 < L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.SDKLuaReportAdapter
    L2_2 = L2_2.ReportLightConeLockSetting
    L3_2 = L1_2[1]
    L4_2 = A0_2.report_page_name
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_btn_confirm = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_current_select_type
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  if L2_2 == 0 then
    return
  end
  L2_2 = L1_2[1]
  L3_2 = L2_1.UnlockAllRare
  if L2_2 == L3_2 then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.UnlockAllEquipments
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ItemRarity
    L5_2 = L5_2.VeryRare
    L3_2(L4_2, L5_2)
  else
    L3_2 = L2_1.UnlockRankMaxRare
    if L2_2 == L3_2 then
      L3_2 = L1_1
      L4_2 = L3_2
      L3_2 = L3_2.UnlockAllRankMaxEquipments
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.ItemRarity
      L5_2 = L5_2.VeryRare
      L3_2(L4_2, L5_2)
    else
      L3_2 = L2_1.LockAllRare
      if L2_2 == L3_2 then
        L3_2 = L1_1
        L4_2 = L3_2
        L3_2 = L3_2.LockAllEquipments
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.GameCore
        L5_2 = L5_2.ItemRarity
        L5_2 = L5_2.VeryRare
        L3_2(L4_2, L5_2)
      else
        L3_2 = L2_1.LockAllSuperRare
        if L2_2 == L3_2 then
          L3_2 = L1_1
          L4_2 = L3_2
          L3_2 = L3_2.LockAllEquipments
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.GameCore
          L5_2 = L5_2.ItemRarity
          L5_2 = L5_2.SuperRare
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
  L3_2 = L2_1.UnlockAllRare
  if L2_2 ~= L3_2 then
    L3_2 = L2_1.UnlockRankMaxRare
    if L2_2 ~= L3_2 then
      goto lbl_71
    end
  end
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessageTextID
  L5_2 = "UIText_Equipment_RankUp_AlreadyUnlock_Tips"
  L3_2(L4_2, L5_2)
  goto lbl_80
  ::lbl_71::
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIPileToastMessageTextID
  L5_2 = "UIText_Equipment_RankUp_AlreadyLocked_Tips"
  L3_2(L4_2, L5_2)
  ::lbl_80::
end
L0_1.lock_setting_execute = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = A0_2._data
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.sort_list
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2.UserObjectData
    L8_2 = L6_2
    L7_2 = L6_2.unselect_all
    L7_2(L8_2)
  end
end
L0_1._on_btn_clear = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sort_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.LightConeSettingListPanel
    L8_2 = G
    L8_2 = L8_2.LightConeSettingListPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L9_2 = A0_2._on_refresh
  L10_2 = A0_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L4_2
  L6_2 = L4_2.get_static_list
  L6_2 = L6_2(L7_2)
  L7_2 = A1_2.ScrollRect
  L6_2.mScrollRect = L7_2
  L6_2 = A0_2._last_item_panel
  if L6_2 ~= nil then
    L6_2 = A0_2._last_item_index
    L7_2 = A2_2 - 1
    if L6_2 == L7_2 then
      L7_2 = L4_2
      L6_2 = L4_2.get_static_list
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2
      L6_2 = L6_2.SetDirectionRefListview
      L8_2 = A0_2._last_item_panel
      L9_2 = L8_2
      L8_2 = L8_2.get_static_list
      L8_2 = L8_2(L9_2)
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.EventSystems
      L9_2 = L9_2.MoveDirection
      L9_2 = L9_2.Up
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  A0_2._last_item_panel = L4_2
  A0_2._last_item_index = A2_2
  return L3_2
end
L0_1._on_order_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.sort_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._on_refresh = L3_1
return L0_1
