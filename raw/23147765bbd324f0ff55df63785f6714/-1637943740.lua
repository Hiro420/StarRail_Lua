local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooMutateMaterialPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.SpaceZooModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._long_press_item
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_root_btn = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._listener = A2_2
end
L0_1.set_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  A0_2._material_item_id = A1_2
  A0_2._cat_data = A2_2
  A0_2._index = A3_2
  if A1_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2._setup_unlock_state
    L6_2 = false
    L4_2(L5_2, L6_2)
    return
  end
  A0_2._is_unlock = true
  L5_2 = A0_2
  L4_2 = A0_2._setup_material_view
  L4_2(L5_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_select = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._is_collect
  if L1_2 then
    L1_2 = A0_2._is_unlock
  end
  return L1_2
end
L0_1.is_show_unlock_tip = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.SpaceZooMutationMaterialExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._material_item_id
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_item_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_collection_state
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_material_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_unlock = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_unlock_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_collection_state
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_collect
  L1_2(L2_2, L3_2)
end
L0_1._setup_collection_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.SpaceZooMutationMaterialExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._material_item_id
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.ChangeFeatureList
  if L2_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.ChangeFeatureList
    L3_2 = L3_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L1_2.ChangeFeatureList
      L6_2 = L6_2[L5_2]
      L7_2 = L2_1.SpaceZooData
      L8_2 = L7_2
      L7_2 = L7_2.GetFeatureData
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 ~= nil then
        L8_2 = L7_2.IsUnlock
        if not L8_2 then
          A0_2._is_collect = true
          return
        end
      end
    end
  end
  A0_2._is_collect = false
end
L0_1._refresh_collection_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._material_item_id
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemCountByConfigID
  L4_2 = A0_2._material_item_id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_item_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._material_item_id
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._material_item_id
  L2_2(L3_2, L4_2)
end
L0_1._long_press_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._listener
  L4_2 = A0_2._index
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L3_1
return L0_1
