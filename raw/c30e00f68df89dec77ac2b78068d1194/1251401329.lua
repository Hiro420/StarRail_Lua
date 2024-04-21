local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MiniGameReShaAssistantImagePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_buttons_navigation
  L1_2(L2_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._active_button_panels = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_btn_sfx_arr
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.is_active_in_hierarchy
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._active_button_panels
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._active_button_panels
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L3_3 = A0_3
    L2_3 = A0_3.get_world_position_horizontal
    L2_3 = L2_3(L3_3)
    L4_3 = A1_3
    L3_3 = A1_3.get_world_position_horizontal
    L3_3 = L3_3(L4_3)
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._active_button_panels
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L10_2 = L6_2
    L9_2 = L6_2.get_btn_root
    L9_2, L10_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L6_2 = true
  L7_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_buttons_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._active_button_panels
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
return L0_1
