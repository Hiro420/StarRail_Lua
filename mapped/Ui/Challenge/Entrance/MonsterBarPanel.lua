local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterBarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1._textid_lv = "ChallengeMaze_ProposeLevel"
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._click_event_listener = nil
  A0_2._on_click = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_event_listener = A1_2
  A0_2._on_click = A2_2
end
L0_1.register_detail_btn_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._click_event_listener
  if L1_2 then
    L1_2 = A0_2._on_click
    if L1_2 then
      L1_2 = A0_2._on_click
      L2_2 = A0_2._click_event_listener
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_detail = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_nature
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.create_lua_table_from_cs_array
  L7_2 = A1_2
  L6_2, L7_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_icon_view
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_level_view
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_weak_point_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_nature = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonsterExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MonsterTemplateExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.MonsterTemplateID
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_monster
  L7_2 = L3_2.IconPath
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_icon_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L0_1._textid_lv
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_level_view = L1_1
return L0_1
