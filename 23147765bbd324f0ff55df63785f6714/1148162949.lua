local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumAreaStatsPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.StuffStats
L1_1 = L1_1.StatsA
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.StuffStats
L2_1 = L2_1.StatsB
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.StuffStats
L3_1 = L3_1.StatsC
function L4_1(A0_2)
  local L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._property_a
    L3_2 = L2_2
    L2_2 = L2_2.IsMax
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = A0_2._property_a
  L2_2 = L2_2.IsJustMax
  ::lbl_12::
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.property_a_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_reach_anim
    L2_2(L3_2)
  end
  if A1_2 then
    L2_2 = A0_2._property_b
    L3_2 = L2_2
    L2_2 = L2_2.IsMax
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_27
    end
  end
  L2_2 = A0_2._property_b
  L2_2 = L2_2.IsJustMax
  ::lbl_27::
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.property_b_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_reach_anim
    L2_2(L3_2)
  end
  if A1_2 then
    L2_2 = A0_2._property_c
    L3_2 = L2_2
    L2_2 = L2_2.IsMax
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_42
    end
  end
  L2_2 = A0_2._property_c
  L2_2 = L2_2.IsJustMax
  ::lbl_42::
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.property_c_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_reach_anim
    L2_2(L3_2)
  end
  L2_2 = A0_2._property_a
  L2_2 = L2_2.IsJustAdd
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.property_a_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_add_anim
    L2_2(L3_2)
  end
  L2_2 = A0_2._property_b
  L2_2 = L2_2.IsJustAdd
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.property_b_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_add_anim
    L2_2(L3_2)
  end
  L2_2 = A0_2._property_c
  L2_2 = L2_2.IsJustAdd
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.property_c_panel
    L3_2 = L2_2
    L2_2 = L2_2.play_add_anim
    L2_2(L3_2)
  end
end
L0_1.try_play_property_bar_anim = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_a_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_preview
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_b_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_preview
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_c_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_preview
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_show_preview = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_a_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_color_preview
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_b_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_color_preview
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_c_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_color_preview
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_show_color_preview = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_a_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_level
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_b_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_level
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_c_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show_level
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_show_level = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.property_a_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_ctrl_color
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.property_b_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_ctrl_color
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.property_c_panel
  L5_2 = L4_2
  L4_2 = L4_2.set_ctrl_color
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1.set_ctrl_color = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._museum_area_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._museum_area_data
  L2_2 = L1_2
  L1_2 = L1_2.GetPropertyData
  L3_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._property_a = L1_2
  L1_2 = A0_2._museum_area_data
  L2_2 = L1_2
  L1_2 = L1_2.GetPropertyData
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._property_b = L1_2
  L1_2 = A0_2._museum_area_data
  L2_2 = L1_2
  L1_2 = L1_2.GetPropertyData
  L3_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._property_c = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.property_a_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._property_a
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.property_b_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._property_b
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.property_c_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._property_c
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_a_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.PropertyAData
  L5_2 = L1_1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_b_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.PropertyBData
  L5_2 = L2_1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.property_c_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.PropertyCData
  L5_2 = L3_1
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view_phase_upgrade = L4_1
return L0_1
