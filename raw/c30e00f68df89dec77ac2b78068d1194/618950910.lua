local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.FarmEnemy.PreviewRewardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PreviewRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._reward_btns = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rewards
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.button
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rewards
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    return L1_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._allow_special_navi
  if L2_2 == false then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active_in_hierarchy
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.is_in_special_zoom
      L2_2 = L2_2(L3_2)
      if not L2_2 then
        L2_2 = CS
        L2_2 = L2_2.InControl
        L2_2 = L2_2.InputControlType
        L2_2 = L2_2.LeftStickButton
        L2_2 = #L2_2
        if A1_2 == L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2.get_first_selected_object
          L2_2 = L2_2(L3_2)
          L4_2 = A0_2
          L3_2 = A0_2.set_special_zoom_navigation_target
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_in_control_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rewards
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_reward_item_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._allow_special_navi = false
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._reward_btns
    L8_2 = L4_2
    L7_2 = L4_2.get_btn
    L7_2, L8_2, L9_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  L5_2 = A0_2._reward_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view_by_reward_item
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._move_cbk
  if L6_2 then
    L6_2 = A0_2._move_owner
    if L6_2 then
      L6_2 = A0_2._move_cbk
      L7_2 = A0_2._move_owner
      L6_2(L7_2)
    end
  end
  L7_2 = L4_2
  L6_2 = L4_2.bind_click
  L8_2 = A0_2
  L9_2 = A0_2._on_show_reward_detail_click
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_attachment_getted
  L8_2 = A0_2._is_reward_taken
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_reward_item_change = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A2_2 then
    A0_2._allow_special_navi = A2_2
  end
  L4_2 = A3_2 or L4_2
  if not A3_2 then
    L4_2 = false
  end
  A0_2._is_reward_taken = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._set_reward_config_ids
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.get_sorted_items_by_item_config_list
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A0_2._reward_table = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rewards
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._reward_table
  L6_2 = #L6_2
  L7_2 = true
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rewards
  L5_2 = L4_2
  L4_2 = L4_2.RefreshAllShownItem
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_double_reward
  if L4_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_double_reward
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_theme_mark
  if L4_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_theme_mark
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FarmStageUnlockConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.FarmType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MultipleDropUtils
  L5_2 = L4_2.GetMultipleDropTypeByFarmType
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = L4_2.GetTopData
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2 ~= nil
  A0_2._is_in_double_reward = L7_2
  L7_2 = A0_2._is_in_double_reward
  if L7_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.double_mark_text
    if L7_2 ~= nil then
      L7_2 = A0_2._binder
      L7_2 = L7_2.double_mark_text
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = L6_2.LabelText
      L7_2(L8_2, L9_2)
    end
    L7_2 = A0_2._binder
    L7_2 = L7_2.theme_mark_text
    if L7_2 ~= nil then
      L7_2 = A0_2._binder
      L7_2 = L7_2.theme_mark_text
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetTextID
      L9_2 = L6_2.LabelText
      L7_2(L8_2, L9_2)
    end
    L7_2 = L6_2.Theme
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_double_reward
    if L8_2 ~= nil then
      L8_2 = A0_2._binder
      L8_2 = L8_2.node_double_reward
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = L7_2 == nil
      L8_2(L9_2, L10_2)
    end
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_theme_mark
    if L8_2 ~= nil then
      L8_2 = A0_2._binder
      L8_2 = L8_2.node_theme_mark
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetActive
      L10_2 = L7_2 ~= nil
      L8_2(L9_2, L10_2)
    end
    if L7_2 ~= nil then
      L8_2 = A0_2._binder
      L8_2 = L8_2.theme_mark_icon
      if L8_2 ~= nil then
        L9_2 = A0_2
        L8_2 = A0_2._async_load_sprite_to
        L10_2 = A0_2._binder
        L10_2 = L10_2.theme_mark_icon
        L11_2 = L7_2.IconPath
        L8_2(L9_2, L10_2, L11_2)
      end
    end
  end
end
L0_1.setup_double_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rewards
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L1_2
  L5_2 = L2_2.UserObjectData
  L5_2 = L5_2._binder
  L5_2 = L5_2.button
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.table_merge
  L4_2 = A0_2._reward_btns
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  return L1_2
end
L0_1.get_all_reward_btns = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._move_cbk = A1_2
  A0_2._move_owner = A2_2
end
L0_1.register_on_move_btn_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  A0_2._config_id_list = L2_2
  L2_2 = A1_2.Count
  if not L2_2 then
    L2_2 = A1_2.Length
  end
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._config_id_list
    L9_2 = A1_2[L6_2]
    L9_2 = L9_2.ItemID
    L7_2(L8_2, L9_2)
  end
end
L0_1._set_reward_config_ids = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_gamepad_input
  L2_2 = L2_2()
  if L2_2 == false then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Common.ItemDetailDialog"
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    return
  end
  L2_2 = {}
  L3_2 = ipairs
  L4_2 = A0_2._reward_table
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L7_2.ItemID
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2._reward_table
  L3_2 = #L3_2
  if 0 < L3_2 then
    L3_2 = {}
    L3_2.items = L2_2
    L4_2 = G
    L4_2 = L4_2.InventoryUtils
    L4_2 = L4_2.show_item_detail_display_dialog_for_gamepad
    L5_2 = L3_2
    L4_2(L5_2)
  end
end
L0_1._on_show_reward_detail_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_in_double_reward
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation_double_mark
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation_theme_mark
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.animation_theme_mark
      L2_2 = L1_2
      L1_2 = L1_2.Play
      L1_2(L2_2)
    end
  end
end
L0_1.try_play_double_mark_animation = L1_1
return L0_1
