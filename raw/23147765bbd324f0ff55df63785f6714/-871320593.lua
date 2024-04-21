local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.DrinkMakerModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.DrinkMakerQuantifyTagType
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ConstValueClientExcelTable
L2_1 = L2_1.GetData
L3_1 = "DrinkMaker_TagType_IconPath3"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L2_1 = L2_1.StringValue
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "DrinkMakerDrinkTextureFilter"
L5_1 = G
L5_1 = L5_1.CommonFilter
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DrinkMakerQuantifyTagExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = L3_2.Type
    L5_2 = L1_1.Texture
    if L4_2 == L5_2 then
      L4_2 = L0_1
      L5_2 = L4_2
      L4_2 = L4_2.GetTagData
      L6_2 = L3_2.TagID
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = L4_2.IsShow
      if L5_2 then
        L5_2 = {}
        L6_2 = L4_2.TagID
        L5_2.FilterType = L6_2
        L5_2.IsSelected = false
        L5_2.Tag = L4_2
        L5_2.Filter = A0_2
        L6_2 = #L1_2
        L6_2 = L6_2 + 1
        L1_2[L6_2] = L5_2
      end
    end
  end
  return L1_2
end
L3_1._get_all_filter_data = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = "UIText_DrinkMaker_HandBook_Flavor"
  return L1_2
end
L3_1.get_title_text_id = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = L2_1
  return L1_2
end
L3_1.get_title_icon = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A1_2.DrinkTags
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L8_2 = L8_2.TagID
    L8_2 = A2_2[L8_2]
    if L8_2 then
      L8_2 = true
      return L8_2
    end
  end
  L4_2 = false
  return L4_2
end
L3_1._filter = L4_1
return L3_1
