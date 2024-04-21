local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.RedDotNew"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.RedDotNewBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaAvatarItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/UI/Drawcard/ImgAvatarRarity04.png"
L2_1 = "SpriteOutput/UI/Drawcard/ImgAvatarRarity05.png"
L3_1 = "SpriteOutput/UI/Drawcard/FrameLightConeRarity04.png"
L4_1 = "SpriteOutput/UI/Drawcard/FrameLightConeRarity05.png"
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.interactable = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_detail_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._gacha_item_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_new_mark
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_convert_item
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_damage_type
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatar_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_rarity_effect
  L2_2(L3_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.interactable = A1_2
end
L0_1.set_interactive = L5_1
function L5_1(A0_2, A1_2)
  A0_2._button_mutex = A1_2
end
L0_1.set_button_mutex = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ButtonMutex
  L1_2 = L1_2.click_mutex
  L2_2 = A0_2._button_mutex
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._gacha_item_data
    if L0_3 == nil then
      return
    end
    L0_3 = G
    L0_3 = L0_3.UIManager
    L0_3 = L0_3.load_and_show
    L1_3 = "Ui.Gacha.GachaDetail.GachaAvatarDetailPage"
    L2_3 = A0_2._gacha_item_data
    L2_3 = L2_3.AvatarRow
    L2_3 = L2_3.AvatarID
    L3_3 = false
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_detail_btn_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._gacha_item_data
  L3_2 = L3_2.IsNew
  L1_2(L2_2, L3_2)
end
L0_1._setup_new_mark = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._gacha_item_data
  L1_2 = L1_2.AvatarRow
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_avatar_bg_icon
  L5_2 = L1_2.AvatarGachaResultImgPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.promotion_stars_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2.Rarity
  L4_2 = #L4_2
  L5_2 = L1_2.Rarity
  L5_2 = #L5_2
  L6_2 = L1_2.Rarity
  L6_2 = #L6_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_avatar_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rarity3
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rarity4
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rarity5
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._gacha_item_data
  L1_2 = L1_2.AvatarRow
  L2_2 = L1_2.Rarity
  L2_2 = #L2_2
  if L2_2 == 3 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_rarity3
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = L1_2.Rarity
    L2_2 = #L2_2
    if L2_2 == 4 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_rarity4
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2._async_load_sprite_to
      L4_2 = A0_2._binder
      L4_2 = L4_2.img_bg
      L5_2 = L1_1
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = L1_2.Rarity
      L2_2 = #L2_2
      if L2_2 == 5 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_rarity5
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
        L3_2 = A0_2
        L2_2 = A0_2._async_load_sprite_to
        L4_2 = A0_2._binder
        L4_2 = L4_2.img_bg
        L5_2 = L2_1
        L2_2(L3_2, L4_2, L5_2)
        L3_2 = A0_2
        L2_2 = A0_2._async_load_sprite_to
        L4_2 = A0_2._binder
        L4_2 = L4_2.img_bg_shadow
        L5_2 = L2_1
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1._setup_rarity_effect = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._gacha_item_data
  L2_2 = L1_2
  L1_2 = L1_2.HaveConvertItem
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._gacha_item_data
    L2_2 = L1_2
    L1_2 = L1_2.HaveAdditionalItem
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      goto lbl_49
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_convert_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._get_convert_addtional_merged_item
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  L3_2 = 1
  L4_2 = -1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L8_2 = A0_2
    L7_2 = A0_2.instantiate_object
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_convert_item
    L9_2 = L9_2.Prefab
    L10_2 = A0_2._binder
    L10_2 = L10_2.node_convert_item
    L10_2 = L10_2.transform
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.RewardItemIconLite
    L11_2 = G
    L11_2 = L11_2.RewardItemIconLiteBinder
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.setup_view_without_callback
    L11_2 = L6_2.ItemID
    L12_2 = L6_2.ItemNum
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = L8_2
    L9_2 = L8_2.set_highlight_display
    L11_2 = true
    L9_2(L10_2, L11_2)
  end
  goto lbl_54
  ::lbl_49::
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_convert_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  ::lbl_54::
end
L0_1._setup_convert_item = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2._gacha_item_data
  if L2_2 == nil then
    return L1_2
  end
  L2_2 = A0_2._gacha_item_data
  L3_2 = L2_2
  L2_2 = L2_2.HaveConvertItem
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = 0
    L3_2 = A0_2._gacha_item_data
    L3_2 = L3_2.ConvertItems
    L3_2 = L3_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = {}
      L7_2 = A0_2._gacha_item_data
      L7_2 = L7_2.ConvertItems
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.ItemID
      L6_2.ItemID = L7_2
      L7_2 = A0_2._gacha_item_data
      L7_2 = L7_2.ConvertItems
      L7_2 = L7_2[L5_2]
      L7_2 = L7_2.ItemNum
      L6_2.ItemNum = L7_2
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L1_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
  L2_2 = A0_2._gacha_item_data
  L3_2 = L2_2
  L2_2 = L2_2.HaveAdditionalItem
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = 0
    L3_2 = A0_2._gacha_item_data
    L3_2 = L3_2.AdditionalItems
    L3_2 = L3_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._gacha_item_data
      L6_2 = L6_2.AdditionalItems
      L6_2 = L6_2[L5_2]
      L8_2 = A0_2
      L7_2 = A0_2._get_item_config
      L9_2 = L1_2
      L10_2 = L6_2.ItemID
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      if L7_2 then
        L8_2 = L7_2.ItemNum
        L9_2 = L6_2.ItemNum
        L8_2 = L8_2 + L9_2
        L7_2.ItemNum = L8_2
      else
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  return L1_2
end
L0_1._get_convert_addtional_merged_item = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ItemID
    if L8_2 == A2_2 then
      return L7_2
    end
  end
  L3_2 = nil
  return L3_2
end
L0_1._get_item_config = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._gacha_item_data
  L1_2 = L1_2.AvatarRow
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DamageTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.DamageType
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_damage_type_icon
  L6_2 = L2_2.DamageTypeIconPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_damage_type_icon_shadow
  L6_2 = L2_2.DamageTypeIconPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_damage_type = L5_1
return L0_1
