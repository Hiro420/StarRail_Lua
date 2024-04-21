local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBarBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.DiscreteProgressBar"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarObtainPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_NewAvatarDropDialog_NewMember"
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._avatarRow
  if L1_2 == nil then
    L1_2 = nil
    return L1_2
  end
  L1_2 = A0_2._avatarRow
  L1_2 = L1_2.Rarity
  return L1_2
end
L0_1.get_rarity = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._avatarRow = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_avatar_cutin
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_damage_type
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_profession
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_cutin_job_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.AvatarCutinIntroText
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.AvatarName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_rarity_star
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_img_offset
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_avatar_cutin
  L5_2 = 1
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatarRow
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_avatar_cutin
  L4_2 = A0_2._avatarRow
  L4_2 = L4_2.AvatarCutinFrontImgPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_avatar_cutin = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatarRow
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.DamageTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatarRow
  L2_2 = L2_2.DamageType
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_damage_type_icon
  L5_2 = L1_2.DamageTypeIconPath
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_damage_type = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._avatarRow
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatarRow
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_profession_icon
  L5_2 = L1_2.BaseTypeIconSmall
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_profession_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.BaseTypeText
  L2_2(L3_2, L4_2)
end
L0_1._setup_profession = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rarity_stars_panel
  L3_2 = L2_2
  L2_2 = L2_2.rebind_child_node
  L4_2 = A1_2.Rarity
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.rarity_stars_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2.Rarity
  L4_2 = #L4_2
  L5_2 = A1_2.Rarity
  L5_2 = #L5_2
  L6_2 = A1_2.Rarity
  L6_2 = #L6_2
  L7_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._set_rarity_star = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2._avatarRow
  L3_2 = L3_2.AvatarDropOffset
  if L3_2 ~= nil then
    L4_2 = L3_2.Length
    L5_2 = A2_2 * 3
    L5_2 = L5_2 + 2
    if L4_2 > L5_2 then
      L4_2 = A2_2 * 3
      L4_2 = L4_2 + 0
      L4_2 = L3_2[L4_2]
      L5_2 = A2_2 * 3
      L5_2 = L5_2 + 1
      L5_2 = L3_2[L5_2]
      L6_2 = A2_2 * 3
      L6_2 = L6_2 + 2
      L6_2 = L3_2[L6_2]
      L7_2 = A1_2.transform
      L7_2 = L7_2.localPosition
      L8_2 = A1_2.transform
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.Vector3
      L10_2 = L6_2
      L11_2 = L6_2
      L12_2 = 1
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2.localScale = L9_2
      L8_2 = A1_2.transform
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.Vector3
      L10_2 = L4_2
      L11_2 = L5_2
      L12_2 = L7_2.z
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2.localPosition = L9_2
    end
  end
end
L0_1._setup_img_offset = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2._avatarRow
  if not L3_2 then
    return
  end
  L3_2 = A0_2._avatarRow
  L3_2 = L3_2.AvatarDropOffset
  if L3_2 ~= nil then
    L4_2 = L3_2.Length
    L5_2 = A2_2 * 3
    L5_2 = L5_2 + 2
    if L4_2 > L5_2 then
      L4_2 = A2_2 * 3
      L4_2 = L4_2 + 0
      L4_2 = L3_2[L4_2]
      L5_2 = A2_2 * 3
      L5_2 = L5_2 + 1
      L5_2 = L3_2[L5_2]
      L6_2 = A2_2 * 3
      L6_2 = L6_2 + 2
      L6_2 = L3_2[L6_2]
      L7_2 = A1_2.transform
      L7_2 = L7_2.localPosition
      L8_2 = A1_2.transform
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.Vector3
      L9_2 = L9_2.one
      L8_2.localScale = L9_2
      L8_2 = A1_2.transform
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.Vector3
      L10_2 = L7_2.x
      L10_2 = L10_2 - L4_2
      L11_2 = L7_2.y
      L11_2 = L11_2 - L5_2
      L12_2 = L7_2.z
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L8_2.localPosition = L9_2
    end
  end
end
L0_1._reset_img_offset = L2_1
return L0_1
