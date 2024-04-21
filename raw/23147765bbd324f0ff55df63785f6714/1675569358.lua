local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = "CommonTabSwtich_From_L"
L2_1 = "CommonTabSwtich_From_R"
L3_1 = "CommonTabSwtich_To_L"
L4_1 = "CommonTabSwtich_To_R"
L5_1 = 3
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "BattlePassRewardDisplayPanel"
L8_1 = G
L8_1 = L8_1.BasePanel
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2
  A0_2._current_index = 1
end
L6_1.ctor = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._in_swipe = true
  L2_2 = A0_2._switch_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._switch_timer
  L3_2 = L2_2
  L2_2 = L2_2.stop
  L2_2(L3_2)
end
L6_1._on_swipe_start = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._in_swipe = false
  L2_2 = A1_2.swipeVector
  L2_2 = L2_2.x
  if 0 < L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._switch_to_left
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._switch_to_right
    L2_2(L3_2)
  end
end
L6_1._on_swipe_end = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_dot
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_list_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SwipeStart
  L4_2 = A0_2._on_swipe_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SwipeEnd
  L4_2 = A0_2._on_swipe_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._switch_to_right
  L4_2 = L5_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._switch_timer = L1_2
  L1_2 = CS
  L1_2 = L1_2.HedgehogTeam
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.AddUIIgnoredGameobject
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L2_2 = L2_2.gameObject
  L1_2(L2_2)
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.HedgehogTeam
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.RemoveUIIgnoredGameobject
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L2_2 = L2_2.gameObject
  L1_2(L2_2)
end
L6_1._on_dispose = L7_1
function L7_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L6_1.register_click_callback = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._switch_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._switch_timer
    L3_2 = L2_2
    L2_2 = L2_2.start
    L2_2(L3_2)
  else
    L2_2 = A0_2._switch_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._switch_timer
    L3_2 = L2_2
    L2_2 = L2_2.stop
    L2_2(L3_2)
  end
end
L6_1._on_owner_active_change = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._current_index = 1
  L2_2 = A0_2
  L1_2 = A0_2._setup_lightcone_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_headicon_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_dot_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_anim
  L1_2(L2_2)
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L6_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1.DisplayedLightConeIDs
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIRandomUtils
  L2_2 = L2_2.RangeInt
  L3_2 = 0
  L4_2 = L1_2.Count
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L1_2[L2_2]
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ItemFactory
  L4_2 = L4_2.CreateEquipmentItemData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_lightcone
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L6_1._setup_lightcone_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = L0_1.BattlePassData
  L1_2 = L1_2.Row
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.get_reward_items_of_type
  L3_2 = L1_2.Purchase128
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemSubType
  L4_2 = L4_2.HeadIcon
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.imgs_headicon
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = #L2_2
    L8_2 = L6_2 <= L8_2
    L10_2 = L7_2
    L9_2 = L7_2.SafeSetActive
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    if L8_2 then
      L9_2 = L2_2[L6_2]
      L9_2 = L9_2.ItemID
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.GameCore
      L10_2 = L10_2.ItemExcelTable
      L10_2 = L10_2.GetData
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L12_2 = A0_2
      L11_2 = A0_2._async_load_sprite_to
      L13_2 = L7_2
      L14_2 = L10_2.ItemFigureIconPath
      L11_2(L12_2, L13_2, L14_2)
    end
  end
end
L6_1._setup_headicon_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_dot
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L4_2 = A0_2
  L3_2 = A0_2._get_count
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_dot
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L6_1._setup_dot_view = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.DotItemPanel
    L8_2 = G
    L8_2 = L8_2.DotItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A2_2 + 1
  L8_2 = A0_2._current_index
  L7_2 = L7_2 == L8_2
  L5_2(L6_2, L7_2)
  return L3_2
end
L6_1._on_list_item_changed = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.nodes_type
  L1_2 = #L1_2
  return L1_2
end
L6_1._get_count = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.anims_type
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._current_index
    L6_2 = L4_2 == L6_2
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.UIAnimationUtils
    L7_2 = L7_2.PlayFromEnd
    L8_2 = L5_2
    if L6_2 then
      L9_2 = L2_1
      if L9_2 then
        goto lbl_23
      end
    end
    L9_2 = L3_1
    ::lbl_23::
    L7_2(L8_2, L9_2)
  end
end
L6_1._reset_anim = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._current_index
  if L1_2 == 1 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_lightcone_view
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_dot_view
  L1_2(L2_2)
end
L6_1._refresh_view = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIAnimationUtils
  L4_2 = L4_2.PlayFromBegin
  L5_2 = A0_2._binder
  L5_2 = L5_2.anims_type
  L5_2 = L5_2[A1_2]
  if A3_2 then
    L6_2 = L4_1
    if L6_2 then
      goto lbl_15
    end
  end
  L6_2 = L3_1
  ::lbl_15::
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UIAnimationUtils
  L4_2 = L4_2.PlayFromBegin
  L5_2 = A0_2._binder
  L5_2 = L5_2.anims_type
  L5_2 = L5_2[A2_2]
  if A3_2 then
    L6_2 = L1_1
    if L6_2 then
      goto lbl_30
    end
  end
  L6_2 = L2_1
  ::lbl_30::
  L4_2(L5_2, L6_2)
end
L6_1._play_fade_anim = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._current_index
  L2_2 = A0_2._current_index
  L2_2 = L2_2 - 1
  A0_2._current_index = L2_2
  L2_2 = A0_2._current_index
  if L2_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2._get_count
    L2_2 = L2_2(L3_2)
    A0_2._current_index = L2_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_fade_anim
  L4_2 = L1_2
  L5_2 = A0_2._current_index
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L6_1._switch_to_left = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._current_index
  L2_2 = A0_2._current_index
  L2_2 = L2_2 + 1
  A0_2._current_index = L2_2
  L2_2 = A0_2._current_index
  L4_2 = A0_2
  L3_2 = A0_2._get_count
  L3_2 = L3_2(L4_2)
  if L2_2 > L3_2 then
    A0_2._current_index = 1
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._play_fade_anim
  L4_2 = L1_2
  L5_2 = A0_2._current_index
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L6_1._switch_to_right = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._switch_to_left
  L1_2(L2_2)
end
L6_1.switch_to_left = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._switch_to_right
  L1_2(L2_2)
end
L6_1.switch_to_right = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._in_swipe
  if L1_2 then
    return
  end
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L1_2(L2_2, L3_2)
end
L6_1._on_btn_click = L7_1
return L6_1
