local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerMixTagDetailPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerMixTagDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_DrinkMaker_GamePlayPage_MenuStep3_2"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.DrinkMakerModule
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tag_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.TagName
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2.IncludeTagIDs
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_tag_list
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_tag_list
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = #L2_2
    L9_2 = L6_2 <= L9_2
    L7_2(L8_2, L9_2)
    L7_2 = #L2_2
    if L6_2 <= L7_2 then
      L7_2 = L2_1
      L8_2 = L7_2
      L7_2 = L7_2.GetTagData
      L9_2 = L2_2[L6_2]
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = A0_2._binder
      L8_2 = L8_2.text_tag_desc
      L8_2 = L8_2[L6_2]
      L9_2 = L8_2
      L8_2 = L8_2.SafeSetTextID
      L10_2 = L7_2.TagName
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_mix
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_1
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L3_1
return L0_1
