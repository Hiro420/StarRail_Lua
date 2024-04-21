local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Record.PunkLordHonorInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Record.PunkLordHonorInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Record.PunkLordHonorInfoRowsPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordHonorInfoRowsPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 3
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_list
  L1_2 = L1_2[1]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_list
  return L1_2
end
L0_1.get_btn_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._cur_punklord_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._init_honor_list
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.panel_honors
    L8_2 = L8_2[L6_2]
    if L8_2 ~= nil then
      L10_2 = L8_2
      L9_2 = L8_2.setup_view
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1.setup_honor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = A0_2._cur_punklord_data
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_punklord_data
    L3_2 = L2_2
    L2_2 = L2_2.GetHonorList
    L2_2 = L2_2(L3_2)
    L3_2 = 0
    L4_2 = L2_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L1_1
      if L6_2 < L7_2 then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = L1_2
        L9_2 = L2_2[L6_2]
        L7_2(L8_2, L9_2)
      end
    end
  end
  return L1_2
end
L0_1._init_honor_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    function L6_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = L5_2.gameObject
      L0_3(L1_3, L2_3)
    end
    L5_2.onSelectTrigger = L6_2
  end
end
L0_1._on_load = L2_1
return L0_1
