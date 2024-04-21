local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaConvertItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaConvertItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaObtainAvatarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.add_hide_nodes_on_sharing
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_additional_item_panel
  L3_2 = L3_2._binder
  L3_2 = L3_2.root
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_convert
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_convert
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_additional_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._gacha_item_data = A1_2
  L2_2 = A0_2._gacha_item_data
  L2_2 = L2_2.AvatarRow
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_obtain_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_avatar_additional_item_panel
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_new_avatar_hint
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_convert_item
  L3_2(L4_2)
  L3_2 = L2_2.Rarity
  L3_2 = #L3_2
  if L3_2 == 5 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AvatarBaseTypeExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2.AvatarBaseType
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2._load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_eff_r5
    L7_2 = L3_2.BaseTypeIcon
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._gacha_item_data
  L2_2 = L1_2
  L1_2 = L1_2.HaveAdditionalItem
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.avatar_additional_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._gacha_item_data
    L1_2 = L1_2.AdditionalItems
    L1_2 = L1_2[0]
    L2_2 = A0_2._binder
    L2_2 = L2_2.avatar_additional_item_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.avatar_additional_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._gacha_item_data
  L1_2 = L1_2.ConvertItems
  L1_2 = L1_2.Length
  L2_2 = 0
  L3_2 = L1_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._gacha_item_data
    L6_2 = L6_2.ConvertItems
    L6_2 = L6_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ItemExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L6_2.ItemID
    L7_2 = L7_2(L8_2)
    L8_2 = L7_2.ItemSubType
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.ItemSubType
    L9_2 = L9_2.Eidolon
    if L8_2 ~= L9_2 then
      L8_2 = A0_2._binder
      L8_2 = L8_2.avatar_additional_item_panel
      L9_2 = L8_2
      L8_2 = L8_2.set_active
      L10_2 = true
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.avatar_additional_item_panel
      L9_2 = L8_2
      L8_2 = L8_2.setup_view
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      return
    end
  end
end
L0_1._setup_avatar_additional_item_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_avatar_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._gacha_item_data
  L3_2 = L3_2.IsNew
  L1_2(L2_2, L3_2)
end
L0_1._setup_new_avatar_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._gacha_item_data
  L2_2 = L1_2
  L1_2 = L1_2.HaveConvertItem
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_convert
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    A0_2._have_eidolon = false
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_convert_item
    L1_2 = L1_2.transform
    L1_2 = L1_2.childCount
    L2_2 = math
    L2_2 = L2_2.max
    L3_2 = A0_2._gacha_item_data
    L3_2 = L3_2.ConvertItems
    L3_2 = L3_2.Length
    L3_2 = L3_2 - 1
    L4_2 = L1_2 - 1
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = 0
    L4_2 = L2_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._gacha_item_data
      L7_2 = L7_2.ConvertItems
      L7_2 = L7_2.Length
      if L6_2 >= L7_2 then
        L7_2 = A0_2._binder
        L7_2 = L7_2.node_convert_item
        L7_2 = L7_2.transform
        L8_2 = L7_2
        L7_2 = L7_2.GetChild
        L9_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2)
        L8_2 = L7_2
        L7_2 = L7_2.SafeSetActive
        L9_2 = false
        L7_2(L8_2, L9_2)
      else
        L7_2 = A0_2._gacha_item_data
        L7_2 = L7_2.ConvertItems
        L7_2 = L7_2[L6_2]
        L8_2 = CS
        L8_2 = L8_2.RPG
        L8_2 = L8_2.GameCore
        L8_2 = L8_2.ItemExcelTable
        L8_2 = L8_2.GetData
        L9_2 = L7_2.ItemID
        L8_2 = L8_2(L9_2)
        L9_2 = L8_2.ItemSubType
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.GameCore
        L10_2 = L10_2.ItemSubType
        L10_2 = L10_2.Eidolon
        if L9_2 == L10_2 then
          L10_2 = A0_2
          L9_2 = A0_2.create_panel
          L11_2 = G
          L11_2 = L11_2.GachaConvertItemPanel
          L12_2 = G
          L12_2 = L12_2.GachaConvertItemPanelBinder
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          L11_2 = L9_2
          L10_2 = L9_2.bind
          L12_2 = A0_2._binder
          L12_2 = L12_2.node_convert
          L10_2(L11_2, L12_2)
          L11_2 = L9_2
          L10_2 = L9_2.setup_view
          L12_2 = L7_2
          L10_2(L11_2, L12_2)
          A0_2._have_eidolon = true
        end
      end
    end
    L3_2 = A0_2._have_eidolon
    if L3_2 ~= true then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_convert
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
    return
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_convert
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
end
L0_1._setup_convert_item = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_convert
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_additional_item_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_share_view = L1_1
return L0_1
