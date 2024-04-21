local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTipMixTagPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendTipMixTagPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
function L2_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_mix_tag
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2.IncludeTagIDs
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_sub_tag_list
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_sub_tag_list
    L7_2 = L7_2[L6_2]
    L8_2 = L2_2[L6_2]
    if L8_2 ~= nil then
      L9_2 = L1_1
      L10_2 = L9_2
      L9_2 = L9_2.GetTagData
      L11_2 = L8_2
      L9_2 = L9_2(L10_2, L11_2)
      L11_2 = L7_2
      L10_2 = L7_2.safe_set_active
      L12_2 = true
      L10_2(L11_2, L12_2)
      L11_2 = L7_2
      L10_2 = L7_2.setup_view
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    else
      L10_2 = L7_2
      L9_2 = L7_2.safe_set_active
      L11_2 = false
      L9_2(L10_2, L11_2)
    end
  end
end
L0_1.setup_view = L2_1
return L0_1
