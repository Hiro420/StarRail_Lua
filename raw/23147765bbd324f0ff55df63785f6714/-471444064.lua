local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumStaffPropertyPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "MuseumActivity_MaxStuffStats"
L2_1 = 0.4
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L1_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  A0_2._max_value = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._property_value = A1_2
  A0_2._stat_type = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_stat_base_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_value
  L1_2(L2_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.StuffStatsConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._stat_type
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_property
  L5_2 = L1_2.StatsIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_stat_base_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._property_value
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress
  L2_2 = A0_2._property_value
  L3_2 = A0_2._max_value
  L2_2 = L2_2 / L3_2
  L1_2.value = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group
  L2_2 = A0_2._property_value
  if L2_2 == 0 then
    L2_2 = L2_1
    if L2_2 then
      goto lbl_21
    end
  end
  L2_2 = 1
  ::lbl_21::
  L1_2.alpha = L2_2
end
L0_1._setup_value = L3_1
return L0_1
