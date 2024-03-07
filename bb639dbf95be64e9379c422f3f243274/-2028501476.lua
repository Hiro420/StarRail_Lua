local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarProfessionTypeFilterPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.SafeAddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = A0_2._hero_basic_type_table
    L2_3 = A0_3 + 1
    L1_3 = L1_3[L2_3]
    L2_3 = A0_2._cur_hero_basic_type
    if L2_3 ~= L1_3 then
      L2_3 = CS
      L2_3 = L2_3.RPG
      L2_3 = L2_3.Client
      L2_3 = L2_3.NetworkManager
      L2_3 = L2_3.OOGONDGGKMI
      L3_3 = L2_3
      L2_3 = L2_3.MDNPAOJFAGC
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._hero_basic_type_table = nil
  A0_2._cur_hero_basic_type = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  A0_2._cur_hero_basic_type = A1_2
  A0_2._hero_basic_type_table = A2_2
  L3_2 = 0
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.Collections
  L4_2 = L4_2.Generic
  L4_2 = L4_2.List
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.Dropdown
  L5_2 = L5_2.OptionData
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2()
  if A2_2 ~= nil then
    L5_2 = pairs
    L6_2 = A2_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    for L8_2, L9_2 in L5_2, L6_2, L7_2 do
      L10_2 = #L9_2
      L11_2 = A0_2._cur_hero_basic_type
      if L9_2 == L11_2 then
        L3_2 = L8_2 - 1
      end
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.AvatarExcelTable
      L11_2 = L11_2.GetData
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L12_2 = CS
      L12_2 = L12_2.RPG
      L12_2 = L12_2.GameCore
      L12_2 = L12_2.AvatarBaseTypeExcelTable
      L12_2 = L12_2.GetData
      L13_2 = L11_2.AvatarBaseType
      L12_2 = L12_2(L13_2)
      L13_2 = CS
      L13_2 = L13_2.RPG
      L13_2 = L13_2.Client
      L13_2 = L13_2.AssetLoader
      L13_2 = L13_2.SyncLoadAsset
      L14_2 = L12_2.BaseTypeIcon
      L15_2 = typeof
      L16_2 = CS
      L16_2 = L16_2.UnityEngine
      L16_2 = L16_2.Sprite
      L15_2, L16_2, L17_2 = L15_2(L16_2)
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      L14_2 = CS
      L14_2 = L14_2.RPG
      L14_2 = L14_2.Client
      L14_2 = L14_2.SuperDropDown
      L14_2 = L14_2.LocalizedOptionData
      L15_2 = L12_2.BaseTypeText
      L16_2 = L13_2
      L14_2 = L14_2(L15_2, L16_2)
      L16_2 = L4_2
      L15_2 = L4_2.Add
      L17_2 = L14_2
      L15_2(L16_2, L17_2)
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.drop_down
  L6_2 = L5_2
  L5_2 = L5_2.ClearOptions
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.drop_down
  L6_2 = L5_2
  L5_2 = L5_2.AddOptions
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.drop_down
  L5_2.value = L3_2
end
L0_1.setup_view = L1_1
return L0_1
