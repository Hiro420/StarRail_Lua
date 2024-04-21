local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SkillTreePointRecommendPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.panels_point
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.register_click_callback
    L10_2 = A1_2
    L11_2 = A2_2
    L8_2(L9_2, L10_2, L11_2)
  end
end
L0_1.register_point_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._close_callback = A1_2
  A0_2._close_handler = A2_2
end
L0_1.register_close_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2.SkillTreeData
  L5_2 = L4_2
  L4_2 = L4_2.GetRecommendPoints
  L6_2 = A1_2.RealID
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._point_datas = L3_2
  A0_2._avatar_data = A1_2
  A0_2._selected_point = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_point
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._point_datas
    L6_2 = L6_2[L4_2]
    L7_2 = L6_2 ~= nil
    L9_2 = L5_2
    L8_2 = L5_2.safe_set_active
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    if L7_2 then
      L9_2 = L5_2
      L8_2 = L5_2.setup_view
      L10_2 = L6_2
      L11_2 = A0_2._avatar_data
      L8_2(L9_2, L10_2, L11_2)
      L9_2 = L5_2
      L8_2 = L5_2.set_selected
      L10_2 = A0_2._selected_point
      L10_2 = L10_2 == L6_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._refresh_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._close_callback
  L3_2 = A0_2._close_handler
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_close = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 1
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.panels_point
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = A0_2._point_datas
    L7_2 = L7_2[L5_2]
    if L7_2 ~= nil then
      L8_2 = A0_2._selected_point
      if L8_2 == L7_2 then
        L1_2 = L5_2
        break
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_point
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L0_1.get_first_selected_object = L1_1
return L0_1
