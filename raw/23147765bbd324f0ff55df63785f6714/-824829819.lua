local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooCollectCatDialogBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.SpaceZooSpicalEventState
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "SpaceZooCollectCatDialog"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.SpaceZooCollectCatDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_material
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_result
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_position
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._callback = nil
  A0_2._callback_handler = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  A0_2._special_event_data = A1_2
  A0_2._feature_imgs_list = A2_2
  A0_2._transform = A3_2
  A0_2._callback = A4_2
  A0_2._callback_handler = A5_2
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_handler
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._special_event_data
  L1_2 = L1_2.State
  L2_2 = L0_1.Lock
  L1_2 = L1_2 == L2_2
  L2_2 = 1
  L3_2 = A0_2._feature_imgs_list
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.expand_panel_icon
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = A0_2._feature_imgs_list
    L8_2 = L8_2[L5_2]
    L9_2 = L1_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.expand_panel_icon
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = true
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._feature_imgs_list
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L3_2 = 4
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.expand_panel_icon
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.safe_set_active
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L1_1._setup_item_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._special_event_data
  L2_2 = L2_2.SpecialCatRow
  L2_2 = L2_2.SpecialItem
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.ItemIconPath
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_mat
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mat_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._special_event_data
  L4_2 = L4_2.State
  L5_2 = L0_1.Get
  L4_2 = L4_2 ~= L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mat_unlock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._special_event_data
  L4_2 = L4_2.State
  L5_2 = L0_1.Get
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
end
L1_1._setup_material = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_result
  L4_2 = A0_2._special_event_data
  L4_2 = L4_2.SpecialCatRow
  L4_2 = L4_2.ImagePath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_result_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._special_event_data
  L3_2 = L3_2.State
  L4_2 = L0_1.Get
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_result_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._special_event_data
  L3_2 = L3_2.State
  L4_2 = L0_1.Get
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L1_1._setup_result = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_detail
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._setup_btn = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._special_event_data
  L3_2 = L3_2.SpecialEventRow
  L3_2 = L3_2.HintTip
  L1_2(L2_2, L3_2)
end
L1_1._setup_text = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = A0_2._transform
  L2_2 = L2_2.position
  L1_2.position = L2_2
end
L1_1._setup_position = L2_1
return L1_1
