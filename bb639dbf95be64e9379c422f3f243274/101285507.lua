local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ConstValueCommonExcelTable
L0_1 = L0_1.GetData
L1_1 = "MultiPurpose_PathMaterial_ItemID"
L0_1 = L0_1(L1_1)
L0_1 = L0_1.Value
L0_1 = L0_1.IntValue
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "AdditionalMaterialCostPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = L0_1
  A0_2._item_id = L3_2
  A0_2._item_num = 0
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._callback = nil
  A0_2._callback_handler = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._material_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_desc_text
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_img
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_key_map_info
  L2_2(L3_2)
  L2_2 = A0_2._material_data
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._refresh
    L2_2(L3_2)
  end
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_handler
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_root = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ItemFactory
  L1_2 = L1_2.CreateItemData
  L2_2 = A0_2._item_id
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.ItemIconPath
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_mat
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L2_1._setup_img = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_CommonPathMaterial_UseInfo_Label"
  L1_2(L2_2, L3_2)
end
L2_1._setup_desc_text = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_coin_multi
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "\195\151"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_coin_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._item_num
  L1_2(L2_2, L3_2)
end
L2_1._setup_coin_num_text = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.key_map_info
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_in_control_btn
  L1_2.MonoInControlButton = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SetInControlTipKey
  L3_2 = "Menu_UnchangeBack"
  L1_2(L2_2, L3_2)
end
L2_1._setup_key_map_info = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_handler = A2_2
end
L2_1.register_select_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_coin_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_selected = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._item_num
  return L1_2
end
L2_1.get_item_num = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._item_id
  return L1_2
end
L2_1.get_item_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._calculate_need_additional_material_num
  L1_2 = L1_2(L2_2)
  A0_2._item_num = L1_2
  L1_2 = A0_2._item_num
  if L1_2 <= 0 then
    L2_2 = A0_2
    L1_2 = A0_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_additional_material_enough
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_coin_num_text
    L1_2(L2_2)
  end
end
L2_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetItemCountByConfigID
  L3_2 = A0_2._item_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = false
    return L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._set_state
    L4_2 = A0_2._item_num
    L4_2 = L1_2 >= L4_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._item_num
    L2_2 = L1_2 >= L2_2
    return L2_2
  end
end
L2_1._is_additional_material_enough = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = A0_2._material_data
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._material_data
    L6_2 = L6_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.ItemFactory
    L7_2 = L7_2.CreateItemData
    L8_2 = L6_2.ID
    L7_2 = L7_2(L8_2)
    L8_2 = G
    L8_2 = L8_2.UtilEngineWrap
    L8_2 = L8_2.ConvCsEnumToNum
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ItemPurposeType
    L9_2 = L9_2.ItemPurposeType_3
    L8_2 = L8_2(L9_2)
    L9_2 = L7_2.Row
    L9_2 = L9_2.PurposeType
    if L9_2 == L8_2 then
      L9_2 = L1_1
      L10_2 = L9_2
      L9_2 = L9_2.GetItemCountByConfigID
      L11_2 = L6_2.ID
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = L7_2.Rarity
      L11_2 = string
      L11_2 = L11_2.format
      L12_2 = "MultiPurpose_Exchange_PathMaterial_Rare%d"
      L13_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.GameCore
      L12_2 = L12_2.ConstValueCommonExcelTable
      L12_2 = L12_2.GetData
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      L12_2 = L12_2.Value
      L12_2 = L12_2.IntValue
      L13_2 = L6_2.Num
      L13_2 = L13_2 - L9_2
      L1_2 = L13_2 * L12_2
      break
    end
  end
  return L1_2
end
L2_1._calculate_need_additional_material_num = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1._set_state = L3_1
return L2_1
