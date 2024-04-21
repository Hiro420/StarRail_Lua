local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.FoodBuffRowPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FoodBuffTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = "UIText_TeamBuffDetailDialog_TitleFoodBuff"
L3_1 = "SpriteOutput/TabIcon/Maze/Maze03Icon.png"
L4_1 = require
L5_1 = "Utilities.BuffUtils"
L4_1(L5_1)
L4_1 = G
L4_1 = L4_1.BuffUtils
L4_1 = L4_1.BuffPoolType
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2.food_buff_data_list
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  return L1_2
end
L0_1.is_show_buff = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_normal_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_selected_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_normal_img
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_selected_img
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuickConsumableItemChange
  L4_2 = A0_2._on_refresh_quick_consumable
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2.food_buff_data_list = L1_2
  L1_2 = {}
  A0_2.fake_buff_flag = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_food_buff_data
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_food_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_added = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2.food_buff_data_list = L1_2
  L1_2 = {}
  A0_2.fake_buff_flag = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_food_buff_data
  L1_2(L2_2)
  L1_2 = A0_2.food_buff_data_list
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_food_buff_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_food_buff_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.buff_scroll_view
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2.food_buff_data_list
    L4_2 = #L4_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.buff_scroll_view
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_empty_food_buff_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_TeamBuffDetailDialog_NoFoodBuff"
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.food_buff_data_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_scroll_view
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = L1_2.UserObjectData
      if L2_2 then
        L3_2 = L2_2._binder
        L3_2 = L3_2.btn_root
        L3_2 = L3_2.gameObject
        return L3_2
      end
    end
  end
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = nil
    L3_2 = nil
    L4_2 = nil
    L6_2 = L1_2
    L5_2 = L1_2.GetMainWorld
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.EntityManagerRef
    L7_2 = L5_2
    L6_2 = L5_2.GetLightTeamEntity
    L6_2 = L6_2(L7_2)
    L8_2 = L6_2
    L7_2 = L6_2.GetComponent
    L9_2 = typeof
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.AdventureAbilityComponent
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L8_2 = L7_2.ModifierCount
    L9_2 = 0
    L10_2 = L8_2 - 1
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L14_2 = L7_2
      L13_2 = L7_2.GetModifierByIndex
      L15_2 = L12_2
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = G
      L14_2 = L14_2.BuffUtils
      L14_2 = L14_2.GetMazeBuffData
      L15_2 = L13_2.BuffID
      L16_2 = L13_2.Level
      L14_2 = L14_2(L15_2, L16_2)
      L15_2 = L13_2.State
      L16_2 = CS
      L16_2 = L16_2.RPG
      L16_2 = L16_2.GameCore
      L16_2 = L16_2.ModifierState
      L16_2 = L16_2.Alive
      if L15_2 == L16_2 and L14_2 then
        L15_2 = L14_2.IsDisplay
        if L15_2 then
          L15_2 = L14_2.MazeBuffPool
          L16_2 = L4_1.ItemAtk
          if L15_2 == L16_2 then
            L2_2 = L13_2
          else
            L15_2 = L14_2.MazeBuffPool
            L16_2 = L4_1.ItemDef
            if L15_2 == L16_2 then
              L3_2 = L13_2
            else
              L15_2 = L14_2.MazeBuffPool
              L16_2 = L4_1.ItemSpe
              if L15_2 == L16_2 then
                L4_2 = L13_2
              end
            end
          end
        end
      end
    end
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.GlobalVars
    L9_2 = L9_2.s_ModuleManager
    L9_2 = L9_2.InventoryModule
    L9_2 = L9_2.QuickConsumableItem
    A0_2._quick_consumable_item = L9_2
    L9_2 = A0_2._quick_consumable_item
    if L9_2 then
      if L2_2 then
        L9_2 = L2_2.BuffID
        L10_2 = A0_2._quick_consumable_item
        if L9_2 == L10_2 then
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = A0_2.food_buff_data_list
          L11_2 = L2_2
          L9_2(L10_2, L11_2)
          L2_2 = nil
      end
      elseif L3_2 then
        L9_2 = L3_2.BuffID
        L10_2 = A0_2._quick_consumable_item
        if L9_2 == L10_2 then
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = A0_2.food_buff_data_list
          L11_2 = L3_2
          L9_2(L10_2, L11_2)
          L3_2 = nil
        end
      end
    end
    if L4_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2.food_buff_data_list
      L11_2 = L4_2
      L9_2(L10_2, L11_2)
    end
    L9_2 = G
    L9_2 = L9_2.InventoryUtils
    L9_2 = L9_2.enable_quick_use_func
    L9_2 = L9_2()
    L10_2 = L1_1
    L11_2 = L10_2
    L10_2 = L10_2.GetQuickConsumableItemIDByConsumeType
    L12_2 = FoodConsumeType
    L12_2 = L12_2.Attack
    L10_2 = L10_2(L11_2, L12_2)
    if L10_2 ~= 0 and L9_2 then
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = A0_2.food_buff_data_list
      L13_2 = {}
      L13_2.BuffID = L10_2
      L13_2.Level = 1
      L11_2(L12_2, L13_2)
      L11_2 = A0_2.fake_buff_flag
      L12_2 = A0_2.food_buff_data_list
      L12_2 = #L12_2
      L11_2[L12_2] = true
    elseif L2_2 then
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = A0_2.food_buff_data_list
      L13_2 = L2_2
      L11_2(L12_2, L13_2)
    end
    L11_2 = L1_1
    L12_2 = L11_2
    L11_2 = L11_2.GetQuickConsumableItemIDByConsumeType
    L13_2 = FoodConsumeType
    L13_2 = L13_2.Defend
    L11_2 = L11_2(L12_2, L13_2)
    if L11_2 ~= 0 and L9_2 then
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = A0_2.food_buff_data_list
      L14_2 = {}
      L14_2.BuffID = L11_2
      L14_2.Level = 1
      L12_2(L13_2, L14_2)
      L12_2 = A0_2.fake_buff_flag
      L13_2 = A0_2.food_buff_data_list
      L13_2 = #L13_2
      L12_2[L13_2] = true
    elseif L3_2 then
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = A0_2.food_buff_data_list
      L14_2 = L3_2
      L12_2(L13_2, L14_2)
    end
  end
