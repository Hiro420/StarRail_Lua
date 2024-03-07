local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.UIUtils.UITextUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarSkin.AvatarSkinBtnPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AvatarSkin.AvatarSkinBtnPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.RightPanel.DropHintListviewPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarSkinDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AvatarModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.InventoryModule
L3_1 = G
L3_1 = L3_1.ShopModule
L3_1 = L3_1.Instance
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skin_list
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_skin_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skin_list
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2.on_snap_nearest_changed
    L3_3 = A0_2
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapNearestChanged = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_equip
  L4_2 = A0_2._on_btn_equip_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buy
  L4_2 = A0_2._on_btn_buy_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_2d_view
  L4_2 = A0_2._on_btn_2d_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_hide_ui
  L4_2 = A0_2._on_btn_hide_ui
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_prev_skin
  L4_2 = A0_2._on_btn_prev_skin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next_skin
  L4_2 = A0_2._on_btn_next_skin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L1_2 = L1_2(L2_2)
  A0_2._avatar_ui3d = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AvatarDressSkinChanged
  L4_2 = L0_1._OnAvatarDressSkinChanged
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.DropHintListviewPanel
  L4_2 = G
  L4_2 = L4_2.DropHintListviewPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._drop_hint_panel = L1_2
  L1_2 = A0_2._drop_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_drop_hint
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Common.PageNumPanel"
  L6_2 = "Ui.Common.PageNumPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._page_num_list = L1_2
  L1_2 = A0_2._page_num_list
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_page
  L1_2(L2_2, L3_2)
  L1_2 = SkinPageMode
  L1_2 = L1_2.Avatar
  A0_2._mode = L1_2
  A0_2._avatar_data = nil
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.EventTriggerListener
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_skin_list
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.UIUnLockCameraZoom
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.OnEnterTrigger = L2_2
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.UIUnLockCameraZoom
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.OnExitTrigger = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EventTriggerListener
  L2_2 = L2_2.Get
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skin_desc
  L3_2 = L3_2.gameObject
  L2_2 = L2_2(L3_2)
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.UIUnLockCameraZoom
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L2_2.OnEnterTrigger = L3_2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.NotifyManager
    L0_3 = L0_3.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.UIUnLockCameraZoom
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L2_2.OnExitTrigger = L3_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._drop_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._drop_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.switch_avatar
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._mode = A1_2
  L2_2 = A0_2._mode
  L3_2 = SkinPageMode
  L3_2 = L3_2.Shop
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._init_shop_skins
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btns
  L2_2(L3_2)
