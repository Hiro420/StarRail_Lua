local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAvatarInfoPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_detail
  L4_2 = A0_2._on_btn_avatar_detail
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._avatar_id = A1_2
  if A1_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._setup_avatar_info
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._detail_callback = A1_2
  A0_2._detail_callback_self = A2_2
end
L0_1.register_detail_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "avatar Config not found! avatar id: "
    L5_2 = A1_2
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    return
  end
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
  if L2_2 ~= nil then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_avatar_name
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L2_2.AvatarName
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.promotion_stars_panel
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = L2_2.Rarity
    L7_2 = #L7_2
    L8_2 = L2_2.Rarity
    L8_2 = #L8_2
    L9_2 = L2_2.Rarity
    L9_2 = #L9_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
  if L3_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_damage_type
    L8_2 = L3_2.DamageTypeIconPath
    L5_2(L6_2, L7_2, L8_2)
  end
  if L4_2 ~= nil then
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_profession_icon
    L8_2 = L4_2.BaseTypeIconSmall
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_profession_name
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L4_2.BaseTypeText
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_avatar_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._detail_callback
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._detail_callback
    L3_2 = A0_2._detail_callback_self
    L4_2 = A0_2._avatar_id
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = A0_2._avatar_id
  if L1_2 ~= nil then
    L1_2 = A0_2._avatar_id
    if 0 < L1_2 then
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_show
      L2_2 = "Ui.Gacha.GachaDetail.GachaAvatarDetailPage"
      L3_2 = A0_2._avatar_id
      L4_2 = false
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_btn_avatar_detail = L1_1
return L0_1
