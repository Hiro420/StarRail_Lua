local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Talk.RogueAeonOptionPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueAeonOptionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_talk_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._options = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.aeon_talk_options
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L5_2 = A0_2._on_option_choose
  L6_2 = A0_2
  L7_2 = NavigationType
  L7_2 = L7_2.Vertical
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.show_new_options = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._choose_option_cbk = A2_2
  A0_2._choose_option_cbk_owner = A1_2
end
L0_1.register_choose_option_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_talk_options
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_talk_options
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = {}
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1.clear = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._choose_option_cbk
  if L2_2 then
    L2_2 = A0_2._choose_option_cbk_owner
    if L2_2 then
      A0_2._current_option = nil
      A0_2._options = nil
      L2_2 = A0_2._choose_option_cbk
      L3_2 = A0_2._choose_option_cbk_owner
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.clear
      L2_2(L3_2)
    end
  end
end
L0_1._on_option_choose = L1_1
return L0_1
