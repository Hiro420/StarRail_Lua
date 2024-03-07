local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Inventory.stuff_use.BagDetailSelectDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "InventoryStuffUseDialog"
L2_1 = G
L2_1 = L2_1.BaseDialog
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ItemFoodSubType
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ItemFoodTargetType
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.TeamModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.AvatarModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.InventoryModule
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BagDetailSelectDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._avatar_list = L1_2
  A0_2._buff_item_no = nil
  A0_2._need_select = false
  A0_2._item = nil
  A0_2._max_num = 0
  A0_2._local_item_row = nil
  A0_2._wait_callback = false
  A0_2._use_count = 1
  L1_2 = {}
  A0_2._select_avatars = L1_2
  A0_2.buff_data_row = nil
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._need_select
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_component
  L3_2 = "LoopListView2_ScrollView"
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetShownItemByItemIndex
  L4_2 = 0
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L3_2 = L3_2._binder
    L3_2 = L3_2.btn_root
    L3_2 = L3_2.gameObject
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_component
  L3_2 = "LoopListView2_ScrollView"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._get_avatar_item
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L4_2 = L3_2
  L3_2 = L3_2.get_component
  L5_2 = "Button_ButtonMinus"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._btn_minus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L4_2 = L3_2
  L3_2 = L3_2.get_component
  L5_2 = "Button_ButtonPlus"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._btn_plus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L4_2 = L3_2
  L3_2 = L3_2.get_component
  L5_2 = "Button_CancelBtn"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L4_2 = L3_2
  L3_2 = L3_2.get_component
  L5_2 = "Button_Close"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L4_2 = L3_2
  L3_2 = L3_2.get_component
  L5_2 = "Button_ConfirmBtn"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_object
  L3_2 = "right_panel"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_object
  L3_2 = "right_panel5"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_object
  L3_2 = "right_panel4"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_object
  L3_2 = "TipsPanel"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_component
  L3_2 = "Text_2"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_object
  L3_2 = "auto_2_1"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_object
  L3_2 = "ExchangePanel"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FoodItemUsed
  L4_2 = L0_1._on_get_item_used
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_component
  L3_2 = "Slider_Line"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_slider_value_changed
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogFormatWithTag
    L3_2 = G
    L3_2 = L3_2.LogTag
    L3_2 = L3_2.UI
    L4_2 = "InventoryStuffUseDialog init item is nil"
    L2_2(L3_2, L4_2)
    return
  end
  A0_2._item = A1_2
  L2_2 = A1_2.Row
  L2_2 = L2_2.UseDataID
  A0_2._buff_item_no = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemUseBuffDataExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._buff_item_no
  L2_2 = L2_2(L3_2)
  A0_2.buff_data_row = L2_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.UI
  L4_2 = "InventoryStuffUseDialog init _buff_item_no"
  L5_2 = A0_2._buff_item_no
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1.init = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if A1_2 ~= nil then
    L2_2 = A0_2._item
    if L2_2 ~= nil then
      L2_2 = A0_2._item
      L2_2 = L2_2.ConfigID
      if L2_2 == A1_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L2_2 = nil
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemUseBuffDataExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._buff_item_no
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L2_2 = L3_2.UseEffect
  end
  L4_2 = A0_2._need_select
  if not L4_2 then
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_component
    L6_2 = "Button_ConfirmBtn"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_component
    L6_2 = "Button_CancelBtn"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = G
  L4_2 = L4_2.SuperDebug
  L4_2 = L4_2.LogFormatWithTag
  L5_2 = G
  L5_2 = L5_2.LogTag
  L5_2 = L5_2.UI
  L6_2 = "InventoryStuffUseDialog effect_str"
  L7_2 = L2_2 or L7_2
  if not L2_2 or not L2_2 then
    L7_2 = "str nil"
  end
  L6_2 = L6_2 .. L7_2
  L4_2(L5_2, L6_2)
  A0_2._wait_callback = true
  L4_2 = A0_2._select_avatars
  L5_2 = pairs
  L6_2 = A0_2._select_avatars
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = A0_2
    L10_2 = A0_2.get_selected_idx
    L12_2 = A0_2._avatar_list
    L13_2 = L9_2
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L11_2 = A0_2._select_avatars
    L11_2 = L11_2[L8_2]
    if L10_2 ~= nil and L2_2 ~= nil and L2_2 ~= "" then
      L12_2 = A0_2._binder
      L13_2 = L12_2
      L12_2 = L12_2.get_component
      L14_2 = "LoopListView2_ScrollView"
      L12_2 = L12_2(L13_2, L14_2)
      L13_2 = L12_2
      L12_2 = L12_2.GetShownItemByItemIndex
      L14_2 = L10_2 - 1
      L12_2 = L12_2(L13_2, L14_2)
      if L12_2 ~= nil then
        L13_2 = L12_2.UserObjectData
        L15_2 = L13_2
        L14_2 = L13_2.play_effect
        L16_2 = L2_2
        function L17_2()
          local L0_3, L1_3
          L0_3 = A0_2
          L1_3 = L0_3
          L0_3 = L0_3._on_anim_end_callback
          L0_3(L1_3)
        end
        L14_2(L15_2, L16_2, L17_2)
      end
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2._init_num
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_confirm_button
  L5_2(L6_2)
  L5_2 = ipairs
  L6_2 = A0_2._avatar_list
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = A0_2
    L10_2 = A0_2._refresh_local_avatar_by_idx
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
  end
  L6_2 = A0_2
  L5_2 = A0_2._refresh_num
  L5_2(L6_2)
