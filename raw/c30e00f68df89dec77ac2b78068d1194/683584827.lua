local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaLightConeItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "SpriteOutput/UI/Drawcard/FrameLightConeRarity03.png"
L2_1 = "SpriteOutput/UI/Drawcard/FrameLightConeRarity04.png"
L3_1 = "SpriteOutput/UI/Drawcard/FrameLightConeRarity05.png"
function L4_1(A0_2)
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
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._gacha_item_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_new_mark
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_profession
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_light_cone_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_rarity_effect
  L2_2(L3_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L2_2.interactable = A1_2
end
L0_1.set_interactive = L4_1
function L4_1(A0_2, A1_2)
  A0_2._button_mutex = A1_2
end
L0_1.set_button_mutex = L4_1
function L4_1(A0_2)
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
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.ItemFactory
    L0_3 = L0_3.CreateEquipmentItemData
    L1_3 = A0_2._gacha_item_data
    L1_3 = L1_3.EquipmentRow
    L1_3 = L1_3.EquipmentID
    L0_3 = L0_3(L1_3)
    L1_3 = G
    L1_3 = L1_3.UIManager
    L1_3 = L1_3.load_and_show
    L2_3 = "Ui.Gacha.GachaDetail.GachaLightConeDetailPage"
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_detail_btn_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._gacha_item_data
  L1_2 = L1_2.IsNew
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_new_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_new_mark = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._gacha_item_data
  L1_2 = L1_2.EquipmentRow
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_light_cone_bg_icon
  L5_2 = L1_2.ImagePath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L1_2.Rarity
  L3_2 = A0_2._binder
  L3_2 = L3_2.promotion_stars_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = #L2_2
  L6_2 = #L2_2
  L7_2 = #L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_light_cone_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
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
  L1_2 = L1_2.EquipmentRow
  L2_2 = L1_2.Rarity
  L2_2 = #L2_2
  if L2_2 == 3 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_rarity3
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
      L5_2 = L2_1
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
        L5_2 = L3_1
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1._setup_rarity_effect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._gacha_item_data
  L1_2 = L1_2.EquipmentRow
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarBaseTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.AvatarBaseType
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_profession_icon
  L6_2 = L2_2.BaseTypeIcon
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_profession = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_light_cone_bg_icon
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_light_cone_shadow_icon
  L3_2 = A0_2._gacha_item_data
  L3_2 = L3_2.EquipmentRow
  L3_2 = L3_2.GachaResultOffset
  if L3_2 ~= nil then
    L4_2 = L3_2.Length
    if L4_2 == 3 then
      L4_2 = L3_2[0]
      L5_2 = L3_2[1]
      L6_2 = L3_2[2]
      L7_2 = A0_2.origin_pos
      if L7_2 == nil then
        L7_2 = L1_2.transform
        L7_2 = L7_2.localPosition
        L8_2 = CS
        L8_2 = L8_2.UnityEngine
        L8_2 = L8_2.Vector3
        L9_2 = L7_2.x
        L10_2 = L7_2.y
        L11_2 = L7_2.z
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        A0_2.origin_pos = L8_2
      end
      L7_2 = L1_2.transform
      L8_2 = CS
      L8_2 = L8_2.UnityEngine
      L8_2 = L8_2.Vector3
      L9_2 = L6_2
      L10_2 = L6_2
      L11_2 = 1
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2.localScale = L8_2
      L7_2 = L1_2.transform
      L8_2 = CS
      L8_2 = L8_2.UnityEngine
      L8_2 = L8_2.Vector3
      L9_2 = A0_2.origin_pos
      L9_2 = L9_2.x
      L9_2 = L9_2 + L4_2
      L10_2 = A0_2.origin_pos
      L10_2 = L10_2.y
      L10_2 = L10_2 + L5_2
      L11_2 = A0_2.origin_pos
      L11_2 = L11_2.z
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2.localPosition = L8_2
      L7_2 = A0_2.origin_shadow_pos
      if L7_2 == nil then
        L7_2 = L2_2.transform
        L7_2 = L7_2.localPosition
        L8_2 = CS
        L8_2 = L8_2.UnityEngine
        L8_2 = L8_2.Vector3
        L9_2 = L7_2.x
        L10_2 = L7_2.y
        L11_2 = L7_2.z
        L8_2 = L8_2(L9_2, L10_2, L11_2)
        A0_2.origin_shadow_pos = L8_2
      end
      L7_2 = L2_2.transform
      L8_2 = CS
      L8_2 = L8_2.UnityEngine
      L8_2 = L8_2.Vector3
      L9_2 = L6_2
      L10_2 = L6_2
      L11_2 = 1
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2.localScale = L8_2
      L7_2 = L2_2.transform
      L8_2 = CS
      L8_2 = L8_2.UnityEngine
      L8_2 = L8_2.Vector3
      L9_2 = A0_2.origin_shadow_pos
      L9_2 = L9_2.x
      L9_2 = L9_2 + L4_2
      L10_2 = A0_2.origin_shadow_pos
      L10_2 = L10_2.y
      L10_2 = L10_2 + L5_2
      L11_2 = A0_2.origin_shadow_pos
      L11_2 = L11_2.z
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2.localPosition = L8_2
    end
  end
end
L0_1._setup_img_offset = L4_1
return L0_1
