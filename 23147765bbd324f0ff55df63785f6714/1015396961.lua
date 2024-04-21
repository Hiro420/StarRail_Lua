local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ChatBubble.ChatBubbleSelectDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChatBubble.ChatBubbleSelectItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChatBubble.ChatBubbleSelectItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.PersonalizeModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FriendModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ChatBubbleSelectDialog"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChatBubbleSelectDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._bubble_ids = L1_2
  A0_2._current_bubble_id = 0
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PersonalizeChatBubbleUnlocked
  L4_2 = A0_2._on_bubble_unlocked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PersonalizeChatBubbleCurrentChanged
  L4_2 = A0_2._on_bubble_current_changed
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_item
  L4_2 = A0_2._on_btn_item
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.FetchPersonalizeData
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 4
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RecordSeenBubbles
  L1_2(L2_2)
end
L2_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.ChatBubbleData
  L1_2 = L1_2.CurrentBubbleID
  A0_2._current_bubble_id = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1.ChatBubbleData
  L3_2 = L2_2
  L2_2 = L2_2.GetDisplayChatBubbles
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._bubble_ids = L1_2
  L1_2 = A0_2._current_bubble_id
  A0_2._selected_bubble_id = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_selected_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_items_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._selected_bubble_id
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_confirm
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = false
    L2_2(L3_2, L4_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_selected
  L5_2 = L1_2.ItemFigureIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ItemName
  L2_2(L3_2, L4_2)
  L2_2 = L0_1.ChatBubbleData
  L2_2 = L2_2.UnlockedBubbleIDs
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A0_2._selected_bubble_id
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = not L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_unlock_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemComefromExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._selected_bubble_id
    L5_2 = 1
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 == nil then
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_unlock_hint
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_unlock_hint
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = L3_2.Desc
      L4_2(L5_2, L6_2)
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
end
L2_1._refresh_selected_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._bubble_ids
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._bubble_ids
  L3_2 = A0_2._selected_bubble_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_item
    L3_2 = L2_2
    L2_2 = L2_2.MovePanelToItemByIndex
    L4_2 = L1_2 - 1
    L2_2(L3_2, L4_2)
  end
end
L2_1._refresh_items_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChatBubbleSelectItemPanel
    L8_2 = G
    L8_2 = L8_2.ChatBubbleSelectItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_bubble_selected_changed
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._bubble_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = L0_1.ChatBubbleData
  L6_2 = L6_2.UnlockedBubbleIDs
  L7_2 = L6_2
  L6_2 = L6_2.Contains
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = not L6_2
  L7_2 = A0_2._current_bubble_id
  L7_2 = L5_2 == L7_2
  L8_2 = A0_2._selected_bubble_id
  L8_2 = L5_2 == L8_2
  L10_2 = L4_2
  L9_2 = L4_2.setup_view
  L11_2 = L5_2
  L12_2 = L6_2
  L13_2 = L7_2
  L14_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  return L3_2
end
L2_1._on_item_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_bubble_id
  L2_2 = A0_2._selected_bubble_id
  if L1_2 ~= L2_2 then
    L1_2 = L0_1.ChatBubbleData
    L1_2 = L1_2.UnlockedBubbleIDs
    L2_2 = L1_2
    L1_2 = L1_2.Contains
    L3_2 = A0_2._selected_bubble_id
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SetChatBubble
  L3_2 = A0_2._selected_bubble_id
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_confirm = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._on_btn_cancel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._selected_bubble_id
  L2_2(L3_2, L4_2)
end
L2_1._on_btn_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1.ChatBubbleData
  L3_2 = L2_2
  L2_2 = L2_2.GetDisplayChatBubbles
  L2_2, L3_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._bubble_ids = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_items_view
  L1_2(L2_2)
end
L2_1._on_bubble_unlocked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L2_1._on_bubble_current_changed = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._selected_bubble_id = A1_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.RecordSeenBubble
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_selected_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_items_view
  L2_2(L3_2)
end
L2_1._on_bubble_selected_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L2_1._init_ui_navigation = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L2_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.index_of_item
  L2_2 = A0_2._bubble_ids
  L3_2 = A0_2._selected_bubble_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    L2_2 = nil
    return L2_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_item
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_23
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_23::
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  return L3_2(L4_2)
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L2_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page_or_dialog
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = {}
  L3_2 = A0_2._selected_bubble_id
  L2_2[1] = L3_2
  L1_2.items = L2_2
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
  L3_2 = L1_2
  L2_2(L3_2)
end
L2_1._on_left_stick_button_click = L3_1
return L2_1
