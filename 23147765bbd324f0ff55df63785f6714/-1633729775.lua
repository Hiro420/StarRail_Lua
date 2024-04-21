local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.OptionListDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.SingleOptionPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.SingleOptionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OptionListDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 9
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.OptionListDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._data = A1_2
  A0_2._trans = A2_2
  A0_2._select_callback = A3_2
  A0_2._select_callback_self = A4_2
end
L0_1.init = L2_1
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list
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
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_get_option_item
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L1_2 = L1_2.pivot
  A0_2._origin_pivot = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L2_2 = A0_2._origin_pivot
  L1_2.pivot = L2_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._data
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2, L4_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_position
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._adjust_pivot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._trans
  L1_2 = L1_2.position
  L2_2 = L1_2.y
  L2_2 = L2_2 - 0.01
  L1_2.y = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L2_2.position = L1_2
end
L0_1._setup_position = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L1_2 = L1_2.localPosition
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L2_2 = L2_2.pivot
  L3_2 = L1_2.x
  if 0 < L3_2 then
    L3_2 = 1
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = 0
  ::lbl_14::
  L2_2.x = L3_2
  L3_2 = L1_2.y
  if 0 < L3_2 then
    L3_2 = 1
    if L3_2 then
      goto lbl_22
    end
  end
  L3_2 = 0
  ::lbl_22::
  L2_2.y = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_content
  L3_2.pivot = L2_2
  L3_2 = L1_2.y
  if 0 < L3_2 then
    L3_2 = 3
    if L3_2 then
      goto lbl_33
    end
  end
  L3_2 = 1
  ::lbl_33::
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_content
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_content
  L5_2 = L4_2
  L4_2 = L4_2.LuaGetWorldCorners
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L6_2 = L5_2
  L5_2 = L5_2.LuaGetLocalCorners
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L7_2 = L6_2
  L6_2 = L6_2.InverseTransformPoint
  L8_2 = L4_2[L3_2]
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L5_2[L3_2]
  L8_2 = 0
  L9_2 = L1_2.y
  if 0 < L9_2 then
    L9_2 = L6_2.y
    L10_2 = L7_2.y
    if L9_2 < L10_2 then
      L9_2 = L7_2.y
      L10_2 = L6_2.y
      L9_2 = L9_2 - L10_2
      L8_2 = L9_2 + 10
    end
  else
    L9_2 = L6_2.y
    L10_2 = L7_2.y
    if L9_2 > L10_2 then
      L9_2 = L7_2.y
      L10_2 = L6_2.y
      L9_2 = L9_2 - L10_2
      L8_2 = L9_2 - 10
    end
  end
  if L8_2 ~= 0 then
    L9_2 = L1_2.y
    L9_2 = L9_2 + L8_2
    L1_2.y = L9_2
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_content
    L9_2.localPosition = L1_2
  end
end
L0_1._adjust_pivot = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.SingleOptionPanel
    L8_2 = G
    L8_2 = L8_2.SingleOptionPanelBinder
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
  L8_2 = L5_2.Name
  function L9_2()
    local L0_3, L1_3, L2_3
    L0_3 = L5_2.Callback
    if L0_3 ~= nil then
      L0_3 = L5_2.Param
      if L0_3 ~= nil then
        L0_3 = L5_2.Callback
        L1_3 = table
        L1_3 = L1_3.unpack
        L2_3 = L5_2.Param
        L1_3, L2_3 = L1_3(L2_3)
        L0_3(L1_3, L2_3)
      else
        L0_3 = L5_2.Callback
        L0_3()
      end
    end
    L0_3 = A0_2._select_callback
    if L0_3 ~= nil then
      L0_3 = A0_2._select_callback
      L1_3 = A0_2._select_callback_self
      L2_3 = L5_2
      L0_3(L1_3, L2_3)
    end
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.CoroutineUtils
    L0_3 = L0_3.InvokeNextFrame
    function L1_3()
      local L0_4, L1_4
      L0_4 = A0_2
      L1_4 = L0_4
      L0_4 = L0_4.exit
      L0_4(L1_4)
    end
    L0_3(L1_3)
  end
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = L5_2.Key
  if L6_2 ~= nil then
    L7_2 = L4_2
    L6_2 = L4_2.bind_red_dot
    L8_2 = L5_2.Key
    L9_2 = L5_2.SubKey
    L6_2(L7_2, L8_2, L9_2)
  end
  return L3_2
end
L0_1._on_get_option_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_input_switch = L2_1
return L0_1