end
L0_1._on_get_item_used = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._wait_callback
  if not L1_2 then
    return
  end
  A0_2._wait_callback = false
  L1_2 = A0_2._need_select
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._item
  L1_2 = L1_2.Count
  if L1_2 <= 0 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
    return
  end
end
L0_1._on_anim_end_callback = L6_1
function L6_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.AvatarSelectIconPanel
    L8_2 = G
    L8_2 = L8_2.AvatarSelectIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._avatar_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = A0_2
  L6_2 = A0_2._set_item_panel
  L8_2 = L4_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  function L6_2(A0_3, A1_3, ...)
    local L2_3, L3_3, L4_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._on_avatar_click
    L4_3 = A1_3
    L2_3(L3_3, L4_3)
  end
  L8_2 = L4_2
  L7_2 = L4_2.register_click_callback
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = A1_2
  L7_2 = A1_2.OnItemSizeChanged
  L9_2 = A2_2
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._get_avatar_item = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = true
  L4_2 = A0_2._need_select
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.get_selected_idx
    L6_2 = A0_2._select_avatars
    L7_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2 ~= nil
  end
  L4_2 = L3_1
  L5_2 = L4_2
  L4_2 = L4_2.GetCurrentTeam
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.GetMemberDataByID
  L6_2 = A2_2.ID
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.SatietyRatio
  L6_2 = L5_2
  L5_2 = L5_2.ToFloat
  L5_2 = L5_2(L6_2)
  L6_2 = L4_2.LeftHPRatio
  L7_2 = L6_2
  L6_2 = L6_2.ToFloat
  L6_2 = L6_2(L7_2)
  L7_2 = G
  L7_2 = L7_2.SuperDebug
  L7_2 = L7_2.LogFormatWithTag
  L8_2 = G
  L8_2 = L8_2.LogTag
  L8_2 = L8_2.UI
  L9_2 = "_get_avatar_item id"
  L10_2 = A2_2.ID
  L11_2 = " index"
  L12_2 = " sp"
  L13_2 = L5_2
  L14_2 = " hp"
  L15_2 = L6_2
  L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
  L7_2(L8_2, L9_2)
  L8_2 = A1_2
  L7_2 = A1_2.setup_view
  L9_2 = A2_2
  L10_2 = false
  L11_2 = L3_2
  L12_2 = L5_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = A1_2
  L7_2 = A1_2.setup_dead_view
  L9_2 = L6_2 <= 0
  L7_2(L8_2, L9_2)
  L8_2 = A1_2
  L7_2 = A1_2.set_blood_hp
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = A1_2
  L7_2 = A1_2.set_select_anim_enable
  L9_2 = A0_2._need_select
  L7_2(L8_2, L9_2)
  L7_2 = A0_2.buff_data_row
  if L7_2 ~= nil then
    L7_2 = A0_2.buff_data_row
    L7_2 = L7_2.SatietyValue
    if L7_2 == 0 then
      L8_2 = A1_2
      L7_2 = A1_2.set_satiety_progress
      L9_2 = false
      L10_2 = L5_2
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._set_item_panel = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 == A2_2 then
      return L6_2
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1.get_selected_idx = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_all
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_component
  L3_2 = "LoopListView2_ScrollView"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = 0
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_component
  L3_2 = "LoopListView2_ScrollView"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._avatar_list
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_component
  L3_2 = "LoopListView2_ScrollView"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_num
  L1_2(L2_2)
