local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.ItemTip.CommonItemPrefabLoader"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RewardItemIconLite"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L0_1._textid_splash = "UIText_Stamima_Current"
function L1_1(A0_2)
  local L1_2
  A0_2.config_id = nil
  A0_2._is_auto_trigger = false
  A0_2._is_auto_save_navigation = true
  L1_2 = {}
  A0_2._effect_nodes = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_auto_trigger = A1_2
end
L0_1.set_auto_trigger_btn = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_auto_save_navigation = A1_2
end
L0_1.set_auto_save_navigation = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  return L1_2
end
L0_1.get_root_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_time_limit_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_invalidated_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_timeout_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._is_auto_save_navigation
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = A0_2._binder
      L2_3 = L2_3.button
      L2_3 = L2_3.gameObject
      L0_3(L1_3, L2_3)
    end
    L0_3 = A0_2._select_event_listner
    if L0_3 then
      L0_3 = A0_2._on_select_item
      L1_3 = A0_2._select_event_listner
      L0_3(L1_3)
    end
    L0_3 = A0_2._is_auto_trigger
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._trigger_click_btn
      L0_3(L1_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_nodes
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
end
L0_1._on_unload = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._click_item_by_config_id
  L3_2 = A0_2._config_id
  L1_2(L2_2, L3_2)
end
L0_1._trigger_click_btn = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._config_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._hide_nodes
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "Item not exists, config id: "
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_icon_by_item_row
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_rarity
  L5_2 = L2_2.Rarity
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = A0_2._binder
  L5_2 = L5_2.button
  L6_2 = A0_2._click_item_by_config_id
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2._bind_long_click
  L5_2 = A0_2._binder
  L5_2 = L5_2.button
  L6_2 = A0_2._long_press_item
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2.config_id = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = L3_2
  L3_2 = L3_2.ClearAnimationState
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L2_2 = A0_2._hide_nodes
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2.ConfigID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_icon_by_item_row
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.Rarity
  if L3_2 ~= nil then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ItemRarity
    L4_2 = L4_2.Unknown
    if L3_2 ~= L4_2 then
      goto lbl_24
    end
  end
  L3_2 = L2_2.Rarity
  ::lbl_24::
  L5_2 = A0_2
  L4_2 = A0_2.set_rarity
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.set_count
  L6_2 = A1_2.Count
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_btn_callback
  L6_2 = A0_2._binder
  L6_2 = L6_2.button
  L7_2 = A0_2._click_item_by_item_data
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._bind_long_click
  L6_2 = A0_2._binder
  L6_2 = L6_2.button
  L7_2 = A0_2._long_press_item
  L8_2 = A1_2.ConfigID
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = A1_2.ConfigID
  A0_2.config_id = L4_2
end
L0_1.setup_view_by_display_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2.setup_view
  L5_2 = A1_2.ItemID
  L3_2(L4_2, L5_2)
  if A2_2 == nil then
    A2_2 = true
  end
  if A2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_count_display
    L5_2 = A1_2.Count
    L5_2 = 0 < L5_2
    L3_2(L4_2, L5_2)
    L3_2 = A1_2.Count
    if 0 < L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.set_count
      L5_2 = A1_2.Count
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.setup_view_by_reward_item = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._hide_nodes
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2.set_icon_by_item_row
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.set_rarity
  L6_2 = L3_2.Rarity
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.set_count
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view_without_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._click_item_by_config_id
  L3_2 = A0_2.config_id
  L1_2(L2_2, L3_2)
end
L0_1.trigger_click_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.button
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A1_2
    L0_3()
  end
  L2_2.onSelectTrigger = L3_2
end
L0_1.set_minus_select_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L2_2.onDeselectTrigger = A1_2
end
L0_1.set_minus_unselect_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_status_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._time_limit_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.CommonItemPrefabLoader
    L5_2 = G
    L5_2 = L5_2.CommonItemPrefabLoaderBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._time_limit_panel = L2_2
    L2_2 = A0_2._time_limit_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_time_limit_panel
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._invalidated_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.CommonItemPrefabLoader
    L5_2 = G
    L5_2 = L5_2.CommonItemPrefabLoaderBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._invalidated_panel = L2_2
    L2_2 = A0_2._invalidated_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_invalidated_panel
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._timeout_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.CommonItemPrefabLoader
    L5_2 = G
    L5_2 = L5_2.CommonItemPrefabLoaderBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._timeout_panel = L2_2
    L2_2 = A0_2._timeout_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_timeout_panel
    L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemRecycleShowType
  L2_2 = L2_2.Unknown
  if A1_2 == L2_2 then
    L2_2 = A0_2._time_limit_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_node_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._invalidated_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_node_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._timeout_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_node_active
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemRecycleShowType
    L2_2 = L2_2.ItemRecycleShow_Time
    if A1_2 == L2_2 then
      L2_2 = A0_2._time_limit_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_node_active
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._invalidated_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_node_active
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._timeout_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_node_active
      L4_2 = true
      L2_2(L3_2, L4_2)
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.ItemRecycleShowType
      L2_2 = L2_2.ItemRecycleShow_Version
      if A1_2 == L2_2 then
        L2_2 = A0_2._time_limit_panel
        L3_2 = L2_2
        L2_2 = L2_2.set_node_active
        L4_2 = false
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._invalidated_panel
        L3_2 = L2_2
        L2_2 = L2_2.set_node_active
        L4_2 = true
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._timeout_panel
        L3_2 = L2_2
        L2_2 = L2_2.set_node_active
        L4_2 = false
        L2_2(L3_2, L4_2)
      else
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.GameCore
        L2_2 = L2_2.ItemRecycleShowType
        L2_2 = L2_2.ItemRecycleShow_VersionAndTime
        if A1_2 == L2_2 then
          L2_2 = A0_2._time_limit_panel
          L3_2 = L2_2
          L2_2 = L2_2.set_node_active
          L4_2 = true
          L2_2(L3_2, L4_2)
          L2_2 = A0_2._invalidated_panel
          L3_2 = L2_2
          L2_2 = L2_2.set_node_active
          L4_2 = true
          L2_2(L3_2, L4_2)
          L2_2 = A0_2._timeout_panel
          L3_2 = L2_2
          L2_2 = L2_2.set_node_active
          L4_2 = false
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L0_1.setup_expired_hint = L1_1
function L1_1(A0_2, A1_2)
  A0_2._desc_params = A1_2
end
L0_1.set_detail_desc_text_params = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._panel_reddot
    if L2_2 == nil then
      L3_2 = A0_2
      L2_2 = A0_2.create_panel
      L4_2 = G
      L4_2 = L4_2.RedDotNormal
      L5_2 = G
      L5_2 = L5_2.RedDotNormalBinder
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      A0_2._panel_reddot = L2_2
      L2_2 = A0_2._panel_reddot
      L3_2 = L2_2
      L2_2 = L2_2.sync_loadto
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_reddot
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2._panel_reddot
    L3_2 = L2_2
    L2_2 = L2_2.refresh
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._panel_reddot
    if L2_2 ~= nil then
      L2_2 = A0_2._panel_reddot
      L3_2 = L2_2
      L2_2 = L2_2.refresh
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.set_reddot_show = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._on_click_item = nil
  A0_2._click_event_listner = nil
  A0_2._on_click_item_minus = nil
  A0_2._long_press_event_listner = nil
  A0_2._on_long_press_item = nil
  A0_2._optional_click_data = nil
  A0_2._on_select_item = nil
  A0_2._click_event_listner = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._click_event_listner = A1_2
  A0_2._on_click_item = A2_2
  if A3_2 ~= nil then
    A0_2._on_click_item_minus = A3_2
  end
end
L0_1.bind_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._select_event_listner = A1_2
  A0_2._on_select_item = A2_2
end
L0_1.bind_select = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._long_press_event_listner = A1_2
  A0_2._on_long_press_item = A2_2
end
L0_1.bind_long_press = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._append_click_listener = A1_2
  A0_2._append_click_callback = A2_2
end
L0_1.append_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.ItemMainType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemMainType
  L3_2 = L3_2.AvatarCard
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_icon_avatar
    L4_2 = A1_2.ItemIconPath
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2.ItemSubType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemSubType
    L3_2 = L3_2.AvatarSkin
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_icon_skin
      L4_2 = A1_2.ItemIconPath
      L2_2(L3_2, L4_2)
    else
      L3_2 = A0_2
      L2_2 = A0_2.set_icon
      L4_2 = A1_2.ItemIconPath
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.set_icon_by_item_row = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skin
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skin_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.set_icon = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon_avatar
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skin
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skin_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.set_icon_avatar = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon_skin
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skin
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_skin_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1.set_icon_skin = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_num_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_count_display = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L5_2 = A0_2
  L4_2 = A0_2.set_count_display
  L6_2 = true
  L4_2(L5_2, L6_2)
  if A3_2 and A2_2 then
    L4_2 = tonumber
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L5_2 = tonumber
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if L4_2 < L5_2 then
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "<color=\"#C84A32\">%s</color>"
      L6_2 = A1_2
      L4_2 = L4_2(L5_2, L6_2)
      A1_2 = L4_2
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.current_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.current_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L0_1.set_count = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2.set_count_display
  L6_2 = true
  L4_2(L5_2, L6_2)
  if A3_2 and A2_2 then
    L4_2 = tonumber
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L5_2 = tonumber
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    if L4_2 < L5_2 then
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "<color=\"#C84A32\">%s</color>"
      L6_2 = A1_2
      L4_2 = L4_2(L5_2, L6_2)
      A1_2 = L4_2
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.current_num
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  if A2_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.current_num
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L0_1._textid_splash
    L7_2 = A1_2
    L8_2 = A2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.current_num
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.set_count_with_total = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetItemRarityConfig
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.rarity_frame
  L6_2 = L2_2.FrameItemRarityPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.rarity_skin_frame
  L6_2 = L2_2.FrameItemRarityPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_rarity = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_black
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_status_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_black
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_black = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.button
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_highlight_panel
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_highlight_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_highlight_display = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_status_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_attachment_get
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_black
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_attachment_getted = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_interactable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == true then
    L2_2 = A0_2._binder
    L2_2 = L2_2.icon
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#000000B2"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.icon
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#FFFFFFFF"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
end
L0_1.set_item_hide = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_status_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.lock_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_black
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1.update_lock_mark = L1_1
function L1_1(A0_2, A1_2)
  A0_2._optional_click_data = A1_2
end
L0_1.set_optional_click_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._not_show_default_click_dialog = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  L1_2 = L1_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.None
  L1_2.mode = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.button
  L2_2.navigation = L1_2
end
L0_1.not_show_default_click_dialog = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_hide_dialog_num = true
end
L0_1.hide_item_num = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_name
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_name
    if L3_2 ~= nil then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_name
    L4_2 = L3_2
    L3_2 = L3_2.SetCustomizedText
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.set_name = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.load_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.hide_eff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._effect_nodes
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1._reset_effect = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.load_effect
  L2_2 = L2_2.MultiPrefabList
  L2_2 = L2_2[A1_2]
  L3_2 = A0_2._binder
  L3_2 = L3_2.load_effect
  L3_2 = L3_2.transform
  L4_2 = G
  L4_2 = L4_2.ComponentExtensions
  L4_2 = L4_2.SafeFind
  L5_2 = L3_2
  L6_2 = L2_2.name
  L7_2 = "(Clone)"
  L6_2 = L6_2 .. L7_2
  L7_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 == nil then
    L5_2 = A0_2._effect_nodes
    L7_2 = A0_2
    L6_2 = A0_2.instantiate_object
    L8_2 = L2_2
    L9_2 = L3_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2[A1_2] = L6_2
  else
    L6_2 = L4_2
    L5_2 = L4_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
end
L0_1.play_effect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_unlock
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_effect_back
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_effect_back
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_unlock
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "ItemIcon_RewardHint_Once"
  L1_2(L2_2, L3_2)
end
L0_1.play_unlock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_effect
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_effect_back
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_effect_back
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.reset_anim = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._config_id
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.ItemSubType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemSubType
  L4_2 = L4_2.AvatarSkin
  if L3_2 == L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_skin_bg
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_bg
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.set_bg = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemRarityConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_rarity_star_display
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.rarity_star
  L6_2 = L2_2.ItemRarityStarImgPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_rarity_star = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rarity_star
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_rarity_star_display = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_multiple_drop_tips
  if L2_2 ~= nil then
    if A1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_status_panel
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_multiple_drop_tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_multipledrop_lable_display = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ItemFactory
  L1_2 = L1_2.CreateItemData
  L2_2 = A0_2.config_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_item_type
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.ItemSubType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemSubType
  L5_2 = L5_2.Food
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.ItemSubType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemSubType
  L3_2 = L3_2.Food
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_status_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.GetFoodTypeIconPath
    L2_2 = L2_2(L3_2)
    if L2_2 == nil then
      return
    end
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_item_type
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.set_consumable_icon = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._append_click_callback
  L4_2 = A0_2._append_click_listener
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._handle_click_item_event
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = A1_2.ConfigID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.InventoryModule
  L4_2 = L3_2
  L3_2 = L3_2.GetRelicDataByUID
  L5_2 = A1_2.UID
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_show
  L5_2 = "Ui.Common.ItemDetailDialog"
  L4_2 = L4_2(L5_2)
  if L3_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.setup_view_by_item
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    return
  end
  L5_2 = A0_2._desc_params
  if L5_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.set_detail_desc_text_params
    L7_2 = A0_2._desc_params
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._is_hide_dialog_num
  if L5_2 then
    L5_2 = A0_2._is_hide_dialog_num
    if L5_2 == true then
      L6_2 = L4_2
      L5_2 = L4_2.hide_num
      L5_2(L6_2)
    end
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
end
L0_1._click_item_by_item_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._save_navigation_target
  L4_2 = A0_2._binder
  L4_2 = L4_2.button
  L4_2 = L4_2.gameObject
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._append_click_callback
  L4_2 = A0_2._append_click_listener
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._handle_click_item_event
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.ItemDetailDialog"
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.setup_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._is_hide_dialog_num
  if L3_2 then
    L3_2 = A0_2._is_hide_dialog_num
    if L3_2 == true then
      L4_2 = L2_2
      L3_2 = L2_2.hide_num
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2._desc_params
  if L3_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.set_desc_text_params
    L5_2 = A0_2._desc_params
    L3_2(L4_2, L5_2)
  end
end
L0_1._click_item_by_config_id = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._on_long_press_item
  if L2_2 then
    L2_2 = A0_2._long_press_event_listner
    if L2_2 then
      L2_2 = A0_2._on_long_press_item
      L3_2 = A0_2._long_press_event_listner
      L4_2 = A1_2
      L5_2 = A0_2._optional_click_data
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L0_1._long_press_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._on_click_item
  if L2_2 ~= nil then
    L2_2 = A0_2._on_click_item
    L3_2 = A0_2._click_event_listner
    L4_2 = A1_2
    L5_2 = A0_2._optional_click_data
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = true
    return L2_2
  end
  L2_2 = A0_2._not_show_default_click_dialog
  return L2_2
end
L0_1._handle_click_item_event = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._on_click_item_minus
  if L2_2 ~= nil then
    L2_2 = A0_2._on_click_item_minus
    L3_2 = A0_2._click_event_listner
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._click_item_minus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_num_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.current_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_attachment_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_multiple_drop_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.lock_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_item_type
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_black
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_highlight_display
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._reset_effect
  L1_2(L2_2)
end
L0_1._hide_nodes = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._owner
  L2_2 = L2_2._is_save_by_click
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.save_navigation_target
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._save_navigation_target = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_btn_object = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  return L1_2
end
L0_1.get_btn = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  return L1_2
end
L0_1.get_navi_btn = L1_1
return L0_1
