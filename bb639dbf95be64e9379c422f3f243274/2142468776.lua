local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.AlleyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityAlleyPackGoodsItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_trigger_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_pointer_down
    L0_3(L1_3)
  end
  L1_2.OnDownTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_trigger_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_pointer_up
    L0_3(L1_3)
  end
  L1_2.OnUpTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_trigger_listener
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_exit_depot_area
    L0_3(L1_3)
  end
  L1_2.OnExitDepotAreaTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_pointer_select
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.event_trigger_listener
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
    L0_3 = L0_3._on_btn_select
    L0_3(L1_3)
  end
  L1_2.OnSelectTrigger = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._on_pinter_down_callback = nil
  A0_2._on_pointer_exit_depot_callback = nil
  A0_2._on_pointer_up_callback = nil
  A0_2._on_pointer_click_callback = nil
  A0_2._on_pointer_select_callback = nil
  A0_2._on_pointer_callback_owner = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.TutorialSupportModule
  L5_2 = L4_2
  L4_2 = L4_2.SetNodeDynamicKey
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.gameObject
  L7_2 = A1_2.GoodsID
  L4_2(L5_2, L6_2, L7_2)
  A0_2._good_item_data = A1_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_good_item
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_anchor_count
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_currency
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_count
  L6_2 = A1_2.Count
  L6_2 = L6_2 - A2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_type
  L4_2(L5_2)
  if A3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_reddot
    L4_2(L5_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2.remove_reddot
    L4_2(L5_2)
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  A0_2._on_pointer_down_callback = A1_2
  A0_2._on_pointer_exit_depot_callback = A2_2
  A0_2._on_pointer_up_callback = A3_2
  A0_2._on_pointer_click_callback = A4_2
  A0_2._on_pointer_select_callback = A5_2
  A0_2._on_pointer_callback_owner = A6_2
end
L1_1.register_btn_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.event_trigger_listener
  L3_2 = L2_2
  L2_2 = L2_2.RegisterDepotRectArea
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.register_depot_rect = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.set_show_item_num = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_good_item
  L4_2 = A0_2._good_item_data
  L4_2 = L4_2.GoodsPic
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._setup_good_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_anchor_count
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._good_item_data
  L3_2 = L3_2.RequireAnchorsCount
  L1_2(L2_2, L3_2)
end
L1_1._setup_anchor_count = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_currency
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._good_item_data
  L3_2 = L3_2.GoodsProfit
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon_currency
  L4_2 = L0_1.AlleyConstValue
  L4_2 = L4_2.FundItemIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._setup_currency = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_count
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = A1_2 <= 0
  L2_2.IsInFakeDisableState = L3_2
end
L1_1._setup_count = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._good_item_data
  L1_2 = L1_2.PackGoodItemConfig
  if L1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon_type
    L5_2 = L1_2.BottomAnchorPicPath
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = G
    L2_2 = L2_2.AlleyPackUtils
    L2_2 = L2_2.get_good_type_color
    L3_2 = L1_2.GoodsType
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L3_2 = A0_2._binder
      L3_2 = L3_2.img_color_type
      L4_2 = G
      L4_2 = L4_2.UIColorUtils
      L4_2 = L4_2.GetColor
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      L3_2.color = L4_2
    end
  end
end
L1_1._setup_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AlleyPackGoodNew"
  L4_2 = A0_2._good_item_data
  L4_2 = L4_2.GoodsID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._setup_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.unbind_reddot
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reddot
  L1_2(L2_2, L3_2)
end
L1_1.remove_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "AlleyPack _on_pointer_down"
  L1_2(L2_2)
  A0_2._is_wait_pointer_exit = true
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_pointer_down_callback
  L3_2 = A0_2._on_pointer_callback_owner
  L4_2 = A0_2._good_item_data
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._on_pointer_down = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "AlleyPack _on_pointer_select"
  L1_2(L2_2)
  A0_2._is_wait_pointer_exit = false
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_pointer_click_callback
  L3_2 = A0_2._on_pointer_callback_owner
  L4_2 = A0_2._good_item_data
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_pointer_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_wait_pointer_exit
  if not L1_2 then
    return
  end
  A0_2._is_wait_pointer_exit = false
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "AlleyPack _on_exit_depot_area"
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_pointer_exit_depot_callback
  L3_2 = A0_2._on_pointer_callback_owner
  L4_2 = A0_2._good_item_data
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_wait_pointer_up = true
end
L1_1._on_exit_depot_area = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_wait_pointer_up
  if not L1_2 then
    return
  end
  A0_2._is_wait_pointer_up = false
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.Log
  L2_2 = "AlleyPack _on_pointer_up"
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_pointer_up_callback
  L3_2 = A0_2._on_pointer_callback_owner
  L4_2 = A0_2._good_item_data
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_pointer_up = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_pointer_select_callback
  L3_2 = A0_2._on_pointer_callback_owner
  L4_2 = A0_2._good_item_data
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._on_btn_select = L2_1
return L1_1
