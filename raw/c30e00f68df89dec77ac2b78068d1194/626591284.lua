local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportWayFinishToastBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportWayFinishToast"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyTransportWayFinishToastBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._show_layer = A1_2
  A0_2._shop_id = A2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetEnergyCount
  L4_2 = L1_2
  L5_2 = A0_2._shop_id
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_energy
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AudioManager
  L4_2 = L3_2
  L3_2 = L3_2.PostEvent
  L5_2 = "Ev_sfx_ui_feedback_activity_alley_road_finish"
  L3_2(L4_2, L5_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._show_layer = A1_2
  A0_2._shop_id = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.canvas_group
  L3_2 = L3_2.alpha
  if L3_2 == 0 then
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.GetAlleyMapIDByLayer
    L5_2 = A0_2._show_layer
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L1_1
    L5_2 = L4_2
    L4_2 = L4_2.GetEnergyCount
    L6_2 = L3_2
    L7_2 = A0_2._shop_id
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_energy
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.animation
    L6_2 = L5_2
    L5_2 = L5_2.Play
    L7_2 = "AlleyOrderFinishToast"
    L5_2(L6_2, L7_2)
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.GlobalVars
    L5_2 = L5_2.s_AudioManager
    L6_2 = L5_2
    L5_2 = L5_2.PostEvent
    L7_2 = "Ev_sfx_ui_feedback_activity_alley_road_finish"
    L5_2(L6_2, L7_2)
  end
end
L0_1.try_show = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
return L0_1
