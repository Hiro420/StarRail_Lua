local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ScreenTransfer.ScreenTransferBelowPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ScreenTransferBelowPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.None = 0
L1_1.SwitchOut = 1
L1_1.Stay = 2
L1_1.SwitchIn = 3
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_BelowPage
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ScreenTransferBelowPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._set_transfer_status
  L3_2 = L1_1.None
  L1_2(L2_2, L3_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A1_2 or nil
  if not A1_2 then
    L4_2 = 0
  end
  A0_2._switch_out_time = L4_2
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = 0
  end
  A0_2._stay_time = L4_2
  L4_2 = A3_2 or L4_2
  if not A3_2 then
    L4_2 = 0
  end
  A0_2._switch_in_time = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._set_transfer_status
  L6_2 = L1_1.SwitchOut
  L4_2(L5_2, L6_2)
end
L0_1.start_screen_transfer = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_mask_alpha
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tick
  L2_2 = L1_2
  L1_2 = L1_2.SetTickCallback
  L3_2 = A0_2._mono_tick
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._transfer_status
  L3_2 = L1_1.None
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_view_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._transfer_status
  L3_2 = L1_1.SwitchOut
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._tick_switch_out
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._transfer_status
    L3_2 = L1_1.Stay
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._tick_stay
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._transfer_status
      L3_2 = L1_1.SwitchIn
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2._tick_switch_in
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._mono_tick = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._tick_timer
  L2_2 = L2_2 + A1_2
  A0_2._tick_timer = L2_2
  L2_2 = A0_2._tick_timer
  L3_2 = A0_2._switch_out_time
  if L2_2 < L3_2 then
    L2_2 = A0_2._tick_timer
    L3_2 = A0_2._switch_out_time
    L2_2 = L2_2 / L3_2
    L4_2 = A0_2
    L3_2 = A0_2._set_mask_alpha
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_mask_alpha
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._set_transfer_status
    L4_2 = L1_1.Stay
    L2_2(L3_2, L4_2)
  end
end
L0_1._tick_switch_out = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._tick_timer
  L2_2 = L2_2 + A1_2
  A0_2._tick_timer = L2_2
  L2_2 = A0_2._tick_timer
  L3_2 = A0_2._stay_time
  if L2_2 > L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_transfer_status
    L4_2 = L1_1.SwitchIn
    L2_2(L3_2, L4_2)
  end
end
L0_1._tick_stay = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._tick_timer
  L2_2 = L2_2 + A1_2
  A0_2._tick_timer = L2_2
  L2_2 = A0_2._tick_timer
  L3_2 = A0_2._switch_in_time
  if L2_2 < L3_2 then
    L2_2 = A0_2._tick_timer
    L3_2 = A0_2._switch_in_time
    L2_2 = L2_2 / L3_2
    L2_2 = 1 - L2_2
    L4_2 = A0_2
    L3_2 = A0_2._set_mask_alpha
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_mask_alpha
    L4_2 = 0
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._set_transfer_status
    L4_2 = L1_1.None
    L2_2(L3_2, L4_2)
  end
end
L0_1._tick_switch_in = L2_1
function L2_1(A0_2, A1_2)
  A0_2._transfer_status = A1_2
  A0_2._tick_timer = 0
end
L0_1._set_transfer_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.MMathf
  L2_2 = L2_2.Clamp01
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_mask
  L3_2 = L3_2.color
  L3_2.a = L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_mask
  L4_2.color = L3_2
end
L0_1._set_mask_alpha = L2_1
return L0_1
