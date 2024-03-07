local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerQuantifyTagDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendEnum"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerQuantifyTagDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.DrinkMakerQuantifyTagType
L2_1 = L2_1.Sweetness
L2_1 = #L2_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "DrinkMaker_TagType_IconPath1"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.StringValue
L1_1[L2_1] = L3_1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.DrinkMakerQuantifyTagType
L2_1 = L2_1.Acidity
L2_1 = #L2_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "DrinkMaker_TagType_IconPath2"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.StringValue
L1_1[L2_1] = L3_1
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.DrinkMakerQuantifyTagType
L2_1 = L2_1.Texture
L2_1 = #L2_1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "DrinkMaker_TagType_IconPath3"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.StringValue
L1_1[L2_1] = L3_1
L2_1 = {}
L2_1[1] = "\226\137\164-2"
L2_1[2] = "-1"
L2_1[3] = "0"
L2_1[4] = "1"
L2_1[5] = "\226\137\1652"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tag_type_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = DrinkMakerTagType2Name
  L5_2 = #A1_2
  L4_2 = L4_2[L5_2]
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = #A1_2
  L5_2 = L1_1[L5_2]
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.DrinkMakerTag
  L3_2 = L3_2.GetAllTagNamesByType
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_tag_name_list
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_tag_name_list
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = L2_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  L3_2 = 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_quantity
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_quantity
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.SetCustomizedText
    L9_2 = L2_1[L6_2]
    L7_2(L8_2, L9_2)
  end
end
L0_1.setup_view = L3_1
return L0_1
