local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceBossItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._click_callback = nil
  A0_2._click_callback_panel = nil
  A0_2._index = 0
  A0_2._boss_data = nil
  A0_2._cell_data = nil
  A0_2._is_selected = false
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_item_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_selected
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  A0_2._index = A1_2
  A0_2._cell_data = A2_2
  A0_2._boss_data = A3_2
  A0_2._boss_level = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_monster_view
  L7_2 = A0_2._boss_data
  L7_2 = L7_2.Item1
  L8_2 = A0_2._boss_level
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_decay_view
  L7_2 = A0_2._boss_data
  L7_2 = L7_2.Item2
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueStatic
  L3_2 = L3_2.GetDisplayMonsterDataByRogueMonsterGroupID
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_monster_head
    L7_2 = L3_2.TemplateRow
    L7_2 = L7_2.ManikinImagePath
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_monster_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L3_2.Row
    L6_2 = L6_2.MonsterName
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.weak_point_list
    L5_2 = L4_2
    L4_2 = L4_2.setup_view
    L6_2 = G
    L6_2 = L6_2.Utils
    L6_2 = L6_2.create_lua_table_from_cs_array
    L7_2 = L3_2.Row
    L7_2 = L7_2.StanceWeakList
    L6_2, L7_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2)
  end
  if A2_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_monster_level
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._setup_monster_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueDLCBossDecayExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_decay_desc
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.BossDecayDesc
    L6_2 = G
    L6_2 = L6_2.UITextUtils
    L6_2 = L6_2.GetSkillParams
    L7_2 = L2_2.DescParam
    L6_2, L7_2 = L6_2(L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.underline_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2.ExtraDesc
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._setup_decay_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_selected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.decay_in_ctrl_move
  L2_2.ActionEnabled = A1_2
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_callback_panel = A2_2
end
L0_1.set_item_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 then
    L2_2 = A0_2._is_selected
    if L2_2 and not A1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.underline_panel
      L3_2 = L2_2
      L2_2 = L2_2.show_extra_info
      L2_2(L3_2)
      return
    end
  end
  L2_2 = A0_2._click_callback_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._click_callback
    if L2_2 ~= nil then
      L2_2 = A0_2._click_callback
      L3_2 = A0_2._click_callback_panel
      L4_2 = A0_2._index
      L5_2 = A0_2._boss_data
      L5_2 = L5_2.Item2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_item_click = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.decay_scroll_rect
  return L1_2
end
L0_1.get_decay_desc_scroll_rect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.underline_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_extra_info_available
  return L1_2(L2_2)
end
L0_1.is_extra_effect_available = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_root_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_item_click
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_root_selected = L1_1
return L0_1
