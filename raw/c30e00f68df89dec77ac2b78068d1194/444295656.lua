local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportNewHintDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyNewBuffTipItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportNewHintDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Tutorial_Alley_Transport_New_Buff_Custom_%s_%s"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyTransportNewHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_show_shop_panel = true
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.cs_list_to_table
  L4_2 = A1_2 or L4_2
  if not A1_2 then
    L4_2 = {}
  end
  L3_2 = L3_2(L4_2)
  A0_2._un_lock_shop_id_list = L3_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.cs_list_to_table
  L4_2 = A2_2 or L4_2
  if not A2_2 then
    L4_2 = {}
  end
  L3_2 = L3_2(L4_2)
  A0_2._un_lock_buff_id_list = L3_2
  L3_2 = A0_2._un_lock_shop_id_list
  L3_2 = #L3_2
  L3_2 = 0 < L3_2
  A0_2._is_show_shop_panel = L3_2
  L3_2 = A0_2._un_lock_buff_id_list
  L3_2 = #L3_2
  if 0 < L3_2 then
    L3_2 = ipairs
    L4_2 = A0_2._un_lock_buff_id_list
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = G
      L8_2 = L8_2.NotifyManager
      L8_2 = L8_2.notify
      L9_2 = G
      L9_2 = L9_2.CS
      L9_2 = L9_2.NotifyType
      L9_2 = L9_2.TutorialTaskUnlock
      L10_2 = string
      L10_2 = L10_2.format
      L11_2 = L1_1
      L12_2 = G
      L12_2 = L12_2.AlleyTransport
      L12_2 = L12_2.cur_show_layer
      L13_2 = L7_2.GridID
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2, L12_2, L13_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._is_show_shop_panel
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_shop_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_buff_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityAlley_Airline_ShopUnlockTitle"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._un_lock_shop_id_list
    L1_2 = L1_2[1]
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AlleyGridExcelTable
    L2_2 = L2_2.GetData
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_shop_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.GridTitle
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.icon_shop
    L6_2 = L2_2.ShopInfoIcon
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AlleyEventExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2.load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_shop
    L7_2 = L3_2.EventPic
    L4_2(L5_2, L6_2, L7_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_shop_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_buff_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityAlley_Airline_MapEffectUnlockTitle"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._buff_list_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._un_lock_buff_id_list
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Activity.ActivityAlley.Transport.AlleyNewBuffTipItemPanel"
  L6_2 = "Ui.Activity.ActivityAlley.Transport.AlleyNewBuffTipItemPanelBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._buff_list_panel = L1_2
  L1_2 = A0_2._buff_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff_list
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
return L0_1
