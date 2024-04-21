local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OptionAvatarRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._selected_callback
    L2_3 = A0_2._selected_callback_self
    L3_3 = A0_2._avatar_id
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._avatar_id = A1_2
  if A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._setup_avatar_info
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2._setup_rare_bg
    L5_2 = L2_2.Rarity
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._selected_callback = A1_2
  A0_2._selected_callback_self = A2_2
end
L0_1.register_selected_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.DamageTypeExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.DamageType
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarBaseTypeExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L2_2.AvatarBaseType
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.ItemExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if L2_2 ~= nil then
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_avatar_name
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = L2_2.AvatarName
    L6_2(L7_2, L8_2)
    L6_2 = L2_2.Rarity
    L6_2 = #L6_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.rarity_stars_panel
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = L6_2
    L10_2 = L6_2
    L11_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_damage_type
  L9_2 = L3_2.DamageTypeIconPath
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_profession_icon
  L9_2 = L4_2.BaseTypeIconSmall
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_profession_name
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L4_2.BaseTypeText
  L6_2(L7_2, L8_2)
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_avatar
  L9_2 = L5_2.ItemAvatarIconPath
  L6_2(L7_2, L8_2, L9_2)
end
L0_1._setup_avatar_info = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemRarityConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_rare_bg
  L6_2 = L2_2.AvatarShowBgPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_rare_bg = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._avatar_id
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_root = L1_1
return L0_1
