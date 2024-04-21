local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionMainPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionBtnPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionMainPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 4
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_dimension_btns
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._dimension_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_dimension_btn_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_main_panel_view
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dimension_btn_roots
  L2_2 = L1_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_handler = A1_2
  A0_2._click_listener = A2_2
end
L0_1.register_dimension_btn_click_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._dimension_btn_panels
  if L1_2 == nil then
    L1_2 = {}
    A0_2._dimension_btn_panels = L1_2
  end
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.dimension_btn_roots
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.ChessRogueDimensionBtnPanel
    L9_2 = G
    L9_2 = L9_2.ChessRogueDimensionBtnPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._dimension_btn_panels
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._init_dimension_btns = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._dimension_data
  L2_2 = L1_2
  L1_2 = L1_2.GetChessRogueDimensionDataItemList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = A0_2._dimension_btn_panels
    L8_2 = L5_2 + 1
    L7_2 = L7_2[L8_2]
    L9_2 = L7_2
    L8_2 = L7_2.setup_view
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.register_click_callback
    L10_2 = A0_2._on_dimension_btn_clicked
    L11_2 = A0_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1._setup_dimension_btn_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.graph_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_num_view
  L1_2(L2_2)
end
L0_1._setup_main_panel_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._click_handler
  if L3_2 then
    L3_2 = A0_2._click_listener
    if L3_2 then
      L3_2 = A0_2._click_handler
      L4_2 = A0_2._click_listener
      L5_2 = A1_2
      L6_2 = A2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_dimension_btn_clicked = L2_1
return L0_1
