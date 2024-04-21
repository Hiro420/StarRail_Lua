local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradePageMaterialPanelSingleItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritMain.AetherSpiritUpgrade.AetherSpiritUpgradePageMaterialPanelSingleItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritUpgradePageMaterialPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_load_material
  L3_2 = L3_2.MultiPrefabList
  L3_2 = L3_2[0]
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_load_material
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._prefab_common = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.AetherSpiritUpgradePageMaterialPanelSingleItem
  L4_2 = G
  L4_2 = L4_2.AetherSpiritUpgradePageMaterialPanelSingleItemBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._common_mat_panel = L1_2
  L1_2 = A0_2._common_mat_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_click_item
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._common_mat_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_minus_callback
  L3_2 = A0_2._on_click_minus
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._common_mat_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._prefab_common
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Convert
  L1_2 = L1_2.ToUInt32
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AetherDivideConstCommonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "AetherDivide_CommonExp"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L1_2 = L1_2(L2_2)
  A0_2._common_mat_id = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ItemFactory
  L1_2 = L1_2.CreateItemData
  L2_2 = A0_2._common_mat_id
  L1_2 = L1_2(L2_2)
  A0_2._common_mat_data = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._common_mat_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_count
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._material_selected
  L2_2 = A0_2._common_mat_id
  L1_2[L2_2] = 0
  L1_2 = A0_2._material_selected
  L2_2 = A0_2._spirit_frag_id
  L1_2[L2_2] = 0
end
L0_1.reset_selected_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._material_selected
  L2_2 = A0_2._common_mat_id
  L1_2 = L1_2[L2_2]
  return L1_2
end
L0_1.get_common_mat_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._material_selected
  L2_2 = A0_2._spirit_frag_id
  L1_2 = L1_2[L2_2]
  return L1_2
end
L0_1.get_spirit_frag_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._common_mat_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_count
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._material_selected
  L3_2 = A0_2._common_mat_id
  L2_2[L3_2] = A1_2
end
L0_1.setup_common_panel_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._material_selected
  L3_2 = A0_2._spirit_frag_id
  L2_2[L3_2] = A1_2
end
L0_1.setup_spirit_frag_panel_count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._spirit_data = A1_2
  L2_2 = {}
  A0_2._material_selected = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_common_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_fragment_panel
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._common_mat_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._common_mat_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._material_selected
  L2_2 = A0_2._common_mat_id
  L1_2[L2_2] = 0
end
L0_1._setup_common_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._spirit_data
  L1_2 = L1_2.ExpItemID
  A0_2._spirit_frag_id = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ItemFactory
  L1_2 = L1_2.CreateItemData
  L2_2 = A0_2._spirit_frag_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._material_selected
  L3_2 = A0_2._spirit_frag_id
  L2_2[L3_2] = 0
end
L0_1._setup_fragment_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2._material_selected
  L4_2 = A1_2.ConfigID
  L3_2 = L3_2[L4_2]
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.InventoryModule
  L5_2 = L4_2
  L4_2 = L4_2.GetItemCountByConfigID
  L6_2 = A1_2.ConfigID
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L3_2 + 1
  if L4_2 < L5_2 then
    return
  end
  L5_2 = A0_2._spirit_data
  L6_2 = L5_2
  L5_2 = L5_2.GetNeedExpToPromotion
  L7_2 = A0_2._spirit_data
  L7_2 = L7_2.MaxPromotion
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2._material_selected
  L7_2 = A0_2._common_mat_id
  L6_2 = L6_2[L7_2]
  L7_2 = A0_2._material_selected
  L8_2 = A0_2._spirit_frag_id
  L7_2 = L7_2[L8_2]
  L6_2 = L6_2 + L7_2
  L6_2 = L6_2 + 1
  if L5_2 < L6_2 then
    L7_2 = G
    L7_2 = L7_2.NotifyManager
    L7_2 = L7_2.notify
    L8_2 = G
    L8_2 = L8_2.CS
    L8_2 = L8_2.NotifyType
    L8_2 = L8_2.UIPileToastMessageTextID
    L9_2 = "UIText_Relic_Upgrade_LevelMax_Info"
    L7_2(L8_2, L9_2)
    return
  end
  L7_2 = A0_2._material_selected
  L8_2 = A1_2.ConfigID
  L9_2 = L3_2 + 1
  L7_2[L8_2] = L9_2
  L8_2 = A2_2
  L7_2 = A2_2.set_count
  L9_2 = A0_2._material_selected
  L10_2 = A1_2.ConfigID
  L9_2 = L9_2[L10_2]
  L7_2(L8_2, L9_2)
  L8_2 = A0_2
  L7_2 = A0_2._update_selected_material_info
  L7_2(L8_2)
end
L0_1._on_click_item = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._material_selected
  L4_2 = A1_2.ConfigID
  L3_2 = L3_2[L4_2]
  if L3_2 <= 0 then
    return
  end
  L4_2 = A0_2._material_selected
  L5_2 = A1_2.ConfigID
  L6_2 = L3_2 - 1
  L4_2[L5_2] = L6_2
  L5_2 = A2_2
  L4_2 = A2_2.set_count
  L6_2 = A0_2._material_selected
  L7_2 = A1_2.ConfigID
  L6_2 = L6_2[L7_2]
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._update_selected_material_info
  L4_2(L5_2)
end
L0_1._on_click_minus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._material_selected
      L4_2 = A0_2._common_mat_id
      L3_2 = L3_2[L4_2]
      L4_2 = A0_2._material_selected
      L5_2 = A0_2._spirit_frag_id
      L4_2 = L4_2[L5_2]
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._update_selected_material_info = L1_1
return L0_1