end
L0_1._refresh = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.UI
  L4_2 = "_on_avatar_click "
  L5_2 = " "
  if A1_2 == nil then
    L6_2 = "nil"
    if L6_2 then
      goto lbl_15
    end
  end
  L6_2 = "false"
  ::lbl_15::
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._need_select
  if not L2_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.get_selected_idx
  L4_2 = A0_2._select_avatars
  L5_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.SuperDebug
  L3_2 = L3_2.LogFormatWithTag
  L4_2 = G
  L4_2 = L4_2.LogTag
  L4_2 = L4_2.UI
  L5_2 = "_on_avatar_click index"
  L6_2 = " "
  if L2_2 == nil then
    L7_2 = "nil"
    if L7_2 then
      goto lbl_39
    end
  end
  L7_2 = L2_2
  ::lbl_39::
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
  if L2_2 ~= nil then
    return
  else
    L4_2 = A0_2
    L3_2 = A0_2.get_selected_idx
    L5_2 = A0_2._avatar_list
    L6_2 = A0_2._select_avatars
    L6_2 = L6_2[1]
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = {}
    A0_2._select_avatars = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._select_avatars
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.get_selected_idx
    L6_2 = A0_2._avatar_list
    L7_2 = A0_2._select_avatars
    L7_2 = L7_2[1]
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._refresh_local_avatar_by_idx
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._refresh_local_avatar_by_idx
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_num
  L3_2(L4_2)
end
L0_1._on_avatar_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.get_component
  L4_2 = "LoopListView2_ScrollView"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L4_2 = A0_2._avatar_list
    L4_2 = L4_2[A1_2]
    L6_2 = A0_2
    L5_2 = A0_2._set_item_panel
    L7_2 = L3_2
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._refresh_local_avatar_by_idx = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = L3_1
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentTeam
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.MemberDatas
  L2_2 = L2_2.Length
  L3_2 = L3_1
  L4_2 = L3_2
  L3_2 = L3_2.GetCurrentTeam
  L3_2 = L3_2(L4_2)
  L4_2 = 1
  L5_2 = L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L9_2 = L3_2
    L8_2 = L3_2.GetMemberData
    L10_2 = L7_2 - 1
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = G
      L9_2 = L9_2.AvatarUtils
      L9_2 = L9_2.get_avatar_data_by_member_data
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L1_2
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
    end
  end
  A0_2._avatar_list = L1_2
  L4_2 = A0_2._need_select
  if L4_2 then
    L4_2 = {}
    A0_2._select_avatars = L4_2
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = A0_2._select_avatars
    L6_2 = A0_2._avatar_list
    L6_2 = L6_2[1]
    L4_2(L5_2, L6_2)
  else
    A0_2._select_avatars = L1_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L0_1._refresh_avatar_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.buff_data_row
  L2_2 = L1_2.IsShowItemDesc
  L3_2 = L1_2.MazeBuffID
  L4_2 = G
  L4_2 = L4_2.BuffUtils
  L4_2 = L4_2.GetMazeBuffData
  L5_2 = L3_2
  L6_2 = 1
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = A0_2._item
    if L5_2 ~= nil then
      L5_2 = A0_2._binder
      L6_2 = L5_2
      L5_2 = L5_2.get_component
      L7_2 = "Text_1_1"
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = L2_2
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L6_2 = L5_2
      L5_2 = L5_2.get_component
      L7_2 = "Text_1_1"
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = A0_2._item
      L7_2 = L7_2.Row
      L7_2 = L7_2.ItemDesc
      L5_2(L6_2, L7_2)
    end
  end
