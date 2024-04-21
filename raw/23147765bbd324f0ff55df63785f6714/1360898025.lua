local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportCommonTipDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportCommonTipDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyTransportCommonTipDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._is_buff_tip = A2_2
  A0_2._trans = A3_2
  A0_2._screen_point = A4_2
  A0_2._grid_info_list = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = CS
  L3_2 = L3_2.InControl
  L3_2 = L3_2.InputControlType
  L3_2 = L3_2.LeftStickUp
  L3_2 = #L3_2
  if A1_2 ~= L3_2 then
    L3_2 = CS
    L3_2 = L3_2.InControl
    L3_2 = L3_2.InputControlType
    L3_2 = L3_2.LeftStickDown
    L3_2 = #L3_2
    if A1_2 ~= L3_2 then
      L3_2 = CS
      L3_2 = L3_2.InControl
      L3_2 = L3_2.InputControlType
      L3_2 = L3_2.LeftStickLeft
      L3_2 = #L3_2
      if A1_2 ~= L3_2 then
        L3_2 = CS
        L3_2 = L3_2.InControl
        L3_2 = L3_2.InputControlType
        L3_2 = L3_2.LeftStickRight
        L3_2 = #L3_2
        if A1_2 ~= L3_2 then
          goto lbl_31
        end
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.exit
  L3_2(L4_2)
  ::lbl_31::
end
L0_1._on_in_control_press = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._trans
  if L1_2 then
    L1_2 = A0_2._trans
    L1_2 = L1_2.position
    L2_2 = nil
    L3_2 = L1_2.x
    if L3_2 < 0 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_buff_pointer_right
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_buff_pointer_left
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L2_2 = L3_2.node_buff_pointer_left
      L3_2 = A0_2._tip_item_panel
      L4_2 = L3_2
      L3_2 = L3_2.bind
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_popup_tip_left
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.create_short_cut_hint_panel
      L5_2 = 1
      L6_2 = nil
      L7_2 = "BuffPointerLeft/PopUpTip/KeyMapHintRoot"
      L3_2(L4_2, L5_2, L6_2, L7_2)
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_buff_pointer_right
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_buff_pointer_left
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L2_2 = L3_2.node_buff_pointer_right
      L3_2 = A0_2._tip_item_panel
      L4_2 = L3_2
      L3_2 = L3_2.bind
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_popup_tip_right
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.create_short_cut_hint_panel
      L5_2 = 1
      L6_2 = nil
      L7_2 = "BuffPointerRight/PopUpTip/KeyMapHintRoot"
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    L3_2 = L1_2.y
    L3_2 = L3_2 - 0.01
    L1_2.y = L3_2
    L2_2.position = L1_2
  else
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Vector2
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Input
    L2_2 = L2_2.mousePosition
    L2_2 = L2_2.x
    L3_2 = CS
    L3_2 = L3_2.UnityEngine
    L3_2 = L3_2.Input
    L3_2 = L3_2.mousePosition
    L3_2 = L3_2.y
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = A0_2._screen_point
    if L2_2 then
      L1_2 = A0_2._screen_point
    end
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.RectTransformUtility
    L2_2 = L2_2.ScreenPointToLocalPointInRectangle
    L3_2 = A0_2._binder
    L3_2 = L3_2.root
    L3_2 = L3_2.transform
    L4_2 = L1_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_UICamera
    L6_2 = nil
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L4_2 = nil
    L5_2 = L3_2.x
    if L5_2 < 0 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_buff_pointer_right
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_buff_pointer_left
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L4_2 = L5_2.node_buff_pointer_left
      L5_2 = A0_2._tip_item_panel
      L6_2 = L5_2
      L5_2 = L5_2.bind
      L7_2 = A0_2._binder
      L7_2 = L7_2.node_popup_tip_left
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2.create_short_cut_hint_panel
      L7_2 = 1
      L8_2 = nil
      L9_2 = "BuffPointerLeft/PopUpTip/KeyMapHintRoot"
      L5_2(L6_2, L7_2, L8_2, L9_2)
    else
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_buff_pointer_right
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_buff_pointer_left
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L4_2 = L5_2.node_buff_pointer_right
      L5_2 = A0_2._tip_item_panel
      L6_2 = L5_2
      L5_2 = L5_2.bind
      L7_2 = A0_2._binder
      L7_2 = L7_2.node_popup_tip_right
      L5_2(L6_2, L7_2)
      L6_2 = A0_2
      L5_2 = A0_2.create_short_cut_hint_panel
      L7_2 = 1
      L8_2 = nil
      L9_2 = "BuffPointerRight/PopUpTip/KeyMapHintRoot"
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
    L5_2 = L4_2.transform
    L6_2 = CS
    L6_2 = L6_2.UnityEngine
    L6_2 = L6_2.Vector3
    L7_2 = L3_2.x
    L8_2 = L3_2.y
    L9_2 = 0
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2.localPosition = L6_2
  end
  L1_2 = A0_2._tip_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._grid_info_list
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._on_btn_empty_close_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._is_buff_tip
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.NodeListView
    L4_2 = G
    L4_2 = L4_2.NodeListViewBinder
    L5_2 = "Ui.Activity.ActivityAlley.Transport.AlleyBuffTipItemPanel"
    L6_2 = "Ui.Activity.ActivityAlley.Transport.AlleyBuffTipItemPanelBinder"
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    A0_2._tip_item_panel = L1_2
  else
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.NodeListView
    L4_2 = G
    L4_2 = L4_2.NodeListViewBinder
    L5_2 = "Ui.Activity.ActivityAlley.Transport.AlleyCommonTipItemPanel"
    L6_2 = "Ui.Activity.ActivityAlley.Transport.AlleyBuffTipItemPanelBinder"
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    A0_2._tip_item_panel = L1_2
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_empty_close_click = L1_1
return L0_1
