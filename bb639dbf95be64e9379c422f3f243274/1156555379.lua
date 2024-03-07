local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.GameStartup.ServerSelectDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.ServerSelectItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.GameStartup.ServerSelectItem"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.AppUtils
L0_1 = L0_1.IsRelease
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ServerSelectDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ServerSelectDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
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
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_server_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_select
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L1_2 = L1_2.FBAFBFIPNPB
  A0_2._selected_server = L1_2
  L1_2 = A0_2._selected_server
  A0_2._cur_selected_server = L1_2
  L1_2 = {}
  A0_2._server_data_list = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L1_2 = L1_2.EIGLECAMADC
  L1_2 = L1_2.ServerList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._server_data_list
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_server_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitGridView
  L4_2 = 0
  L5_2 = A0_2._on_server_change
  L6_2 = nil
  L7_2 = nil
  L8_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_bg
  L5_2 = A0_2._on_btn_close_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_cancel
  L5_2 = A0_2._on_btn_close_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_close
  L5_2 = A0_2._on_btn_close_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_confirm
  L5_2 = A0_2._on_btn_confirm_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_scrollview
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2._recent_server_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2._server_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.Name
    if L7_2 == A1_2 then
      A0_2._cur_selected_server = L6_2
      L8_2 = A0_2
      L7_2 = A0_2._refresh_scrollview
      L7_2(L8_2)
      return
    end
  end
end
L1_1._try_click_server = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scrollview
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 == nil then
    return
  end
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ServerSelectItem
    L8_2 = G
    L8_2 = L8_2.ServerSelectItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  function L5_2(A0_3)
    local L1_3, L2_3
    A0_2._cur_selected_server = A0_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._refresh_scrollview
    L1_3(L2_3)
  end
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._server_data_list
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L6_2
  L11_2 = A0_2
  L10_2 = A0_2._is_selected
  L12_2 = L6_2
  L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  return L3_2
end
L1_1._on_server_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._cur_selected_server
  L2_2 = A1_2 == L2_2
  return L2_2
end
L1_1._is_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_server_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._server_data_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_server_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L1_1._refresh_scrollview = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = OVERSEA_BUILD
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_ps_platform
    L1_2 = L1_2()
    if not L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_VersionData
      L1_2 = L1_2.PakType
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.E_PakType
      L2_2 = L2_2.BETA
      if L1_2 ~= L2_2 then
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.Prefs
        L1_2 = L1_2.App
        L1_2 = L1_2.LastServerName
        if L1_2 == "" then
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.GlobalVars
          L1_2 = L1_2.s_NetworkManager
          L1_2 = L1_2.FBAFBFIPNPB
          L2_2 = A0_2._cur_selected_server
          if L1_2 ~= L2_2 then
            L1_2 = G
            L1_2 = L1_2.UIManager
            L1_2 = L1_2.load_and_show
            L2_2 = "Ui.Common.GeneralScrollDialog"
            L1_2 = L1_2(L2_2)
            L3_2 = L1_2
            L2_2 = L1_2.setup_content_only
            L4_2 = "UIText_ServerSelectPage_RecommandServerHint"
            L5_2 = A0_2._cur_selected_server
            L5_2 = L5_2.DisplayName
            L2_2(L3_2, L4_2, L5_2)
            L3_2 = L1_2
            L2_2 = L1_2.register_confirm_cbk
            L4_2 = A0_2
            L5_2 = A0_2._on_second_confirm
            L2_2(L3_2, L4_2, L5_2)
          else
            L2_2 = A0_2
            L1_2 = A0_2.exit
            L1_2(L2_2)
          end
      end
    end
  end
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_NetworkManager
    L2_2 = A0_2._cur_selected_server
    L1_2.FBAFBFIPNPB = L2_2
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L1_1._on_btn_confirm_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = A0_2._cur_selected_server
  L1_2.FBAFBFIPNPB = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_second_confirm = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_close_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_server_list
  L1_2(L2_2)
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = string
  L3_2 = L3_2.sub
  L4_2 = A1_2
  L5_2 = 1
  L6_2 = string
  L6_2 = L6_2.len
  L7_2 = A2_2
  L6_2, L7_2 = L6_2(L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L3_2 == A2_2
  return L3_2
end
L1_1.str_starts = L2_1
return L1_1
