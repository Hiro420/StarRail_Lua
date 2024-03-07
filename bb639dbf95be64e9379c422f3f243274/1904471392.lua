local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardOptionItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "BattlePassRewardOptionItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._reward_id = 0
  A0_2._is_selected = false
  A0_2._count = 1
  L1_2 = {}
  A0_2._reward_item_ids = L1_2
  L1_2 = {}
  A0_2._simple_star_nodes = L1_2
  L1_2 = {}
  A0_2._lightcone_star_nodes = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_long_press
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L1_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._detail_callback = A1_2
  A0_2._detail_handler = A2_2
end
L1_1.register_detail_callback = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2._reward_id = A1_2
  A0_2._is_selected = A2_2
  A0_2._count = A3_2
  A0_2._index = A4_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_reward_view
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_selection_view
  L5_2(L6_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTable
  L2_2 = A0_2._reward_id
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2[1]
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.ItemID
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_node_based_on_item
  L6_2 = L3_2.ItemMainType
  L4_2(L5_2, L6_2)
  L4_2 = {}
  L5_2 = L2_2.ItemID
  L4_2[1] = L5_2
  A0_2._reward_item_ids = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._img
  L7_2 = L3_2.ItemIconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._txt_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.ItemName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._txt_count
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_2.Count
  L7_2 = A0_2._count
  L6_2 = L6_2 * L7_2
  L4_2(L5_2, L6_2)
  L4_2 = L3_2.ItemMainType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemMainType
  L5_2 = L5_2.Equipment
  if L4_2 == L5_2 then
    L4_2 = A0_2._txt_count
    L4_2 = L4_2.transform
    L4_2 = L4_2.parent
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._avatar_base_type_icon
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._setup_avatar_base_type
    L6_2 = L2_2.ItemID
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._txt_count
    L4_2 = L4_2.transform
    L4_2 = L4_2.parent
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._txt_bottom
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = "UIText_OptionalReward_RewardCount"
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._avatar_base_type_icon
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._img_bg2
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L3_2.Rarity
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemRarity
    L7_2 = L7_2.VeryRare
    L6_2 = L6_2 == L7_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._img_bg
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L3_2.Rarity
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemRarity
    L7_2 = L7_2.Rare
    L6_2 = L6_2 == L7_2
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_star_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._node_selected
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L1_1._setup_reward_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = nil
  L3_2 = nil
  L4_2 = A1_2.ItemMainType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemMainType
  L5_2 = L5_2.Equipment
  if L4_2 == L5_2 then
    L2_2 = A0_2._lightcone_star_nodes
    L4_2 = A0_2._binder
    L3_2 = L4_2.loader_lightcone_star
  else
    L2_2 = A0_2._simple_star_nodes
    L4_2 = A0_2._binder
    L3_2 = L4_2.loader_simple_star
  end
  L4_2 = A1_2.Rarity
  L4_2 = #L4_2
  L5_2 = #L2_2
  L5_2 = L5_2 + 1
  L6_2 = L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L10_2 = A0_2
    L9_2 = A0_2.instantiate_object
    L11_2 = L3_2.Prefab
    L12_2 = L3_2.transform
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
  end
  L5_2 = ipairs
  L6_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L11_2 = L9_2
    L10_2 = L9_2.SafeSetActive
    L12_2 = L8_2 <= L4_2
    L10_2(L11_2, L12_2)
  end
end
L1_1._setup_star_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._node_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_selected
  L1_2(L2_2, L3_2)
end
L1_1._setup_selection_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._reward_id
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Common.ItemDetailDialog"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = A0_2._reward_item_ids
  L4_2 = L4_2[1]
  L2_2(L3_2, L4_2)
end
L1_1._on_btn_long_press = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L1_1._on_in_control_action_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._reward_item_ids
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.Utils
      L1_2 = L1_2.invoke_callback
      L2_2 = A0_2._detail_callback
      L3_2 = A0_2._detail_handler
      L4_2 = A0_2._index
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L1_1._on_left_stick_button_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EquipmentExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = A0_2._txt_bottom
    L3_2 = L3_2.transform
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarBaseTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.AvatarBaseType
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    L4_2 = A0_2._txt_bottom
    L4_2 = L4_2.transform
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = A0_2._txt_bottom
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.BaseTypeText
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._load_sprite_to
  L6_2 = A0_2._avatar_base_type_icon
  L7_2 = L3_2.BaseTypeIconSmall
  L4_2(L5_2, L6_2, L7_2)
end
L1_1._setup_avatar_base_type = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_node
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemMainType
  L4_2 = L4_2.Equipment
  L4_2 = A1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.equipment_node
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemMainType
  L4_2 = L4_2.Equipment
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemMainType
  L2_2 = L2_2.Equipment
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn
    A0_2._btn = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_selected
    A0_2._node_selected = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_bg
    A0_2._img_bg = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_bg2
    A0_2._img_bg2 = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.equipment_img
    A0_2._img = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.equipment_txt_name
    A0_2._txt_name = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.equipment_txt_bottom
    A0_2._txt_bottom = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.equipment_txt_count
    A0_2._txt_count = L2_2
    L2_2 = A0_2._txt_count
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.avatar_base_type_icon
    A0_2._avatar_base_type_icon = L2_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn
    A0_2._btn = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_selected
    A0_2._node_selected = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_bg
    A0_2._img_bg = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_bg2
    A0_2._img_bg2 = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.img
    A0_2._img = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_name
    A0_2._txt_name = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_bottom
    A0_2._txt_bottom = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_count
    A0_2._txt_count = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.avatar_base_type_icon
    A0_2._avatar_base_type_icon = L2_2
  end
end
L1_1._setup_node_based_on_item = L2_1
return L1_1
