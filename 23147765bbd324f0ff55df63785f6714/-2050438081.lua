local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LightConeSmallContainerPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_lightcone
  L4_2 = A0_2._on_btn_onclick
  L1_2(L2_2, L3_2, L4_2)
  A0_2.origin_pos = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_lightcone
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_lightcone
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_lightcone
  L7_2 = L6_2
  L6_2 = L6_2.ClearAnimationState
  L6_2(L7_2)
  A0_2._equip_data = A1_2
  A0_2._avatar_data = A2_2
  A0_2._tab_item = A3_2
  A0_2._on_lightcone_tab = A4_2
  A0_2._avatar_ui3d = A5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_light_cone
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._equip_data
  L8_2 = L8_2 ~= nil
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_empty
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._equip_data
  L8_2 = L8_2 == nil
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_profession_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = A0_2._equip_data
  L8_2 = L8_2 ~= nil
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._equip_data
  if L6_2 ~= nil then
    L7_2 = A0_2
    L6_2 = A0_2._async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_light_cone
    L9_2 = A0_2._equip_data
    L9_2 = L9_2.EquipmentRow
    L9_2 = L9_2.ImagePath
    L6_2(L7_2, L8_2, L9_2)
    L7_2 = A0_2
    L6_2 = A0_2._set_icon_profession
    L6_2(L7_2)
    L7_2 = A0_2
    L6_2 = A0_2._set_profession_match
    L6_2(L7_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_light_cone
    L7_2 = A0_2._equip_data
    L7_2 = L7_2.EquipmentRow
    L7_2 = L7_2.AvatarDetailOffset
    if L7_2 ~= nil then
      L8_2 = L7_2.Length
      if L8_2 == 3 then
        L8_2 = L7_2[0]
        L9_2 = L7_2[1]
        L10_2 = L7_2[2]
        L11_2 = A0_2.origin_pos
        if L11_2 == nil then
          L11_2 = L6_2.transform
          L11_2 = L11_2.localPosition
          L12_2 = CS
          L12_2 = L12_2.UnityEngine
          L12_2 = L12_2.Vector3
          L13_2 = L11_2.x
          L14_2 = L11_2.y
          L15_2 = L11_2.z
          L12_2 = L12_2(L13_2, L14_2, L15_2)
          A0_2.origin_pos = L12_2
        end
        L11_2 = G
        L11_2 = L11_2.SuperDebug
        L11_2 = L11_2.LogFormatWithTag
        L12_2 = G
        L12_2 = L12_2.LogTag
        L12_2 = L12_2.UI
        L13_2 = "x_offset"
        L14_2 = L8_2
        L15_2 = "y_offset"
        L16_2 = L9_2
        L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2
        L11_2(L12_2, L13_2)
        L11_2 = L6_2.transform
        L12_2 = CS
        L12_2 = L12_2.UnityEngine
        L12_2 = L12_2.Vector3
        L13_2 = L10_2
        L14_2 = L10_2
        L15_2 = 1
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L11_2.localScale = L12_2
        L11_2 = L6_2.transform
        L12_2 = CS
        L12_2 = L12_2.UnityEngine
        L12_2 = L12_2.Vector3
        L13_2 = A0_2.origin_pos
        L13_2 = L13_2.x
        L13_2 = L13_2 + L8_2
        L14_2 = A0_2.origin_pos
        L14_2 = L14_2.y
        L14_2 = L14_2 + L9_2
        L15_2 = A0_2.origin_pos
        L15_2 = L15_2.z
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L11_2.localPosition = L12_2
      end
    end
  else
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_match
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_unmatch
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2._set_empty_bg_profession
    L6_2(L7_2)
  end
  L6_2 = A0_2._lightcone_show_callback_self
  if L6_2 then
    L6_2 = A0_2._lightcone_show_callback
    if L6_2 then
      L6_2 = A0_2._lightcone_show_callback
      L7_2 = A0_2._lightcone_show_callback_self
      L8_2 = A0_2._binder
      L8_2 = L8_2.btn_lightcone
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._lightcone_show_callback_self = A1_2
  A0_2._lightcone_show_callback = A2_2
end
L0_1.register_lightcone_show_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._equip_data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_lightcone_onclick
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_empty_onclick
    L1_2(L2_2)
  end
end
L0_1._on_btn_onclick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.LightCone.LightConeReplacePage"
  L3_2 = A0_2._equip_data
  L4_2 = A0_2._avatar_data
  L5_2 = A0_2._avatar_ui3d
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._avatar_ui3d
  if L1_2 then
    L1_2 = A0_2._avatar_ui3d
    L2_2 = L1_2
    L1_2 = L1_2.show_avatar_main_page_tab
    L3_2 = G
    L3_2 = L3_2.AvatarMainPageSubType
    L3_2 = L3_2.LightCone
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._owner
  L1_2.is_access_replace_page_from_avatar_tab = true
end
L0_1._on_btn_empty_onclick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._on_lightcone_tab
  L2_2 = A0_2._tab_item
  L1_2(L2_2)
end
L0_1._on_btn_lightcone_onclick = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._equip_data
  L2_2 = L2_2.EquipmentRow
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon_profession
  L5_2 = L1_2.BaseTypeIconSmall
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_profession_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.BaseTypeText
  L2_2(L3_2, L4_2)
end
L0_1._set_icon_profession = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_match
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AvatarBaseType
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.AvatarBaseType
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unmatch
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._avatar_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AvatarBaseType
  L4_2 = A0_2._equip_data
  L4_2 = L4_2.EquipmentRow
  L4_2 = L4_2.AvatarBaseType
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
end
L0_1._set_profession_match = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_empty_profession
  L5_2 = L1_2.BaseTypeIcon
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._set_empty_bg_profession = L1_1
return L0_1
