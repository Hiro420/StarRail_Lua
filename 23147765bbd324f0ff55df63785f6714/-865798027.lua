local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.Components.DrinkMakerBartendTipQuantifyTagPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendTipQuantifyTagPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
L2_1 = {}
L2_1[-2] = 1
L2_1[-1] = 2
L2_1[0] = 3
L2_1[1] = 4
L2_1[2] = 5
L3_1 = "UIText_DrinkMaker_TagType"
function L4_1(A0_2, A1_2, A2_2)
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetTagByQuantifyType
  L5_2 = A1_2
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._tags = L2_2
  L2_2 = A0_2._tags
  L2_2 = L2_2[1]
  if L2_2 ~= nil then
    L3_2 = L2_2.IconPath
    if L3_2 ~= nil then
      L3_2 = L2_2.IconPath
      if L3_2 ~= "" then
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_icon_panel
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = true
        L3_2(L4_2, L5_2)
        L4_2 = A0_2
        L3_2 = A0_2._async_load_sprite_to
        L5_2 = A0_2._binder
        L5_2 = L5_2.img_icon
        L6_2 = L2_2.IconPath
        L3_2(L4_2, L5_2, L6_2)
    end
  end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_icon_panel
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_tag
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L3_1
  L6_2 = tonumber
  L7_2 = #A1_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_special
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.DrinkMakerQuantifyTagType
  L5_2 = L5_2.Texture
  L5_2 = A1_2 == L5_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_tail_view
  L3_2(L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = ipairs
  L2_2 = A0_2._tags
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.Quantity
    L6_2 = L2_1[L6_2]
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_tag_list
    L7_2 = L7_2[L6_2]
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = L5_2.TagName
    L7_2(L8_2, L9_2)
  end
end
L0_1._setup_tail_view = L4_1
return L0_1
