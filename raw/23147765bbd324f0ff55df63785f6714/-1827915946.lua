local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Phone.PhoneDockPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.PlayerUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PlayerModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SystemOpenModule
L2_1 = 1000
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "PhoneDockPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  L1_2 = PhoneMode
  L1_2 = L1_2.DESKTOP
  A0_2._mode = L1_2
  L1_2 = {}
  A0_2._dock_apps = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._dock_apps = nil
  A0_2._custom_app_clicks = nil
end
L3_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._mode = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._mode
  L5_2 = PhoneMode
  L5_2 = L5_2.DESKTOP
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_back
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._mode
  L5_2 = PhoneMode
  L5_2 = L5_2.DESKTOP
  L4_2 = L4_2 ~= L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_btn_exit
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = PhoneMode
  L4_2 = L4_2.DESKTOP
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_dock_bar
  L2_2(L3_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  A0_2._custom_app_clicks = A1_2
end
L3_1.setup_custom_app_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_dock_bar
  L1_2(L2_2)
end
L3_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._dock_apps = L1_2
  L1_2 = A0_2._mode
  L2_2 = PhoneMode
  L2_2 = L2_2.DESKTOP
  if L1_2 == L2_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetDockAppList
    L1_2 = L1_2(L2_2)
    L2_2 = 0
    L3_2 = L1_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._dock_apps
      L7_2 = L5_2 + 1
      L8_2 = L1_2[L5_2]
      L6_2[L7_2] = L8_2
    end
  end
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = L2_1
    if A0_3 == L1_3 then
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.SDKLuaReportAdapter
      L1_3 = L1_3.ReportUIButtonClick
      L2_3 = A0_2._owner
      L2_3 = L2_3.__name
      L3_3 = "phone_panel"
      L4_3 = "BulletinBtn"
      L5_3 = A0_2._owner
      L5_3 = L5_3.guid
      L1_3(L2_3, L3_3, L4_3, L5_3)
    end
    L1_3 = A0_2._custom_app_clicks
    if L1_3 then
      L1_3 = A0_2._custom_app_clicks
      L1_3 = L1_3[A0_3]
      if L1_3 then
        L1_3 = A0_2._custom_app_clicks
        L1_3 = L1_3[A0_3]
        L2_3 = A0_3
        L1_3(L2_3)
    end
    else
      L1_3 = G
      L1_3 = L1_3.GotoManager
      L1_3 = L1_3.Goto
      L2_3 = A0_3
      L1_3(L2_3)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_app
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._dock_apps
  L5_2 = L1_2
  L6_2 = nil
  L7_2 = NavigationType
  L7_2 = L7_2.Vertical
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L3_1._setup_dock_bar = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_handler = A2_2
end
L3_1.set_close_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._back_callback = A1_2
  A0_2._back_handler = A2_2
end
L3_1.set_back_callback = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._close_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._close_handler
    if L1_2 ~= nil then
      L1_2 = A0_2._close_callback
      L2_2 = A0_2._close_handler
      L1_2(L2_2)
    else
      L1_2 = A0_2._close_callback
      L1_2()
    end
  end
end
L3_1._on_btn_close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._back_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._back_handler
    if L1_2 ~= nil then
      L1_2 = A0_2._back_callback
      L2_2 = A0_2._back_handler
      L3_2 = PhoneMode
      L3_2 = L3_2.DESKTOP
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._back_callback
      L2_2 = PhoneMode
      L2_2 = L2_2.DESKTOP
      L1_2(L2_2)
    end
  end
end
L3_1._on_btn_back = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_app
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 ~= nil then
    L3_2 = A1_2
    L2_2 = A1_2.GetComponent
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.UnityEngine
    L5_2 = L5_2.UI
    L5_2 = L5_2.Button
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2 = 1
    L4_2 = A0_2._dock_apps
    L4_2 = #L4_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._binder
      L7_2 = L7_2.panel_app
      L8_2 = L7_2
      L7_2 = L7_2.get_panel_by_index
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L9_2 = L7_2
      L8_2 = L7_2.setup_navigation
      L10_2 = NavigationDirection
      L10_2 = L10_2.Left
      L11_2 = L2_2
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L3_1.set_outward_navigation = L4_1
return L3_1
