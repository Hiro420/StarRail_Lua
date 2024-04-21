local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportGoodsItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Event.AlleyEventResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyEventResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
L2_1 = 20002
L3_1 = "Alley_Event_Dialogue_Finish"
L4_1 = "UIText_ActivityAlley_Event_Finish_NewOrder"
L5_1 = "UIText_ActivityAlley_Event_Finish_InfiniteOrder"
L6_1 = 110
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyEventResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._unlock_goods = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  A0_2._unlock_goods = nil
  L2_2 = A0_2
  L1_2 = A0_2._trigger_performance_custom_str
  L1_2(L2_2)
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_dock
  L4_2 = A0_2._on_btn_dock
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_back
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.goods_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_goods_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_shop_info
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.goods_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._unlock_goods
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.goods_list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1.CacheResultEventID
  A0_2._event_id = L1_2
  L1_2 = L1_1.CacheResultMissionID
  A0_2._mission_id = L1_2
  L1_2 = L1_1.CacheNewUnlockOrder
  A0_2._new_order_count = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AlleyEventExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._event_id
  L1_2 = L1_2(L2_2)
  A0_2._event_row = L1_2
end
L0_1._get_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_shop_bg
  L4_2 = A0_2._event_row
  L4_2 = L4_2.EventPic
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_shop_icon
  L4_2 = A0_2._event_row
  L4_2 = L4_2.EventIcon
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_event_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._event_row
  L3_2 = L3_2.EventFinishTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_shop_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._event_row
  L3_2 = L3_2.EventShopTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_shop_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._event_row
  L3_2 = L3_2.EventShopFinish
  L1_2(L2_2, L3_2)
end
L0_1._setup_basic_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  A0_2._unlock_goods = L1_2
  L1_2 = A0_2._event_id
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AlleyShopExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.ShopGoods
    L4_2 = 0
    L5_2 = L3_2.Length
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2[L7_2]
      L8_2 = L8_2.GoodsID
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = A0_2._unlock_goods
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = L6_1
  if L1_2 ~= L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_new_order_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L4_1
    L6_2 = A0_2._new_order_count
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_new_order_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L5_1
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_shop_info = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GotoConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.ParamIntList
    L2_2 = L2_2.Length
    if not (L2_2 < 2) then
      goto lbl_15
    end
  end
  do return end
  ::lbl_15::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TransferModule
  L3_2 = L2_2
  L2_2 = L2_2.TransferWithFinishedEvent
  L4_2 = L1_2.ParamIntList
  L4_2 = L4_2[0]
  L5_2 = L1_2.ParamIntList
  L5_2 = L5_2[1]
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_btn_dock = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_items
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_ids
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_config_ids = L7_1
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
    L7_2 = L7_2.AlleyTransportGoodsItemPanel
    L8_2 = G
    L8_2 = L8_2.AlleyTransportGoodsItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view_static
  L7_2 = A0_2._unlock_goods
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_goods_item_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.trigger_custom_string
  L2_2 = L3_1
  L1_2(L2_2)
end
L0_1._trigger_performance_custom_str = L7_1
return L0_1
