local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportRewardItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookBuffRewardRowTitlePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookBuffRewardRowTitlePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportRewardItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 4
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_in_control_button_enable
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.title_star_text_prefab_meta
  L3_2 = L3_2.MultiPrefabList
  L3_2 = L3_2[2]
  L4_2 = A0_2._binder
  L4_2 = L4_2.title_star_text_root
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.RogueHandbookBuffRewardRowTitlePanel
  L5_2 = G
  L5_2 = L5_2.RogueHandbookBuffRewardRowTitlePanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._title_panel = L2_2
  L2_2 = A0_2._title_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_tip
  L2_2.IsShowTipBySelected = A1_2
end
L0_1.setup_in_control_button_enable = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_got
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_state = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.is_empty
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L2_2.enabled = false
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_Tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityAlley_Airline_ScoreLocked"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_Tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_main_panel
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.title_star_text_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_state
    L4_2 = A1_2.is_got_reward
    L2_2(L3_2, L4_2)
    L2_2 = A1_2.map_reward_data
    A0_2._alley_map_reward_row = L2_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = G
    L3_2 = L3_2.AlleyTransport
    L3_2 = L3_2.layer_to_show_name
    L4_2 = A0_2._alley_map_reward_row
    L4_2 = L4_2.LayerID
    L4_2 = #L4_2
    L3_2 = L3_2[L4_2]
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._title_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_desc
    L5_2 = "UIText_ActivityAlley_Airline_Profit"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._title_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_num
    L5_2 = A0_2._alley_map_reward_row
    L5_2 = L5_2.MapScore
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._title_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_icon
    L5_2 = "SpriteOutput/Quest/Alley/AlleyMapIcon/AlleyIconTransportEnergy.png"
    L3_2(L4_2, L5_2)
    L3_2 = G
    L3_2 = L3_2.RewardUtils
    L3_2 = L3_2.CreateRewardItemTableSorted
    L4_2 = A0_2._alley_map_reward_row
    L4_2 = L4_2.RewardID
    L3_2 = L3_2(L4_2)
    A0_2._reward_data = L3_2
    L3_2 = A0_2._reward_data
    if L3_2 ~= nil then
      L3_2 = A0_2._reward_data
      L3_2 = #L3_2
      L4_2 = L1_1
      if L3_2 > L4_2 then
        L4_2 = A0_2
        L3_2 = A0_2._on_infinite_mode
        L3_2(L4_2)
    end
    else
      L4_2 = A0_2
      L3_2 = A0_2._on_finite_mode
      L3_2(L4_2)
    end
    L3_2 = A0_2._binder
    L3_2 = L3_2.item_list
    L4_2 = L3_2
    L3_2 = L3_2.SetListItemCount
    L5_2 = A0_2._reward_data
    L5_2 = #L5_2
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.item_list
    L4_2 = L3_2
    L3_2 = L3_2.RefreshAllShownItem
    L3_2(L4_2)
    L3_2 = G
    L3_2 = L3_2.RewardUtils
    L3_2 = L3_2.CreateConfigIDList
    L4_2 = A0_2._alley_map_reward_row
    L4_2 = L4_2.RewardID
    L3_2 = L3_2(L4_2)
    A0_2._config_id_list = L3_2
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = CS
  L2_2 = L2_2.SuperScrollView
  L2_2 = L2_2.GridItemArrangeType
  L2_2 = L2_2.TopRightToBottomLeft
  L1_2.ArrangeType = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshViewportAndContentPivotAndAnchor
  L1_2(L2_2)
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._reward_data
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._reward_data
    L9_2 = A0_2._reward_data
    L9_2 = #L9_2
    L9_2 = L9_2 - L5_2
    L9_2 = L9_2 + 1
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
  end
  A0_2._reward_data = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mask
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mask
    L2_2.enabled = false
  end
end
L0_1._on_finite_mode = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = CS
  L2_2 = L2_2.SuperScrollView
  L2_2 = L2_2.GridItemArrangeType
  L2_2 = L2_2.TopLeftToBottomRight
  L1_2.ArrangeType = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshViewportAndContentPivotAndAnchor
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mask
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.mask
    L1_2.enabled = true
  end
end
L0_1._on_infinite_mode = L2_1
function L2_1(A0_2, A1_2, A2_2)
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
  end
  L5_2 = A0_2._reward_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_reward_item_changed = L2_1
return L0_1
