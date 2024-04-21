local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonHintPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1.5
L2_1 = "InfoTipsCounter_FadeIn"
L3_1 = "InfoTipsCounter_FadeOut"
L4_1 = "SpriteOutput/ItemFigures/Activity/TreasureDungeon/HPRecovery_S.png"
L5_1 = {}
L5_1.GetChest = 1
L5_1.ConvertToHp = 2
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._play_list = L1_2
  A0_2._count_down = 0
  A0_2._current_param = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_controller
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_play_fade_out_finished
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._current_param
    if L0_3 ~= nil then
      L0_3 = A0_2._current_param
      L0_3 = L0_3.count
      if L0_3 ~= nil then
        L0_3 = A0_2._current_param
        L0_3 = L0_3.count
        if L0_3 ~= 0 then
          goto lbl_22
        end
      end
    end
    L0_3 = A0_2._effect_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._effect_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._effect_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    do return end
    ::lbl_22::
    L0_3 = A0_2._current_param
    L1_3 = A0_2._current_param
    L1_3 = L1_3.count
    L1_3 = L1_3 - 1
    L0_3.count = L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._play_effect
    L2_3 = A0_2._current_param
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._effect_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._effect_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._effect_timer
      L1_3 = L0_3
      L0_3 = L0_3.start
      L0_3(L1_3)
    end
  end
  L4_2 = 0.3
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._effect_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._should_tick = false
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A0_2
  L5_2 = A0_2._add_hint
  L7_2 = L5_1.ConvertToHp
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2
  L5_2 = A0_2._set_hint_effect
  L7_2 = L5_1.ConvertToHp
  L8_2 = A1_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2
  L5_2 = A0_2._add_hint_effect
  L7_2 = L5_1.ConvertToHp
  L8_2 = A1_2
  L9_2 = 1
  L5_2(L6_2, L7_2, L8_2, L9_2)
  A0_2._should_tick = true
end
L0_1.show_convert_to_hp = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = A0_2
  L5_2 = A0_2._add_hint
  L7_2 = L5_1.GetChest
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = A0_2
  L5_2 = A0_2._set_hint_effect
  L7_2 = L5_1.GetChest
  L8_2 = A1_2
  L9_2 = A3_2
  L10_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2._should_tick = true
end
L0_1.show_get_item = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._add_hint_effect
  L5_2 = L5_1.GetChest
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.add_get_item_hint_effect = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L6_2 = A0_2
  L5_2 = A0_2._get_hint
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if L5_2 ~= nil then
    return
  end
  L6_2 = {}
  L6_2.grid_Index = A2_2
  L6_2.hint_type = A1_2
  L6_2.row = A3_2
  L6_2.count = A4_2
  L6_2.callback = nil
  L6_2.handler = nil
  L7_2 = A0_2._play_list
  L8_2 = A0_2._play_list
  L8_2 = #L8_2
  L8_2 = L8_2 + 1
  L7_2[L8_2] = L6_2
end
L0_1._add_hint = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L6_2 = A0_2
  L5_2 = A0_2._get_hint
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if L5_2 == nil then
    return
  end
  L5_2.callback = A3_2
  L5_2.handler = A4_2
end
L0_1._set_hint_effect = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2._get_hint
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 == nil then
    return
  end
  L5_2 = L4_2.count
  L5_2 = L5_2 + A3_2
  L4_2.count = L5_2
end
L0_1._add_hint_effect = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = pairs
  L4_2 = A0_2._play_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.grid_Index
    if L8_2 == A2_2 then
      L8_2 = L7_2.hint_type
      if L8_2 == A1_2 then
        return L7_2
      end
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_hint = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._should_tick
  if L2_2 then
    L2_2 = A0_2._is_playing_fade_out
    if not L2_2 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2._count_down
  if 0 < L2_2 then
    L2_2 = A0_2._count_down
    L2_2 = L2_2 - A1_2
    A0_2._count_down = L2_2
    L2_2 = A0_2._count_down
    if L2_2 <= 0 then
      L3_2 = A0_2
      L2_2 = A0_2._play_fade_out
      L2_2(L3_2)
    end
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._has_next
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    A0_2._should_tick = false
    A0_2._current_param = nil
    L2_2 = A0_2._effect_timer
    if L2_2 ~= nil then
      L2_2 = A0_2._effect_timer
      L3_2 = L2_2
      L2_2 = L2_2.reset
      L2_2(L3_2)
      L2_2 = A0_2._effect_timer
      L3_2 = L2_2
      L2_2 = L2_2.stop
      L2_2(L3_2)
    end
    return
  end
  L2_2 = table
  L2_2 = L2_2.remove
  L3_2 = A0_2._play_list
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._play_fade_in
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_tick = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.hint_type
  L3_2 = L5_1.ConvertToHp
  if L2_2 == L3_2 then
    L2_2 = A1_2.row
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2._setup_convert_view
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = A1_2.hint_type
    L3_2 = L5_1.GetChest
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_get_view
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      return
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  A0_2._count_down = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  A0_2._current_param = A1_2
  L2_2 = A0_2._effect_timer
  if L2_2 ~= nil then
    L2_2 = A0_2._effect_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._effect_timer
    L3_2 = L2_2
    L2_2 = L2_2.start
    L2_2(L3_2)
  end
end
L0_1._play_fade_in = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_TreasureDungeon_Stage_ItemConversionTitle"
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_before
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = true
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_after_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.row
  L2_2 = L2_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.TreasureDungeonItemType
  L3_2 = L3_2.ItemChest
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TreasureDungeonItemConfigExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A1_2.row
    L3_2 = L3_2.TypeParam
    L3_2 = L3_2[0]
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_item_before
    L6_2 = L2_2.IconPath2D
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_item_before
    L5_2 = A1_2.row
    L5_2 = L5_2.IconPath2D
    L2_2(L3_2, L4_2, L5_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_item_after
  L5_2 = L4_1
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_convert_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_TreasureDungeon_Stage_TreasureReward"
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.nodes_before
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_after_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_after_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = "x"
  L5_2 = A1_2.row
  L5_2 = L5_2.TypeParam
  L5_2 = L5_2[1]
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TreasureDungeonItemConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.row
  L3_2 = L3_2.TypeParam
  L3_2 = L3_2[0]
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_item_after
  L6_2 = L2_2.IconPath2D
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_get_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_item_after
  L2_2 = L2_2.transform
  L2_2 = L2_2.position
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A1_2.callback
  L5_2 = A1_2.handler
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._play_effect = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_playing_fade_out = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1._play_fade_out = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_play_fade_in_finished = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._is_playing_fade_out = false
end
L0_1._on_play_fade_out_finished = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._play_list
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  return L1_2
end
L0_1._has_next = L6_1
return L0_1