end
L0_1._init_food_buff_data = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = nil
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L3_2 = L4_2
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.FoodBuffRowPanel
    L8_2 = G
    L8_2 = L8_2.FoodBuffRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2.food_buff_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_buff_data
  L8_2 = L5_2
  L9_2 = A0_2.fake_buff_flag
  L10_2 = A2_2 + 1
  L9_2 = L9_2[L10_2]
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_toggle_call_back
  L8_2 = A0_2._on_toggle_quick_btn
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L4_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  return L3_2
end
L0_1._on_scroll_food_change = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2.toggle_status
  if L3_2 == nil then
    L3_2 = {}
    A0_2.toggle_status = L3_2
  end
  L3_2 = A0_2.toggle_status
  L3_2[A1_2] = A2_2
end
L0_1._on_toggle_quick_btn = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active_in_hierarchy
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_refresh_quick_consumable = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_select = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.send_quick_consumable_status
  L1_2(L2_2)
end
L0_1._on_unselect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.send_quick_consumable_status
  L1_2(L2_2)
end
L0_1._on_exit_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2.toggle_status
  if L1_2 == nil then
    return
  end
  L1_2 = pairs
  L2_2 = A0_2.toggle_status
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L1_1
    L7_2 = L6_2
    L6_2 = L6_2.IsQuickConsumableTurnSwitchOpen
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= L5_2 then
      L7_2 = L1_1
      L8_2 = L7_2
      L7_2 = L7_2.SetTurnFoodSwitch
      L9_2 = L4_2
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1.send_quick_consumable_status = L5_1
return L0_1