end
L0_1.set_mode = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._skin_id = A2_2
  L3_2 = A0_2._mode
  L4_2 = SkinPageMode
  L4_2 = L4_2.Activity
  if L3_2 == L4_2 then
    A0_2._avatar_data = A1_2
    L3_2 = {}
    A0_2._skin_list = L3_2
  else
    L3_2 = A0_2._avatar_data
    if A1_2 ~= L3_2 then
      A0_2._avatar_data = A1_2
      L4_2 = A0_2
      L3_2 = A0_2._init_avatar_skin_list
      L3_2(L4_2)
    end
    L3_2 = A0_2._mode
    L4_2 = SkinPageMode
    L4_2 = L4_2.Shop
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2._refresh_shop_data
      L3_2(L4_2)
    end
  end
  L3_2 = A0_2._mode
  L4_2 = SkinPageMode
  L4_2 = L4_2.Activity
  if L3_2 == L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_blank
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_skin_list
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_blank
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_skin_list
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._refresh_scrollview
    L3_2(L4_2)
    L3_2 = 0
    L4_2 = ipairs
    L5_2 = A0_2._skin_list
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = A0_2._skin_id
      if L9_2 == L8_2 then
        L3_2 = L7_2 - 1
      end
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.scroll_skin_list
    L5_2 = L4_2
    L4_2 = L4_2.MovePanelToSnapPivotByItemIndex
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.scroll_skin_list
    L5_2 = L4_2
    L4_2 = L4_2.FinishSnapImmediately
    L4_2(L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._mode
  L2_2 = SkinPageMode
  L2_2 = L2_2.Avatar
  if L1_2 == L2_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.IsSkinNew
    L3_2 = A0_2._skin_id
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = L1_1
      L2_2 = L1_2
      L1_2 = L1_2.UpdateSkinNew
      L3_2 = A0_2._skin_id
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_name
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.AvatarName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.skin_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._avatar_data
  L4_2 = L3_2
  L3_2 = L3_2.GetSkinName
  L5_2 = A0_2._skin_id
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L1_2 = A0_2._mode
  L2_2 = SkinPageMode
  L2_2 = L2_2.Activity
  if L1_2 == L2_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.AvatarSkinExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._skin_id
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.skin_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.AvatarSkinSynopsis
    L2_2(L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.skin_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._avatar_data
    L4_2 = L3_2
    L3_2 = L3_2.GetSkinDesc
    L5_2 = A0_2._skin_id
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L1_2 = A0_2._mode
  L2_2 = SkinPageMode
  L2_2 = L2_2.Shop
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_no_avatar
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._avatar_data
    L3_2 = L3_2.IsDisplayOnly
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_ui3d_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btns
  L1_2(L2_2)
  L1_2 = A0_2._refresh_ui_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._refresh_ui_callback
    L2_2 = A0_2._refresh_ui_callback_owner
    L3_2 = A0_2._avatar_data
    L4_2 = A0_2._skin_id
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = {}
  L2_2 = ipairs
  L3_2 = A0_2._skin_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = A0_2._skin_id
    L9_2 = L9_2 == L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._page_num_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_skin_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.refreh_navigation
  L2_2(L3_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._refresh_ui_callback = A1_2
  A0_2._refresh_ui_callback_owner = A2_2
end
L0_1.register_refresh_ui = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_ui3d
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._avatar_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.switch_avatar
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._skin_id
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_ui3d_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buy
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_equip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_using
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._drop_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_owned
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_2d_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_hide_ui
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mode
  L2_2 = SkinPageMode
  L2_2 = L2_2.Avatar
  if L1_2 == L2_2 then
    L1_2 = A0_2._avatar_data
    if L1_2 == nil then
      return
    end
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.IsOwnSkin
    L3_2 = A0_2._skin_id
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L1_2 = A0_2._avatar_data
      L1_2 = L1_2.DressedSkinID
      L2_2 = A0_2._skin_id
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_using
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
      else
        L1_2 = A0_2._binder
        L1_2 = L1_2.btn_equip
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
      end
    else
      L2_2 = A0_2
      L1_2 = A0_2._setup_drop_hint_view
      L1_2(L2_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_hide_ui
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_2d_view
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.IsOwnSkin
    L5_2 = A0_2._skin_id
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = A0_2._mode
    L2_2 = SkinPageMode
    L2_2 = L2_2.Archive
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_hide_ui
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_2d_view
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = L1_1
      L4_2 = L3_2
      L3_2 = L3_2.IsOwnSkin
      L5_2 = A0_2._skin_id
      L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
      L1_2(L2_2, L3_2, L4_2, L5_2)
    else
      L1_2 = A0_2._mode
      L2_2 = SkinPageMode
      L2_2 = L2_2.Shop
      if L1_2 == L2_2 then
        L1_2 = L1_1
        L2_2 = L1_2
        L1_2 = L1_2.IsOwnSkin
        L3_2 = A0_2._skin_id
        L1_2 = L1_2(L2_2, L3_2)
        if L1_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.node_owned
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetActive
          L3_2 = true
          L1_2(L2_2, L3_2)
        else
          L1_2 = A0_2._binder
          L1_2 = L1_2.btn_buy
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetActive
          L3_2 = true
          L1_2(L2_2, L3_2)
          L2_2 = A0_2
          L1_2 = A0_2._setup_shop_good_price
          L1_2(L2_2)
        end
      end
    end
  end
end
L0_1._refresh_btns = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._shop_good
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._shop_good
  L1_2 = L1_2.Currencys
  L1_2 = L1_2[1]
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = L1_2.ConfigID
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_cost_currency
  L6_2 = L1_2.ItemIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L1_2.Cost
  if L2_2 < L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_cost
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = "<color=#c84a32>"
    L6_2 = L1_2.Cost
    L7_2 = "</color>"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L3_2(L4_2, L5_2)
    A0_2._affordable = false
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_cost
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L1_2.Cost
    L3_2(L4_2, L5_2)
    A0_2._affordable = true
  end
end
L0_1._setup_shop_good_price = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skin_list
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_prev_next
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._skin_list
  L3_2 = #L3_2
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skin_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._skin_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_skin_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_scrollview = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._skin_id
  if L1_2 == 0 then
    L1_2 = A0_2._drop_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._item_data
  if L1_2 ~= nil then
    L1_2 = A0_2._item_data
    L1_2 = L1_2.ConfigID
    L2_2 = A0_2._skin_id
    if L1_2 == L2_2 then
      goto lbl_25
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ItemFactory
  L1_2 = L1_2.CreateItemData
  L2_2 = A0_2._skin_id
  L1_2 = L1_2(L2_2)
  A0_2._item_data = L1_2
  ::lbl_25::
  L1_2 = A0_2._drop_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_by_item_id
  L3_2 = A0_2._item_data
  L3_2 = L3_2.ConfigID
  L1_2(L2_2, L3_2)
end
L0_1._setup_drop_hint_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogFormatWithTag
    L4_2 = G
    L4_2 = L4_2.LogTag
    L4_2 = L4_2.UI
    L5_2 = "listview item item is nil"
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A2_2.UserObjectData
  if L3_2 == nil then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogFormatWithTag
    L5_2 = G
    L5_2 = L5_2.LogTag
    L5_2 = L5_2.UI
    L6_2 = "listview item UserObjectData is nil"
    L4_2(L5_2, L6_2)
    return
  end
  L5_2 = L3_2
  L4_2 = L3_2.get_skin_id
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._on_select_skin
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1.on_snap_nearest_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarSkinExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.AvatarID
    L9_2 = A0_2._avatar_data
    L9_2 = L9_2.ID
    if L8_2 == L9_2 then
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.Client
      L8_2 = L8_2.PersonalizeUtils
      L8_2 = L8_2.CanDisplayInLock
      L9_2 = L7_2.ShowType
      L10_2 = L7_2.PanelID
      L11_2 = L7_2.ShowParam
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      if L8_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = L7_2.ID
        L8_2(L9_2, L10_2)
      end
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = L1_2
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._compare_skin
    L4_3 = A0_3
    L5_3 = A1_3
    return L2_3(L3_3, L4_3, L5_3)
  end
  L3_2(L4_2, L5_2)
  A0_2._skin_list = L1_2
end
L0_1._init_avatar_skin_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._shop_skin_dict = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueCommonExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "SkinShopID"
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ShopModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.get_shop_by_id
  L4_2 = L1_2.Value
  L4_2 = L4_2.IntValue
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._skin_shop = L2_2
  L2_2 = A0_2._skin_shop
  L3_2 = L2_2
  L2_2 = L2_2.get_shop_goods
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._shop_skin_dict
    L9_2 = L7_2.ItemID
    L8_2[L9_2] = L7_2
  end
end
L0_1._init_shop_skins = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A1_2 == 0 then
    L3_2 = true
    return L3_2
  elseif A2_2 == 0 then
    L3_2 = false
    return L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ConstValueClientExcelTable
  L3_2 = L3_2.GetData
  L4_2 = "AvatarDefaultSkinRarity"
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Value
  L3_2 = L3_2.IntValue
  L4_2 = nil
  if A1_2 ~= 0 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ItemExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L3_2 = L5_2.Rarity
  end
  if A2_2 ~= 0 then
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ItemExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2.Rarity
  end
  if L3_2 ~= L4_2 then
    L5_2 = L3_2 > L4_2
    return L5_2
  end
  L5_2 = A1_2 < A2_2
  return L5_2
end
L0_1._compare_skin = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarSkinBtnPanel
    L8_2 = G
    L8_2 = L8_2.AvatarSkinBtnPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._skin_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._skin_id
  if L5_2 == L6_2 then
    L6_2 = A2_2 + 1
    A0_2._select_index = L6_2
  end
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A0_2._avatar_data
  L9_2 = L5_2
  L10_2 = A0_2._skin_id
  L10_2 = L5_2 == L10_2
  L11_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = L4_2
  L6_2 = L4_2.bind_button_click
  L8_2 = A0_2
  L9_2 = A0_2._on_skin_btn_click
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_skin_change = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._skin_id
  if A1_2 == L4_2 then
    return
  end
  A0_2._skin_id = A1_2
  L4_2 = A0_2._mode
  L5_2 = SkinPageMode
  L5_2 = L5_2.Shop
  if L4_2 == L5_2 then
    L5_2 = A0_2
    L4_2 = A0_2._refresh_shop_data
    L4_2(L5_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_skin_list
  L5_2 = L4_2
  L4_2 = L4_2.MovePanelToSnapPivotByItemIndex
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_skin_list
  L5_2 = L4_2
  L4_2 = L4_2.FinishSnapImmediately
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh
  L4_2(L5_2)
end
L0_1._on_skin_btn_click = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._skin_id
  if A1_2 == L2_2 then
    return
  end
  A0_2._skin_id = A1_2
  L2_2 = A0_2._mode
  L3_2 = SkinPageMode
  L3_2 = L3_2.Shop
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_shop_data
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_select_skin = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mode
  L2_2 = SkinPageMode
  L2_2 = L2_2.Shop
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarSkinExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._skin_id
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._shop_skin_dict
    L3_2 = A0_2._skin_id
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      goto lbl_23
    end
  end
  A0_2._shop_good = nil
  do return end
  ::lbl_23::
  L2_2 = A0_2._shop_skin_dict
  L3_2 = A0_2._skin_id
  L2_2 = L2_2[L3_2]
  A0_2._shop_good = L2_2
end
L0_1._refresh_shop_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._skin_id
  if 0 == L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_NetworkManager
    L2_2 = L1_2
    L1_2 = L1_2.NGJMPHGCPEG
    L3_2 = A0_2._avatar_data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_NetworkManager
    L2_2 = L1_2
    L1_2 = L1_2.NCEHONCGDLE
    L3_2 = A0_2._avatar_data
    L3_2 = L3_2.ID
    L4_2 = A0_2._skin_id
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_btn_equip_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._affordable
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.ShopUtils
    L1_2 = L1_2.handle_unaffordable_good
    L2_2 = A0_2._shop_good
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._avatar_data
  L1_2 = L1_2.IsDisplayOnly
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkCancelHint
    L2_2 = "UIText_AvatarSkinReconfirmText"
    L3_2 = "UIText_AvatarSkinReconfirmTitle"
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
      if A0_3 then
        L1_3 = L3_1
        L2_3 = L1_3
        L1_3 = L1_3.buy_good
        L3_3 = A0_2._shop_good
        L3_3 = L3_3.ShopID
        L4_3 = A0_2._shop_good
        L4_3 = L4_3.GoodsID
        L5_3 = A0_2._shop_good
        L5_3 = L5_3.ItemID
        L6_3 = 1
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
        L1_3 = A0_2._owner
        L2_3 = L1_3
        L1_3 = L1_3.exit
        L1_3(L2_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.buy_good
  L3_2 = A0_2._shop_good
  L3_2 = L3_2.ShopID
  L4_2 = A0_2._shop_good
  L4_2 = L4_2.GoodsID
  L5_2 = A0_2._shop_good
  L5_2 = L5_2.ItemID
  L6_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_buy_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Archive.AvatarArchive.AvatarPicDisplayDialog"
  L3_2 = A0_2._avatar_data
  L4_2 = A0_2._skin_id
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_2d_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.show_content
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_hide_ui = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._select_index
  L1_2 = L1_2 - 1
  if L1_2 <= 0 then
    L2_2 = A0_2._skin_list
    L1_2 = #L2_2
  end
  L2_2 = A0_2._select_index
  if L2_2 ~= L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_skin_btn_click
    L4_2 = A0_2._skin_list
    L4_2 = L4_2[L1_2]
    L5_2 = L1_2 - 1
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_btn_prev_skin = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._select_index
  L1_2 = L1_2 + 1
  L2_2 = A0_2._skin_list
  L2_2 = #L2_2
  if L1_2 > L2_2 then
    L1_2 = 1
  end
  L2_2 = A0_2._select_index
  if L2_2 ~= L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_skin_btn_click
    L4_2 = A0_2._skin_list
    L4_2 = L4_2[L1_2]
    L5_2 = L1_2 - 1
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_btn_next_skin = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._skin_shop_index
  if A1_2 == L2_2 then
    return
  end
  A0_2._skin_shop_index = A1_2
  L2_2 = A0_2._skin_shop_list
  L3_2 = A0_2._skin_shop_index
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.ItemID
  A0_2._skin_id = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarSkinExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._skin_id
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAvatar
  L5_2 = L2_2.AvatarID
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._avatar_data = L3_2
  L3_2 = A0_2._avatar_data
  if L3_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AvatarData
    L3_2 = L3_2.CreateGachaData
    L4_2 = L2_2.AvatarID
    L3_2 = L3_2(L4_2)
    A0_2._avatar_data = L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._avatar_data
  L6_2 = A0_2._skin_id
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._refresh_skin_avatar = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._OnAvatarDressSkinChanged = L4_1
return L0_1
