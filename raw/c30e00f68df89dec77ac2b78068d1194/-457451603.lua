local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.InventoryItemIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Inventory.ItemUse.FoodReplaceDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FightActivityFoodReplaceDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FoodReplaceDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 34
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_btn_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.InventoryItemIconPanel
  L4_2 = G
  L4_2 = L4_2.InventoryItemIconPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.item_panel = L1_2
  L1_2 = A0_2.item_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_cancel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._call_back
  L2_2 = A0_2._listener
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_confirm = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ItemFactory
  L4_2 = L4_2.CreateItemData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  A0_2.item_data = L4_2
  L4_2 = A0_2.item_data
  L4_2 = L4_2.UseDataID
  A0_2._use_data_id = L4_2
  A0_2._call_back = A2_2
  A0_2._listener = A3_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemUseBuffDataExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._use_data_id
  L4_2 = L4_2(L5_2)
  A0_2.buff_data_row = L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.FightActivityModule
  L4_2 = L4_2.FoodRemainTurn
  L5_2 = L4_2
  L4_2 = L4_2.ContainsKey
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.GlobalVars
    L4_2 = L4_2.s_ModuleManager
    L4_2 = L4_2.FightActivityModule
    L4_2 = L4_2.FoodRemainTurn
    L4_2 = L4_2[A1_2]
    A0_2._now_buff_count = L4_2
  else
    L4_2 = G
    L4_2 = L4_2.InventoryUtils
    L4_2 = L4_2.get_activity_count
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    A0_2._now_buff_count = L4_2
  end
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_total_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.buff_data_row
  L3_2 = L3_2.ActivityCount
  if 0 < L3_2 then
    L3_2 = A0_2.buff_data_row
    L3_2 = L3_2.ActivityCount
    if L3_2 then
      goto lbl_13
    end
  end
  L3_2 = 1
  ::lbl_13::
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_left_count
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._now_buff_count
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.item_data
  L3_2 = L3_2.Desc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.item_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_by_item
  L3_2 = A0_2.item_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.item_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_count
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
return L0_1
