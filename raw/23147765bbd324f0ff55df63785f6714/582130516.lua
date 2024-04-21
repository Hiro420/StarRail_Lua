local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RewardPreview.RewardChoiceShowItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RewardChoiceShowItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._reward_id = 0
  A0_2._display_item = nil
  L1_2 = {}
  A0_2._star_nodes = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
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
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._reward_id = A1_2
  A0_2._count = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._init_panels
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_reward_view
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTable
  L2_2 = A0_2._reward_id
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2[1]
  A0_2._display_item = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._display_item
  L3_2 = L3_2.ItemID
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_display_item_view_by_type
  L5_2 = L2_2
  L6_2 = A0_2._display_item
  L6_2 = L6_2.Count
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_common_part
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_reward_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.star_loader
  L3_2 = #A1_2
  L4_2 = 1
  L5_2 = L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L9_2 = A0_2
    L8_2 = A0_2.instantiate_object
    L10_2 = L2_2.Prefab
    L11_2 = L2_2.transform
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._star_nodes
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L4_2 = ipairs
  L5_2 = A0_2._star_nodes
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L10_2 = L8_2
    L9_2 = L8_2.SafeSetActive
    L11_2 = L7_2 <= L3_2
    L9_2(L10_2, L11_2)
  end
end
L0_1._setup_star_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._display_item
  L4_2 = L4_2.ItemID
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_click = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = nil
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemRarityConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    return
  end
  if A2_2 then
    L3_2 = L4_2.AvatarShowBgPath
  else
    L3_2 = L4_2.ItemShowBgPath
  end
  if L3_2 == nil then
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogErrorFormat
    L6_2 = "Can't find related bg img, please check."
    L5_2(L6_2)
    return
  end
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.rare_bg_img
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._setup_rare_bg = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_img_node
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_img_node
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.path_img
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.multiple_operator_txt
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.num_or_path_txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._init_panels = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = nil
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemMainType
  L4_2 = L4_2.Equipment
  if A2_2 == L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.EquipmentExcelTable
    L4_2 = L4_2.GetData
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2.AvatarBaseType
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ItemMainType
    L4_2 = L4_2.AvatarCard
    if A2_2 == L4_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.AvatarExcelTable
      L4_2 = L4_2.GetData
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2.AvatarBaseType
    end
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarBaseTypeExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.num_or_path_txt
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.BaseTypeText
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.path_img
  L5_2 = L5_2.gameObject
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.path_img
  L8_2 = L4_2.BaseTypeIconSmall
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._setup_path_info = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.multiple_operator_txt
  L2_2 = L2_2.gameObject
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.multiple_operator_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_OptionalReward_RewardCount"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.num_or_path_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_num_info = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.ItemMainType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemMainType
  L4_2 = L4_2.AvatarCard
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_rare_bg
    L5_2 = A1_2.Rarity
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.avatar_img_node
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.avatar_img
    L6_2 = A1_2.ItemAvatarIconPath
    L3_2(L4_2, L5_2, L6_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_path_info
    L5_2 = A1_2.ID
    L6_2 = A1_2.ItemMainType
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = A1_2.ItemMainType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ItemMainType
    L4_2 = L4_2.Equipment
    if L3_2 == L4_2 then
      L4_2 = A0_2
      L3_2 = A0_2._setup_rare_bg
      L5_2 = A1_2.Rarity
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.EquipmentExcelTable
      L3_2 = L3_2.GetData
      L4_2 = A1_2.ID
      L3_2 = L3_2(L4_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.item_img_node
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = true
      L4_2(L5_2, L6_2)
      L5_2 = A0_2
      L4_2 = A0_2._async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.item_img
      L7_2 = L3_2.ThumbnailPath
      L4_2(L5_2, L6_2, L7_2)
      L5_2 = A0_2
      L4_2 = A0_2._setup_path_info
      L6_2 = A1_2.ID
      L7_2 = A1_2.ItemMainType
      L4_2(L5_2, L6_2, L7_2)
    else
      L3_2 = A1_2.ItemMainType
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.ItemMainType
      L4_2 = L4_2.Material
      if L3_2 == L4_2 then
        L4_2 = A0_2
        L3_2 = A0_2._setup_rare_bg
        L5_2 = A1_2.Rarity
        L6_2 = false
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.item_img_node
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = true
        L3_2(L4_2, L5_2)
        L4_2 = A0_2
        L3_2 = A0_2._async_load_sprite_to
        L5_2 = A0_2._binder
        L5_2 = L5_2.item_img
        L6_2 = A1_2.ItemIconPath
        L3_2(L4_2, L5_2, L6_2)
        L4_2 = A0_2
        L3_2 = A0_2._setup_num_info
        L5_2 = A2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = G
        L3_2 = L3_2.SuperDebug
        L3_2 = L3_2.LogErrorFormat
        L4_2 = "Type of this choice-chest is not supported yet, please check."
        L3_2(L4_2)
      end
    end
  end
end
L0_1._setup_display_item_view_by_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.name_txt
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.ItemName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_star_view
  L4_2 = A1_2.Rarity
  L2_2(L3_2, L4_2)
end
L0_1._setup_common_part = L1_1
return L0_1
