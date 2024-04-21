local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaConvertItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaConvertItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NormalObtainAvatarPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
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
  local L2_2, L3_2, L4_2, L5_2
  A0_2._new_avatar_info = A1_2
  L2_2 = A0_2._new_avatar_info
  L2_2 = L2_2.NewAvatarData
  L2_2 = L2_2.Row
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_obtain_panel
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = true
  L3_2(L4_2, L5_2)
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
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._new_avatar_info
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._new_avatar_info
  L1_2 = L1_2.AdditionalItemList
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_additional_item_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._new_avatar_info
    L2_2 = L2_2.AdditionalItemList
    L2_2 = L2_2[0]
    L3_2 = A0_2._binder
    L3_2 = L3_2.avatar_additional_item_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    return
  end
  L2_2 = A0_2._new_avatar_info
  L2_2 = L2_2.ConvertItemList
  L2_2 = L2_2.Count
  L3_2 = 0
  L4_2 = L2_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._new_avatar_info
    L7_2 = L7_2.ConvertItemList
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
    if L9_2 ~= L10_2 then
      L9_2 = A0_2._binder
      L9_2 = L9_2.avatar_additional_item_panel
      L10_2 = L9_2
      L9_2 = L9_2.set_active
      L11_2 = true
      L9_2(L10_2, L11_2)
      L9_2 = A0_2._binder
      L9_2 = L9_2.avatar_additional_item_panel
      L10_2 = L9_2
      L9_2 = L9_2.setup_view
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      return
    end
  end
end
L0_1._setup_avatar_additional_item_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._new_avatar_info
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_new_avatar_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._new_avatar_info
  L3_2 = L3_2.IsNew
  L1_2(L2_2, L3_2)
end
L0_1._setup_new_avatar_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._new_avatar_info
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_avatar_convert
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "GachaRepeatedConvert"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._new_avatar_info
  L1_2 = L1_2.ConvertItemList
  L1_2 = L1_2.Count
  L1_2 = L1_2 ~= 0
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_convert
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    A0_2._have_eidolon = false
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_convert_item
    L2_2 = L2_2.transform
    L2_2 = L2_2.childCount
    L3_2 = math
    L3_2 = L3_2.max
    L4_2 = A0_2._new_avatar_info
    L4_2 = L4_2.ConvertItemList
    L4_2 = L4_2.Count
    L4_2 = L4_2 - 1
    L5_2 = L2_2 - 1
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = 0
    L5_2 = L3_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = A0_2._new_avatar_info
      L8_2 = L8_2.ConvertItemList
      L8_2 = L8_2.Count
      if L7_2 >= L8_2 then
        L8_2 = A0_2._binder
        L8_2 = L8_2.node_convert_item
        L8_2 = L8_2.transform
        L9_2 = L8_2
        L8_2 = L8_2.GetChild
        L10_2 = L7_2
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = L8_2
        L8_2 = L8_2.SafeSetActive
        L10_2 = false
        L8_2(L9_2, L10_2)
      else
        L8_2 = A0_2._new_avatar_info
        L8_2 = L8_2.ConvertItemList
        L8_2 = L8_2[L7_2]
        L9_2 = CS
        L9_2 = L9_2.RPG
        L9_2 = L9_2.GameCore
        L9_2 = L9_2.ItemExcelTable
        L9_2 = L9_2.GetData
        L10_2 = L8_2.ItemID
        L9_2 = L9_2(L10_2)
        L10_2 = L9_2.ItemSubType
        L11_2 = CS
        L11_2 = L11_2.RPG
        L11_2 = L11_2.GameCore
        L11_2 = L11_2.ItemSubType
        L11_2 = L11_2.Eidolon
        if L10_2 == L11_2 then
          L11_2 = A0_2
          L10_2 = A0_2.create_panel
          L12_2 = G
          L12_2 = L12_2.GachaConvertItemPanel
          L13_2 = G
          L13_2 = L13_2.GachaConvertItemPanelBinder
          L10_2 = L10_2(L11_2, L12_2, L13_2)
          L12_2 = L10_2
          L11_2 = L10_2.bind
          L13_2 = A0_2._binder
          L13_2 = L13_2.node_convert
          L11_2(L12_2, L13_2)
          L12_2 = L10_2
          L11_2 = L10_2.setup_view
          L13_2 = L8_2
          L11_2(L12_2, L13_2)
          A0_2._have_eidolon = true
        end
      end
    end
    L4_2 = A0_2._have_eidolon
    if L4_2 ~= true then
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_convert
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_convert
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_convert_item = L1_1
return L0_1
