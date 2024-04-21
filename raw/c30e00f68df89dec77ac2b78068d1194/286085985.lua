local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Qte.QteSingleClickPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Qte.QteSingleClickPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Qte.QteSwipePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Qte.QteSwipePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Qte.QteComboClickPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Qte.QteComboClickPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Qte.QteDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QteDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "MiniGameQTEActionPanel_Success"
L2_1 = "MiniGameQTEActionPanel_Fail"
L3_1 = {}
L3_1.play = 1
L3_1.success = 2
L3_1.fail = 3
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.QteDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._qte_name = A1_2
  A0_2._cfg = A2_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_ticker
  L2_2 = L1_2
  L1_2 = L1_2.ClearTickCallback
  L1_2(L2_2)
  L1_2 = L0_1.super
  L1_2 = L1_2.exit
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1.exit = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cfg
  L1_2 = L1_2.UITriggerType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.QTEUIData
  L2_2 = L2_2.TriggerType
  L2_2 = L2_2.SingleClick
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.QteSingleClickPanel
    L4_2 = G
    L4_2 = L4_2.QteSingleClickPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._panel_single_click = L1_2
    L1_2 = A0_2._panel_single_click
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_root
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._panel_single_click
    L2_2 = L1_2
    L1_2 = L1_2.set_config
    L3_2 = A0_2._cfg
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._panel_single_click
    L2_2 = L1_2
    L1_2 = L1_2.register_end_callback
    L3_2 = A0_2._do_end
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._panel_single_click
    L2_2 = L1_2
    L1_2 = L1_2.set_position
    L4_2 = A0_2
    L3_2 = A0_2._cal_position
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._panel_single_click
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  else
    L1_2 = A0_2._cfg
    L1_2 = L1_2.UITriggerType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.QTEUIData
    L2_2 = L2_2.TriggerType
    L2_2 = L2_2.Swipe
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2.create_panel
      L3_2 = G
      L3_2 = L3_2.QteSwipePanel
      L4_2 = G
      L4_2 = L4_2.QteSwipePanelBinder
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      A0_2._panel_swipe = L1_2
      L1_2 = A0_2._panel_swipe
      L2_2 = L1_2
      L1_2 = L1_2.bind
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_root
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._panel_swipe
      L2_2 = L1_2
      L1_2 = L1_2.set_config
      L3_2 = A0_2._cfg
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._panel_swipe
      L2_2 = L1_2
      L1_2 = L1_2.register_end_callback
      L3_2 = A0_2._do_end
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = A0_2._panel_swipe
      L2_2 = L1_2
      L1_2 = L1_2.set_position
      L4_2 = A0_2
      L3_2 = A0_2._cal_position
      L3_2, L4_2 = L3_2(L4_2)
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = A0_2._panel_swipe
      L2_2 = L1_2
      L1_2 = L1_2.start
      L1_2(L2_2)
    else
      L1_2 = A0_2._cfg
      L1_2 = L1_2.UITriggerType
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.QTEUIData
      L2_2 = L2_2.TriggerType
      L2_2 = L2_2.ComboClick
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2.create_panel
        L3_2 = G
        L3_2 = L3_2.QteComboClickPanel
        L4_2 = G
        L4_2 = L4_2.QteComboClickPanelBinder
        L1_2 = L1_2(L2_2, L3_2, L4_2)
        A0_2._panel_combo_click = L1_2
        L1_2 = A0_2._panel_combo_click
        L2_2 = L1_2
        L1_2 = L1_2.bind
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_root
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._panel_combo_click
        L2_2 = L1_2
        L1_2 = L1_2.set_config
        L3_2 = A0_2._cfg
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._panel_combo_click
        L2_2 = L1_2
        L1_2 = L1_2.register_end_callback
        L3_2 = A0_2._do_end
        L4_2 = A0_2
        L1_2(L2_2, L3_2, L4_2)
        L1_2 = A0_2._panel_combo_click
        L2_2 = L1_2
        L1_2 = L1_2.start
        L1_2(L2_2)
      end
    end
  end
  L1_2 = L3_1.play
  A0_2._state = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_ticker
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = A0_2._mono_tick
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cfg
  L2_2 = L2_2.UITriggerType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.QTEUIData
  L3_2 = L3_2.TriggerType
  L3_2 = L3_2.SingleClick
  if L2_2 == L3_2 then
    L2_2 = A0_2._panel_single_click
    L3_2 = L2_2
    L2_2 = L2_2.mono_tick
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._cfg
    L2_2 = L2_2.UITriggerType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.QTEUIData
    L3_2 = L3_2.TriggerType
    L3_2 = L3_2.Swipe
    if L2_2 == L3_2 then
      L2_2 = A0_2._panel_swipe
      L3_2 = L2_2
      L2_2 = L2_2.mono_tick
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._cfg
      L2_2 = L2_2.UITriggerType
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.QTEUIData
      L3_2 = L3_2.TriggerType
      L3_2 = L3_2.ComboClick
      if L2_2 == L3_2 then
        L2_2 = A0_2._panel_combo_click
        L3_2 = L2_2
        L2_2 = L2_2.mono_tick
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._mono_tick = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = tonumber
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "%.2f"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIUtils
  L4_2 = L4_2.UIScaleFactor
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._cfg
  L2_2 = L2_2.Position
  L2_2 = L2_2.x
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.Screen
  L3_2 = L3_2.width
  L2_2 = L2_2 * L3_2
  L2_2 = L2_2 * 0.5
  L2_2 = L2_2 / L1_2
  L3_2 = A0_2._cfg
  L3_2 = L3_2.Position
  L3_2 = L3_2.y
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Screen
  L4_2 = L4_2.height
  L3_2 = L3_2 * L4_2
  L3_2 = L3_2 * 0.5
  L3_2 = L3_2 / L1_2
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector3
  L5_2 = L2_2
  L6_2 = L3_2
  L7_2 = 0
  return L4_2(L5_2, L6_2, L7_2)
end
L0_1._cal_position = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._do_success
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._do_fail
    L2_2(L3_2)
  end
end
L0_1._do_end = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._state
  L2_2 = L3_1.play
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = L3_1.success
  A0_2._state = L1_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.QTESucc
  L3_2 = A0_2._qte_name
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_action_panel_result
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._do_success = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._state
  L2_2 = L3_1.play
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = L3_1.fail
  A0_2._state = L1_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.QTEFail
  L3_2 = A0_2._qte_name
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_action_panel_result
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._do_fail = L4_1
return L0_1
