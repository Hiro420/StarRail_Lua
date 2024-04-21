local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.TopHoldDownPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TopHoldDownPanel"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TopHoldDownPanelBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._SliderIsShow = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GameCoreConfigManager
  L1_2 = L1_2.GameCoreUIConfig
  L1_2 = L1_2.ButtonHoldTime
  A0_2._TICK_LEN = L1_2
  A0_2._BeginTickStamp = 0
  A0_2._TickValue = 0
  A0_2._close_when_phase_changed = false
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIOpenTopHoldDownPanelSlider
  L4_2 = L0_1._OnUIOpenTopHoldDownPanelSlider
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UICloseTopHoldDownPanelSlider
  L4_2 = L0_1._OnUICloseTopHoldDownPanelSlider
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._ShowSlider
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._BeginTickStamp
  if L2_2 == 0 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Time
  L2_2 = L2_2.time
  L3_2 = A0_2._BeginTickStamp
  if L2_2 < L3_2 then
    return
  end
  L3_2 = A0_2._TickValue
  if not (1 <= L3_2) then
    L3_2 = A0_2._BeginTickStamp
    L4_2 = A0_2._TICK_LEN
    L3_2 = L3_2 + L4_2
    if not (L2_2 >= L3_2) then
      goto lbl_32
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.Slider
  L3_2.value = 1
  A0_2._BeginTickStamp = 0
  goto lbl_47
  ::lbl_32::
  L3_2 = A0_2._BeginTickStamp
  L3_2 = L2_2 - L3_2
  L4_2 = A0_2._TICK_LEN
  L3_2 = L3_2 / L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.Slider
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Mathf
  L5_2 = L5_2.SmoothStep
  L6_2 = 0
  L7_2 = 1
  L8_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2.value = L5_2
  ::lbl_47::
end
L0_1._on_tick = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._SliderIsShow = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  if L2_2 == nil then
    return
  end
  L2_2 = L1_1.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.Slider
  L4_2 = A0_2._SliderIsShow
  L2_2(L3_2, L4_2)
end
L0_1._ShowSlider = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.Time
  L1_2 = L1_2.time
  A0_2._BeginTickStamp = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._ShowSlider
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._OnUIOpenTopHoldDownPanelSlider = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._BeginTickStamp = 0
  L2_2 = A0_2
  L1_2 = A0_2._ShowSlider
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._OnUICloseTopHoldDownPanelSlider = L2_1
return L0_1
