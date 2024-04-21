local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.PopupMenuBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.PopupMenuOption"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.PopupMenuOptionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.PopupMenuOptionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PopupMenu"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 3
function L2_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Vector2
  L1_2 = L1_2.zero
  A0_2._position = L1_2
  L1_2 = {}
  A0_2._options = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._option_panels = L1_2
  L1_2 = {}
  A0_2._panels_by_count = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.PopupMenuOptionPanel
    L8_2 = G
    L8_2 = L8_2.PopupMenuOptionPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.option_roots
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_click_callback
    L8_2 = A0_2._on_option_click
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._option_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._panels_by_count
  L2_2 = {}
  L3_2 = A0_2._option_panels
  L3_2 = L3_2[1]
  L2_2[1] = L3_2
  L1_2[1] = L2_2
  L1_2 = A0_2._panels_by_count
  L2_2 = {}
  L3_2 = A0_2._option_panels
  L3_2 = L3_2[2]
  L4_2 = A0_2._option_panels
  L4_2 = L4_2[3]
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L1_2[2] = L2_2
  L1_2 = A0_2._panels_by_count
  L2_2 = {}
  L3_2 = A0_2._option_panels
  L3_2 = L3_2[1]
  L4_2 = A0_2._option_panels
  L4_2 = L4_2[2]
  L5_2 = A0_2._option_panels
  L5_2 = L5_2[3]
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L1_2[3] = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._options = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_options
  L2_2(L3_2)
end
L0_1.set_options = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._position = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_menu_pos
  L2_2(L3_2)
end
L0_1.set_position = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.show = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.hide = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.PopupMenuProxy
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.InitDelegate
  L4_2 = A0_2.set_position
  L5_2 = A0_2._set_options_proxy
  L6_2 = A0_2.show
  L7_2 = A0_2.hide
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  return L1_2
end
L0_1.get_csharp_proxy = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = G
    L7_2 = L7_2.new
    L8_2 = G
    L8_2 = L8_2.PopupMenuOption
    L7_2 = L7_2(L8_2)
    L8_2 = A1_2[L6_2]
    L8_2 = L8_2.IconPath
    L7_2.icon_path = L8_2
    L8_2 = A1_2[L6_2]
    L8_2 = L8_2.Callback
    L7_2.callback = L8_2
    L8_2 = A1_2[L6_2]
    L8_2 = L8_2.Label
    L7_2.label = L8_2
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_options
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._set_options_proxy = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._options
  if L2_2 ~= nil then
    L2_2 = A0_2._options
    L2_2 = L2_2[A1_2]
    if L2_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2._options
  L2_2 = L2_2[A1_2]
  L3_2 = L2_2.callback
  if L3_2 ~= nil then
    L3_2 = L2_2.callback
    L4_2 = A1_2
    L3_2(L4_2)
  end
end
L0_1._on_option_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.rect_trans
  L1_2 = L1_2.parent
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UICamera
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.RectTransformUtility
  L3_2 = L3_2.ScreenPointToLocalPointInRectangle
  L4_2 = L1_2
  L5_2 = A0_2._position
  L6_2 = L2_2
  L7_2 = nil
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if L3_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.rect_trans
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Vector3
    L7_2 = L4_2.x
    L8_2 = L4_2.y
    L9_2 = 0
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2.localPosition = L6_2
  end
end
L0_1._setup_menu_pos = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_all_options
  L1_2(L2_2)
  L1_2 = A0_2._panels_by_count
  L2_2 = A0_2._options
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  L2_2 = ipairs
  L3_2 = A0_2._options
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L1_2[L5_2]
    L9_2 = L7_2
    L8_2 = L7_2.setup_icon
    L10_2 = L6_2.icon_path
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.setup_label
    L10_2 = L6_2.label
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_index
    L10_2 = L5_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_visible
    L10_2 = true
    L8_2(L9_2, L10_2)
  end
end
L0_1._refresh_options = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = ipairs
  L2_2 = A0_2._option_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_visible
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1._hide_all_options = L2_1
return L0_1
