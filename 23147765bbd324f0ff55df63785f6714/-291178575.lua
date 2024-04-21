local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AdventureRewardInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_callback
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A0_2
  L4_2 = A0_2.safe_set_active
  L6_2 = false
  L4_2(L5_2, L6_2)
  A0_2._item_row = A1_2
  A0_2._delay_time = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_item_icon
  L7_2 = A1_2.ItemIconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_item_name
  L5_2 = L4_2
  L4_2 = L4_2.SetSingleLineEllipsis
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_item_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A1_2.ItemName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_item_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._count_down_timer
  if L4_2 == nil then
    return
  end
  L4_2 = A0_2._count_down_timer
  L5_2 = L4_2
  L4_2 = L4_2.set_interval
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._count_down_timer
  L5_2 = L4_2
  L4_2 = L4_2.reset
  L4_2(L5_2)
  L4_2 = A0_2._count_down_timer
  L5_2 = L4_2
  L4_2 = L4_2.start
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_extra_reward
  if not L2_2 then
    return
  end
  if not A1_2 then
    A1_2 = false
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_extra_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_extra_reward_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._count_down_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._check_root_destory
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._item_row
  L1_2 = L1_2.Rarity
  L1_2 = #L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator
  L3_2 = L2_2
  L2_2 = L2_2.Rebind
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = "Rarity0"
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1._on_timer_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._item_row
  if L1_2 ~= nil then
    L1_2 = A0_2._delay_time
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L2_2 = A0_2
  L1_2 = A0_2._check_root_destory
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.animator
      if L1_2 ~= nil then
        goto lbl_20
      end
    end
  end
  do return end
  ::lbl_20::
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._count_down_timer
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._add_count_down_timer
    L3_2 = A0_2._on_timer_callback
    L4_2 = A0_2._delay_time
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._count_down_timer = L1_2
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  else
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._count_down_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  end
end
L0_1.show_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.is_destroyed
  if not L1_2 then
    L1_2 = A0_2._binder
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.root
      if L1_2 ~= nil then
        L1_2 = G
        L1_2 = L1_2.UtilEngineWrap
        L1_2 = L1_2.IsCsObjectNull
        L2_2 = A0_2._binder
        L2_2 = L2_2.root
        L1_2 = L1_2(L2_2)
        if not L1_2 then
          L1_2 = G
          L1_2 = L1_2.UtilEngineWrap
          L1_2 = L1_2.IsCsObjectNull
          L2_2 = A0_2._binder
          L2_2 = L2_2.root
          L2_2 = L2_2.gameObject
          L1_2 = L1_2(L2_2)
          if not L1_2 then
            goto lbl_30
          end
        end
      end
    end
  end
  L1_2 = true
  do return L1_2 end
  ::lbl_30::
  L1_2 = false
  return L1_2
end
L0_1._check_root_destory = L1_1
return L0_1
