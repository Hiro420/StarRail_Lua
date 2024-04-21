local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.ActivityMonopolyUtils"
L0_1(L1_1)
L0_1 = 16
L1_1 = 99
L2_1 = 2
L3_1 = L0_1 - 1
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ActivityMonopolyMiniGameGachaSlotsPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._index_to_display_resource_ids = L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2
end
L4_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = {}
  A0_2._index_to_display_resource_ids = L3_2
  L3_2 = 1
  L4_2 = A1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = G
    L7_2 = L7_2.ActivityMonopolyUtils
    L7_2 = L7_2.create_gacha_random_sequence
    L8_2 = L0_1
    L9_2 = A2_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L2_1
    L9_2 = L1_1
    L7_2[L8_2] = L9_2
    L8_2 = A0_2._index_to_display_resource_ids
    L8_2[L6_2] = L7_2
  end
end
L4_1._init_display_data = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2._index_to_display_resource_ids
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A1_2[L5_2]
    L8_2 = L3_1
    L6_2[L8_2] = L7_2
  end
end
L4_1._update_got_data = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_slots
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._index_to_display_resource_ids
    L6_2 = L6_2[L4_2]
    L8_2 = L5_2
    L7_2 = L5_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L4_1._refresh_slots_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._init_display_data
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_slots
  L4_2 = #L4_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_slots_view
  L2_2(L3_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._update_got_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_slots_view
  L2_2(L3_2)
end
L4_1.refresh_view_by_result = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = G
  L3_2 = L3_2.ActivityMonopolyUtils
  L3_2 = L3_2.get_numbers_max_same
  L4_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2)
  L5_2 = ipairs
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_slots
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = L9_2
    L10_2 = L9_2.show_highlight
    L12_2 = L3_1
    L13_2 = A1_2 or L13_2
    if A1_2 then
      L13_2 = A2_2[L8_2]
      L13_2 = L13_2 == L4_2
    end
    L10_2(L11_2, L12_2, L13_2)
  end
end
L4_1.show_highlight = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_slots
  L2_2 = L2_2[A1_2]
  L4_2 = L2_2
  L3_2 = L2_2.play_result_show
  L5_2 = L3_1
  L3_2(L4_2, L5_2)
end
L4_1.play_slot_result_show = L5_1
return L4_1
