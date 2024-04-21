local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumExhibitItemBaseInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._museum_item_data = A1_2
  L2_2 = A0_2._museum_item_data
  L2_2 = L2_2.MuseumItemRow
  if L2_2 ~= nil then
    L2_2 = A0_2._museum_item_data
    L2_2 = L2_2.MuseumItemRow
    A0_2._row = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.skill_list
    L3_2 = L2_2
    L2_2 = L2_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_property
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_skill
    L2_2(L3_2)
  else
    L2_2 = A0_2._museum_item_data
    L2_2 = L2_2.MuseumStuffRow
    if L2_2 ~= nil then
      L2_2 = A0_2._museum_item_data
      L2_2 = L2_2.MuseumStuffRow
      A0_2._row = L2_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.skill_list
      L3_2 = L2_2
      L2_2 = L2_2.safe_set_active
      L4_2 = false
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2._setup_property
      L2_2(L3_2)
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.property_a_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._row
  L3_2 = L3_2.StatsA
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.StuffStats
  L4_2 = L4_2.StatsA
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.property_b_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._row
  L3_2 = L3_2.StatsB
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.StuffStats
  L4_2 = L4_2.StatsB
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.property_c_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._row
  L3_2 = L3_2.StatsC
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.StuffStats
  L4_2 = L4_2.StatsC
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_property = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._museum_item_data
  L2_2 = L2_2.Skills
  L1_2 = L1_2(L2_2)
  A0_2._skill_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._skill_list
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.skill_list
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._skill_list
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_skill = L1_1
return L0_1
