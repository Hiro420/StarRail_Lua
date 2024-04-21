local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.ActivityMonopolyRollDiceEventPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonopolyRollDiceEventPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyRollDiceEventPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._event_data = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._event_data
  L3_2 = L3_2.Content
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_event
  L4_2 = A0_2._event_data
  L4_2 = L4_2.PicturePath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_roll_dice
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._event_data
  L3_2 = L3_2.ID
  L4_2 = A0_2._event_data
  L4_2 = L4_2.OptionList
  L5_2 = A0_2._event_data
  L5_2 = L5_2.CanSkip
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_roll_dice
  L2_2 = L1_2
  L1_2 = L1_2.check_in_control_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L1_1
return L0_1
