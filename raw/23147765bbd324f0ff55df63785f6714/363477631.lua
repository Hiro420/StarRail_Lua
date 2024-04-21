local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Challenge.DrinkMakerChallengeResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerChallengeResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DrinkMakerChallengeResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._challenge = A1_2
  A0_2._reward = A2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_step_num_format
  L3_2 = "%02d"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._challenge
  L3_2 = L3_2.Drink
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_gamepad_hint
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._reward
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RewardUtils
    L1_2 = L1_2.show_reward_dialog
    L2_2 = A0_2._reward
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_gamepad_hint
  L2_2(L3_2)
end
L0_1._on_in_control_input_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.CanScroll
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_scroll_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.Utils
  L4_2 = L4_2.is_gamepad_input
  L4_2 = L4_2()
  if L4_2 then
    L4_2 = L1_2
  end
  L2_2(L3_2, L4_2)
end
L0_1._setup_gamepad_hint = L2_1
return L0_1