end
L0_1._show_buff_detail = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._buff_item_no
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemUseBuffDataExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._buff_item_no
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_buff_detail
  L2_2(L3_2)
  L2_2 = false
  L3_2 = A0_2._item
  L3_2 = L3_2.UseMethod
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemUseMethod
  L4_2 = L4_2.TeamFoodBenefit
  L4_2 = #L4_2
  if L3_2 ~= L4_2 then
    L3_2 = A0_2._item
    L3_2 = L3_2.UseMethod
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ItemUseMethod
    L4_2 = L4_2.ExternalSystemFoodBenefit
    L4_2 = #L4_2
    if L3_2 ~= L4_2 then
      goto lbl_41
    end
  end
  A0_2._need_select = false
  L2_2 = true
  goto lbl_55
  ::lbl_41::
  L3_2 = A0_2._item
  L3_2 = L3_2.UseMethod
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemUseMethod
  L4_2 = L4_2.TeamSpecificFoodBenefit
  L4_2 = #L4_2
  if L3_2 == L4_2 then
    A0_2._need_select = true
    L3_2 = L1_2.UseTargetType
    A0_2._select_type = L3_2
    L2_2 = true
  end
  ::lbl_55::
  if L2_2 then
    A0_2._local_item_row = L1_2
    L4_2 = A0_2
    L3_2 = A0_2._init_num
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._refresh_avatar_list
    L3_2(L4_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_confirm_button
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L4_2 = L3_2
  L3_2 = L3_2.get_component
  L5_2 = "Text_Text_4"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._item
  L5_2 = L5_2.Name
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L4_2 = L3_2
  L3_2 = L3_2.get_component
  L5_2 = "RightPanel_Text_1"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Inventory_ItemUse_LeftCount"
  L3_2(L4_2, L5_2)
end
L0_1._init_all = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._local_item_row
  L1_2 = L1_2.UseMultipleMax
  L2_2 = A0_2._item
  L2_2 = L2_2.Count
  L3_2 = A0_2.buff_data_row
  L3_2 = L3_2.IsShowUseMultipleSlider
  if L1_2 <= 0 or L2_2 <= 0 then
    L5_2 = A0_2
    L4_2 = A0_2._show_slider_panel
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_component
    L6_2 = "Slider_Line"
    L4_2 = L4_2(L5_2, L6_2)
    L4_2.minValue = 1
  else
    L5_2 = A0_2
    L4_2 = A0_2._show_slider_panel
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = math
    L4_2 = L4_2.min
    L5_2 = L2_2
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    A0_2._max_num = L4_2
    L5_2 = A0_2._binder
    L6_2 = L5_2
    L5_2 = L5_2.get_component
    L7_2 = "Text_LeftText"
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = string
    L7_2 = L7_2.format
    L8_2 = "%.0f"
    L9_2 = 1
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = A0_2._binder
    L6_2 = L5_2
    L5_2 = L5_2.get_component
    L7_2 = "Text_RightText"
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = string
    L7_2 = L7_2.format
    L8_2 = "%.0f"
    L9_2 = L4_2
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = A0_2._binder
    L6_2 = L5_2
    L5_2 = L5_2.get_component
    L7_2 = "Slider_Line"
    L5_2 = L5_2(L6_2, L7_2)
    L5_2.maxValue = L4_2
    L5_2 = A0_2._binder
    L6_2 = L5_2
    L5_2 = L5_2.get_component
    L7_2 = "Slider_Line"
    L5_2 = L5_2(L6_2, L7_2)
    L5_2.minValue = 0
    L5_2 = A0_2._binder
    L6_2 = L5_2
    L5_2 = L5_2.get_component
    L7_2 = "Slider_Line"
    L5_2 = L5_2(L6_2, L7_2)
    L5_2.value = 1
  end
end
L0_1._init_num = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._use_count = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_num
  L2_2(L3_2)
end
L0_1._on_slider_value_changed = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.get_object
  L4_2 = "TitleText_1"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.get_object
  L4_2 = "Slider"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.get_object
  L4_2 = "ButtonPlus"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.get_object
  L4_2 = "ButtonMinus"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._show_slider_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2
  L1_2 = A0_2._item
  L1_2 = L1_2.Count
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.get_component
  L4_2 = "RightPanel_Text_3"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.0f"
  L6_2 = L1_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  if L1_2 <= 0 then
    return
  end
  L2_2 = A0_2._use_count
  L3_2 = true
  L4_2 = A0_2.buff_data_row
  L4_2 = L4_2.IsShowUseMultipleSlider
  L5_2 = A0_2._need_select
  if L5_2 then
    L5_2 = A0_2._select_avatars
    L5_2 = #L5_2
    if 0 < L5_2 then
      L5_2 = A0_2._select_avatars
      L5_2 = L5_2[1]
      L6_2 = L3_1
      L7_2 = L6_2
      L6_2 = L6_2.GetCurrentTeam
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2
      L6_2 = L6_2.GetMemberDataByID
      L8_2 = L5_2.ID
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = A0_2._local_item_row
      L7_2 = L7_2.IsCheckHP
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.ConstValueCommonExcelTable
      L8_2 = L8_2.GetData
      L9_2 = "Food_SatietyValue_Limit"
      L8_2 = L8_2(L9_2)
      L8_2 = L8_2.Value
      L8_2 = L8_2.IntValue
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.ItemUseBuffDataExcelTable
      L9_2 = L9_2.GetData
      L10_2 = A0_2._buff_item_no
      L9_2 = L9_2(L10_2)
      L10_2 = L6_2.SatietyRatio
      L11_2 = L10_2
      L10_2 = L10_2.ToFloat
      L10_2 = L10_2(L11_2)
      L11_2 = L10_2 * L8_2
      L12_2 = L9_2.SatietyValue
      L12_2 = L12_2 * L2_2
      L12_2 = L12_2 * 1.0
      L11_2 = L11_2 + L12_2
      if L9_2 ~= nil then
        L12_2 = L9_2.SatietyValue
        if 0 < L12_2 then
          L12_2 = L10_2 * L8_2
          if L8_2 <= L12_2 then
            L13_2 = A0_2
            L12_2 = A0_2._show_slider_panel
            L14_2 = false
            L12_2(L13_2, L14_2)
            L3_2 = false
            L12_2 = A0_2._binder
            L13_2 = L12_2
            L12_2 = L12_2.get_component
            L14_2 = "Text_1_1"
            L12_2 = L12_2(L13_2, L14_2)
            L13_2 = L12_2
            L12_2 = L12_2.SafeSetActive
            L14_2 = true
            L12_2(L13_2, L14_2)
            L12_2 = A0_2._binder
            L13_2 = L12_2
            L12_2 = L12_2.get_component
            L14_2 = "Text_1_1"
            L12_2 = L12_2(L13_2, L14_2)
            L13_2 = L12_2
            L12_2 = L12_2.SafeSetTextID
            L14_2 = "UIText_Inventory_ItemUse_SatietyValueFull"
            L12_2(L13_2, L14_2)
        end
      end
      else
        L13_2 = A0_2
        L12_2 = A0_2._show_slider_panel
        L14_2 = L4_2
        L12_2(L13_2, L14_2)
        L13_2 = A0_2
        L12_2 = A0_2._show_buff_detail
        L12_2(L13_2)
        if L8_2 < L11_2 then
          L12_2 = math
          L12_2 = L12_2.ceil
          L13_2 = 1.0 - L10_2
          L13_2 = L13_2 * L8_2
          L14_2 = L9_2.SatietyValue
          L13_2 = L13_2 / L14_2
          L12_2 = L12_2(L13_2)
          L2_2 = L12_2 or L2_2
          if not (L2_2 >= L12_2) or not L12_2 then
            L2_2 = L2_2 - 1
          end
        end
      end
    end
  end
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = L2_2
  L7_2 = 1
  L5_2 = L5_2(L6_2, L7_2)
  L2_2 = L5_2
  L5_2 = A0_2._binder
  L6_2 = L5_2
  L5_2 = L5_2.get_component
  L7_2 = "Button_ButtonMinus"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetInteractable
  L7_2 = 1 < L2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L6_2 = L5_2
  L5_2 = L5_2.get_component
  L7_2 = "Button_ButtonPlus"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetInteractable
  L7_2 = A0_2._max_num
  L7_2 = L2_2 < L7_2
  L5_2(L6_2, L7_2)
  A0_2._use_count = L2_2
  L5_2 = A0_2._binder
  L6_2 = L5_2
  L5_2 = L5_2.get_component
  L7_2 = "Slider_Line"
  L5_2 = L5_2(L6_2, L7_2)
  L5_2.value = L2_2
  L5_2 = A0_2._binder
  L6_2 = L5_2
  L5_2 = L5_2.get_component
  L7_2 = "Text_1"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = "UIText_Inventory_ItemUse_UseCount"
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L6_2 = L5_2
  L5_2 = L5_2.get_component
  L7_2 = "Text_2_1"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = string
  L7_2 = L7_2.format
  L8_2 = "%.0f"
  L9_2 = L2_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
  L5_2 = A0_2._binder
  L6_2 = L5_2
  L5_2 = L5_2.get_component
  L7_2 = "Text_LeftText"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._max_num
  L7_2 = 1 < L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L6_2 = L5_2
  L5_2 = L5_2.get_component
  L7_2 = "Text_RightText"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._max_num
  L7_2 = 1 < L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L6_2 = L5_2
  L5_2 = L5_2.get_component
  L7_2 = "Button_ButtonMinus"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._max_num
  L7_2 = 1 < L7_2 and L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L6_2 = L5_2
  L5_2 = L5_2.get_component
  L7_2 = "Button_ButtonPlus"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._max_num
  L7_2 = 1 < L7_2 and L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._max_num
  if 1 < L5_2 then
    L5_2 = 1
    if L5_2 then
      goto lbl_214
    end
  end
  L5_2 = 0
  ::lbl_214::
  L6_2 = A0_2._max_num
  if 1 < L6_2 then
    L6_2 = A0_2._max_num
    if L6_2 then
      goto lbl_221
    end
  end
  L6_2 = 1
  ::lbl_221::
  L7_2 = A0_2._binder
  L8_2 = L7_2
  L7_2 = L7_2.get_component
  L9_2 = "Slider_Line"
  L7_2 = L7_2(L8_2, L9_2)
  L7_2.minValue = L5_2
  L7_2 = A0_2._binder
  L8_2 = L7_2
  L7_2 = L7_2.get_component
  L9_2 = "Slider_Line"
  L7_2 = L7_2(L8_2, L9_2)
  L7_2.maxValue = L6_2
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.ConstValueCommonExcelTable
  L7_2 = L7_2.GetData
  L8_2 = "Food_SatietyValue_Limit"
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.Value
  L7_2 = L7_2.IntValue
  L8_2 = pairs
  L9_2 = A0_2._select_avatars
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L14_2 = A0_2
    L13_2 = A0_2.get_selected_idx
    L15_2 = A0_2._avatar_list
    L16_2 = L12_2
    L13_2 = L13_2(L14_2, L15_2, L16_2)
    if L13_2 ~= nil then
      L14_2 = A0_2._select_avatars
      L14_2 = L14_2[L11_2]
      L15_2 = A0_2._binder
      L16_2 = L15_2
      L15_2 = L15_2.get_component
      L17_2 = "LoopListView2_ScrollView"
      L15_2 = L15_2(L16_2, L17_2)
      L16_2 = L15_2
      L15_2 = L15_2.GetShownItemByItemIndex
      L17_2 = L13_2 - 1
      L15_2 = L15_2(L16_2, L17_2)
      if L15_2 ~= nil then
        L16_2 = L15_2.UserObjectData
        L17_2 = L3_1
        L18_2 = L17_2
        L17_2 = L17_2.GetCurrentTeam
        L17_2 = L17_2(L18_2)
        L18_2 = L17_2
        L17_2 = L17_2.GetMemberDataByID
        L19_2 = L14_2.ID
        L17_2 = L17_2(L18_2, L19_2)
        L18_2 = CS
        L18_2 = L18_2.RPG
        L18_2 = L18_2.GameCore
        L18_2 = L18_2.ItemUseBuffDataExcelTable
        L18_2 = L18_2.GetData
        L19_2 = A0_2._buff_item_no
        L18_2 = L18_2(L19_2)
        if 0 < L7_2 then
          L19_2 = L18_2.SatietyValue
          if 0 < L19_2 then
            L19_2 = false
            if L19_2 then
              L19_2 = L17_2.SatietyRatio
              L20_2 = L19_2
              L19_2 = L19_2.ToFloat
              L19_2 = L19_2(L20_2)
              L20_2 = math
              L20_2 = L20_2.min
              L21_2 = 1.0
              L22_2 = L18_2.SatietyValue
              L23_2 = A0_2._use_count
              L22_2 = L22_2 * L23_2
              L22_2 = L22_2 * 1.0
              L22_2 = L22_2 / L7_2
              L22_2 = L19_2 + L22_2
              L20_2 = L20_2(L21_2, L22_2)
              L19_2 = L20_2
              L21_2 = L16_2
              L20_2 = L16_2.set_satiety_progress
              L22_2 = true
              L23_2 = L19_2
              L20_2(L21_2, L22_2, L23_2)
            end
          end
        end
        L19_2 = L18_2.PreviewHPRecoveryPercent
        L20_2 = L17_2.AvatarData
        L21_2 = L20_2
        L20_2 = L20_2.GetHPMax
        L20_2 = L20_2(L21_2)
        L21_2 = L18_2.PreviewHPRecoveryValue
        L22_2 = L21_2 / L20_2
        L23_2 = L19_2 + L22_2
        if 0.0 < L23_2 then
          L23_2 = L17_2.LeftHPRatio
          L24_2 = L23_2
          L23_2 = L23_2.ToFloat
          L23_2 = L23_2(L24_2)
          L24_2 = L19_2 + L22_2
          L25_2 = A0_2._use_count
          L24_2 = L24_2 * L25_2
          L24_2 = L23_2 + L24_2
          L25_2 = math
          L25_2 = L25_2.min
          L26_2 = 1.0
          L27_2 = L24_2
          L25_2 = L25_2(L26_2, L27_2)
          L24_2 = L25_2
          L26_2 = L16_2
          L25_2 = L16_2.set_icon_gray
          L27_2 = L23_2 <= 0.0
          L25_2(L26_2, L27_2)
          L26_2 = L16_2
          L25_2 = L16_2.set_blood_hp
          L27_2 = L23_2
          L28_2 = L24_2
          L25_2(L26_2, L27_2, L28_2)
        end
      end
    end
  end
end
L0_1._refresh_num = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._item
  L1_2 = L1_2.Count
  L2_2 = A0_2._need_select
  if L2_2 then
    L2_2 = A0_2._select_avatars
    L2_2 = #L2_2
  end
  L2_2 = A0_2._need_select
  L2_2 = 0 < L2_2 or L2_2
  L3_2 = A0_2._item
  L3_2 = L2_2 or L3_2
  L3_2 = L3_2 ~= nil and L2_2 and 1 <= L1_2
  L4_2 = G
  L4_2 = L4_2.SuperDebug
  L4_2 = L4_2.LogFormatWithTag
  L5_2 = G
  L5_2 = L5_2.LogTag
  L5_2 = L5_2.UI
  L6_2 = "_refresh_confirm_button select_legal"
  if L2_2 then
    L7_2 = "true"
    if L7_2 then
      goto lbl_37
    end
  end
  L7_2 = "false"
  ::lbl_37::
  L8_2 = " havanum"
  L9_2 = L1_2
  if L3_2 then
    L10_2 = "true"
    if L10_2 then
      goto lbl_45
    end
  end
  L10_2 = "false"
  ::lbl_45::
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L5_2 = L4_2
  L4_2 = L4_2.get_component
  L6_2 = "Button_ConfirmBtn"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetInteractable
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._refresh_confirm_button = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_component
  L3_2 = "Slider_Line"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.value
  L2_2 = math
  L2_2 = L2_2.min
  L3_2 = L1_2 + 1
  L4_2 = A0_2._max_num
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L2_2
  A0_2._use_count = L1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_num
  L2_2(L3_2)
end
L0_1._btn_plus = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_component
  L3_2 = "Slider_Line"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.value
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = L1_2 - 1
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  L1_2 = L2_2
  A0_2._use_count = L1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_num
  L2_2(L3_2)
end
L0_1._btn_minus = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._btn_cancel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._item
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._wait_callback
  if L1_2 then
    return
  end
  L1_2 = A0_2._need_select
  if L1_2 then
    L1_2 = A0_2._select_avatars
    L1_2 = L1_2[1]
    L2_2 = L3_1
    L3_2 = L2_2
    L2_2 = L2_2.GetCurrentTeam
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.GetMemberDataByID
    L4_2 = L1_2.ID
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = A0_2._select_type
    L4_2 = L2_1.ALL
    if L3_2 ~= L4_2 then
      L3_2 = A0_2._select_type
      L4_2 = L2_1.Dead
      if L3_2 == L4_2 then
        L3_2 = L2_2.IsAlive
        if L3_2 then
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.Client
          L3_2 = L3_2.ConfirmDialogUtil
          L3_2 = L3_2.ShowOkHint
          L4_2 = "UIText_Inventory_ItemUse_UseForDead"
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.Client
          L5_2 = L5_2.TextID
          L5_2 = L5_2.empty
          L3_2(L4_2, L5_2)
          return
      end
      else
        L3_2 = A0_2._select_type
        L4_2 = L2_1.Alive
        if L3_2 == L4_2 then
          L3_2 = L2_2.IsAlive
          if not L3_2 then
            L3_2 = CS
            L3_2 = L3_2.RPG
            L3_2 = L3_2.Client
            L3_2 = L3_2.ConfirmDialogUtil
            L3_2 = L3_2.ShowOkHint
            L4_2 = "UIText_Inventory_ItemUse_UseForAlive"
            L5_2 = CS
            L5_2 = L5_2.RPG
            L5_2 = L5_2.Client
            L5_2 = L5_2.TextID
            L5_2 = L5_2.empty
            L3_2(L4_2, L5_2)
            return
          end
        end
      end
    end
    L3_2 = A0_2._local_item_row
    L3_2 = L3_2.IsCheckHP
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ConstValueCommonExcelTable
    L4_2 = L4_2.GetData
    L5_2 = "Food_SatietyValue_Limit"
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.Value
    L4_2 = L4_2.IntValue
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ItemUseBuffDataExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._buff_item_no
    L5_2 = L5_2(L6_2)
    L6_2 = L2_2.SatietyRatio
    L7_2 = L6_2
    L6_2 = L6_2.ToFloat
    L6_2 = L6_2(L7_2)
    if L5_2 ~= nil then
      L7_2 = L5_2.SatietyValue
      if 0 < L7_2 then
        L7_2 = L6_2 * L4_2
        if L4_2 <= L7_2 then
          L7_2 = CS
          L7_2 = L7_2.RPG
          L7_2 = L7_2.Client
          L7_2 = L7_2.ConfirmDialogUtil
          L7_2 = L7_2.ShowOkHint
          L8_2 = "UIText_Inventory_ItemUse_SatietyValueFull"
          L9_2 = CS
          L9_2 = L9_2.RPG
          L9_2 = L9_2.Client
          L9_2 = L9_2.TextID
          L9_2 = L9_2.empty
          L7_2(L8_2, L9_2)
          return
        end
      end
    end
    L7_2 = L2_2.LeftHPRatio
    L8_2 = L7_2
    L7_2 = L7_2.ToFloat
    L7_2 = L7_2(L8_2)
    if L3_2 and 1.0 <= L7_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.ConfirmDialogUtil
      L8_2 = L8_2.ShowOkCancelHint
      L9_2 = "UIText_Inventory_ItemUse_HPFullTips"
      L10_2 = CS
      L10_2 = L10_2.RPG
      L10_2 = L10_2.Client
      L10_2 = L10_2.TextID
      L10_2 = L10_2.empty
      function L11_2(A0_3)
        local L1_3, L2_3
        if A0_3 then
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3._rpc_use_item
          L1_3(L2_3)
        end
      end
      L8_2(L9_2, L10_2, L11_2)
      return
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._rpc_use_item
  L1_2(L2_2)
end
L0_1._btn_confirm = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormatWithTag
  L2_2 = G
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.UI
  L3_2 = "InventoryStuffUseDialog _rpc_use_item,id:"
  L4_2 = A0_2._item
  L4_2 = L4_2.ConfigID
  L5_2 = " count:"
  L6_2 = A0_2._use_count
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._need_select
  if L1_2 then
    L1_2 = A0_2._select_avatars
    L1_2 = L1_2[1]
    L1_2 = L1_2.ID
    L2_2 = A0_2._select_avatars
    L2_2 = L2_2[1]
    L2_2 = L2_2.IsTrialPlayer
    if L2_2 then
      L2_2 = A0_2._select_avatars
      L2_2 = L2_2[1]
      L2_2 = L2_2.TrialPlayerID
      if L2_2 then
        goto lbl_33
      end
    end
    L2_2 = A0_2._select_avatars
    L2_2 = L2_2[1]
    L2_2 = L2_2.ID
    ::lbl_33::
    L3_2 = L3_1
    L4_2 = L3_2
    L3_2 = L3_2.GetCurrentTeam
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.GetMemberDataByID
    L6_2 = L1_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogFormatWithTag
    L6_2 = G
    L6_2 = L6_2.LogTag
    L6_2 = L6_2.UI
    L7_2 = "InventoryStuffUseDialog _rpc_use_item,id:"
    L8_2 = A0_2._item
    L8_2 = L8_2.ConfigID
    L9_2 = " count:"
    L10_2 = A0_2._use_count
    L11_2 = "avatar_id"
    L12_2 = L2_2
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2
    L5_2(L6_2, L7_2)
    L5_2 = L5_1
    L6_2 = L5_2
    L5_2 = L5_2.UseFoodItem
    L7_2 = A0_2._item
    L7_2 = L7_2.ConfigID
    L8_2 = A0_2._use_count
    L9_2 = L2_2
    L10_2 = L4_2.AvatarType
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L1_2 = L5_1
    L2_2 = L1_2
    L1_2 = L1_2.UseFoodItem
    L3_2 = A0_2._item
    L3_2 = L3_2.ConfigID
    L4_2 = A0_2._use_count
    L5_2 = 0
    L6_2 = CS
    L6_2 = L6_2.LHLCMODLJCB
    L6_2 = L6_2.EOMHNMFOPCP
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._rpc_use_item = L6_1
return L0_1
