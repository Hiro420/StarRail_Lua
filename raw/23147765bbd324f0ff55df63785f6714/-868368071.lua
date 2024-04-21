local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Phone.AppIconItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.AppIconItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.SystemOpenModule
L1_1 = 4
L2_1 = 2
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "PhoneDesktopPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._desktop_apps = L1_2
  L1_2 = {}
  A0_2._custom_app_clicks = L1_2
  L1_2 = {}
  A0_2._panels_app = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._desktop_apps = L1_2
  L1_2 = {}
  A0_2._custom_app_clicks = L1_2
  L1_2 = {}
  A0_2._panels_app = L1_2
end
L3_1._on_dispose = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = {}
  end
  A0_2._custom_app_clicks = L2_2
end
L3_1.setup_custom_app_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_app_view
  L1_2(L2_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1.refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = {}
  A0_2._desktop_apps = L1_2
  A0_2._last_big_index = 0
  A0_2._top_right_index = 0
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetDesktopAppList
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = {}
  L4_2 = 0
  L5_2 = L1_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L9_2 = L8_2.Row
    L9_2 = L9_2.IsLargeBtn
    if L9_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L3_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    else
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L4_2 = 1
  L5_2 = 0
  L6_2 = ipairs
  L7_2 = L3_2
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  for L9_2, L10_2 in L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = A0_2._desktop_apps
    L13_2 = L10_2
    L11_2(L12_2, L13_2)
    L11_2 = A0_2._desktop_apps
    L11_2 = #L11_2
    A0_2._last_big_index = L11_2
    L11_2 = L2_1
    L5_2 = L5_2 + L11_2
    L11_2 = L1_1
    if L5_2 == L11_2 then
      L11_2 = A0_2._desktop_apps
      L11_2 = #L11_2
      A0_2._top_right_index = L11_2
    end
    L11_2 = L1_1
    L12_2 = L2_1
    L11_2 = L11_2 - L12_2
    L12_2 = L4_2
    L13_2 = L4_2 + L11_2
    L13_2 = L13_2 - 1
    L14_2 = 1
    for L15_2 = L12_2, L13_2, L14_2 do
      L16_2 = L2_2[L15_2]
      if L16_2 ~= nil then
        L16_2 = table
        L16_2 = L16_2.insert
        L17_2 = A0_2._desktop_apps
        L18_2 = L2_2[L15_2]
        L16_2(L17_2, L18_2)
        L5_2 = L5_2 + 1
        L16_2 = L1_1
        if L5_2 == L16_2 then
          L16_2 = A0_2._desktop_apps
          L16_2 = #L16_2
          A0_2._top_right_index = L16_2
        end
      end
    end
    L4_2 = L4_2 + L11_2
  end
  L6_2 = L4_2
  L7_2 = #L2_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L2_2[L9_2]
    if L10_2 ~= nil then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = A0_2._desktop_apps
      L12_2 = L2_2[L9_2]
      L10_2(L11_2, L12_2)
      L5_2 = L5_2 + 1
      L10_2 = L1_1
      if L5_2 == L10_2 then
        L10_2 = A0_2._desktop_apps
        L10_2 = #L10_2
        A0_2._top_right_index = L10_2
      end
    end
  end
end
L3_1._refresh_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_scroll_reddot
  L2_2 = L1_2
  L1_2 = L1_2.ClearRedDotRoots
  L1_2(L2_2)
  L1_2 = {}
  A0_2._panels_app = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._desktop_apps
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._create_app_object
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.AppIconItemPanel
    L10_2 = G
    L10_2 = L10_2.AppIconItemPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.setup_view
    L10_2 = L5_2
    L11_2 = A0_2._custom_app_clicks
    L12_2 = L5_2.GotoID
    L11_2 = L11_2[L12_2]
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = L7_2
    L8_2 = L7_2.register_select_callback
    L10_2 = A0_2._on_app_selected
    L11_2 = A0_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._panels_app
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.mono_scroll_reddot
    L9_2 = L8_2
    L8_2 = L8_2.AddRedDotRoot
    L11_2 = L7_2
    L10_2 = L7_2.get_reddot_transform
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    L8_2(L9_2, L10_2, L11_2, L12_2)
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.layout
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_scroll_reddot
  L2_2 = L1_2
  L1_2 = L1_2.SetupScrollRedDot
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_top_reddot
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_bottom_reddot
  L5_2 = 10.0
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._adjust_navigation
  L1_2(L2_2)
end
L3_1._setup_app_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._panels_app
  L2_2 = A0_2._last_big_index
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = A0_2._last_big_index
    L3_2 = L1_1
    L2_2 = L2_2 + L3_2
    L3_2 = L2_1
    L2_2 = L2_2 - L3_2
    L2_2 = L2_2 + 1
    L3_2 = A0_2._panels_app
    L3_2 = L3_2[L2_2]
    if L3_2 ~= nil then
      L5_2 = L1_2
      L4_2 = L1_2.setup_navigation
      L6_2 = NavigationDirection
      L6_2 = L6_2.Down
      L8_2 = L3_2
      L7_2 = L3_2.get_first_selected_btn
      L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  end
  L2_2 = A0_2._panels_app
  L3_2 = A0_2._panels_app
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.setup_navigation
    L5_2 = NavigationDirection
    L5_2 = L5_2.Down
    L6_2 = nil
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2._get_border_indexs
    L3_2 = L3_2(L4_2)
    L4_2 = #L3_2
    L4_2 = L4_2 - 1
    L4_2 = L3_2[L4_2]
    if L4_2 ~= nil then
      L5_2 = A0_2._panels_app
      L5_2 = L5_2[L4_2]
      if L5_2 ~= nil then
        L7_2 = L5_2
        L6_2 = L5_2.setup_navigation
        L8_2 = NavigationDirection
        L8_2 = L8_2.Down
        L10_2 = L2_2
        L9_2 = L2_2.get_first_selected_btn
        L9_2, L10_2, L11_2 = L9_2(L10_2)
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      end
    end
  end
  L3_2 = 1
  L4_2 = A0_2._top_right_index
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._panels_app
    L7_2 = L7_2[L6_2]
    L9_2 = L7_2
    L8_2 = L7_2.setup_navigation
    L10_2 = NavigationDirection
    L10_2 = L10_2.Up
    L11_2 = nil
    L8_2(L9_2, L10_2, L11_2)
  end
end
L3_1._adjust_navigation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.Row
  L2_2 = L2_2.IsLargeBtn
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._binder
    L4_2 = L4_2.prefab_loader
    L4_2 = L4_2.MultiPrefabList
    L4_2 = L4_2[1]
    L5_2 = A0_2._binder
    L5_2 = L5_2.prefab_loader
    L5_2 = L5_2.transform
    return L2_2(L3_2, L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._binder
    L4_2 = L4_2.prefab_loader
    L4_2 = L4_2.MultiPrefabList
    L4_2 = L4_2[0]
    L5_2 = A0_2._binder
    L5_2 = L5_2.prefab_loader
    L5_2 = L5_2.transform
    return L2_2(L3_2, L4_2, L5_2)
  end
end
L3_1._create_app_object = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_rect
    L3_2 = L2_2
    L2_2 = L2_2.ScrollToTransform
    L4_2 = A1_2.transform
    L2_2(L3_2, L4_2)
  end
end
L3_1._on_app_selected = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A1_2 == nil then
    return
  end
  L3_2 = A1_2
  L2_2 = A1_2.GetComponent
  L4_2 = typeof
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Button
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_border_indexs
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._panels_app
    L9_2 = L3_2[L7_2]
    L8_2 = L8_2[L9_2]
    if L8_2 ~= nil then
      L10_2 = L8_2
      L9_2 = L8_2.setup_navigation
      L11_2 = NavigationDirection
      L11_2 = L11_2.Right
      L12_2 = L2_2
      L9_2(L10_2, L11_2, L12_2)
    end
  end
end
L3_1.set_border_navigation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = ipairs
  L4_2 = A0_2._desktop_apps
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Row
    L8_2 = L8_2.IsLargeBtn
    if L8_2 then
      L8_2 = L2_1
      L2_2 = L2_2 + L8_2
    else
      L2_2 = L2_2 + 1
    end
    L8_2 = L1_1
    if L2_2 == L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      L2_2 = 0
    end
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = A0_2._desktop_apps
  L5_2 = #L5_2
  L3_2(L4_2, L5_2)
  return L1_2
end
L3_1._get_border_indexs = L4_1
function L4_1(A0_2, A1_2)
end
L3_1.move_to_page_by_child_name = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._panels_app
  L1_2 = L1_2[1]
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.get_first_selected_object
  return L2_2(L3_2)
end
L3_1.get_first_selected_object = L4_1
return L3_1
