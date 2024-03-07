local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooEXPItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.SpaceZooEXPChangeType
L3_1 = "\195\151"
L4_1 = {}
L5_1 = L2_1.SpecialCat
L4_1[L5_1] = "UIText_ActivitySpaceZoo_ExpSSR"
L5_1 = L2_1.NewCat
L4_1[L5_1] = "UIText_ActivitySpaceZoo_ExpNew"
L5_1 = L2_1.Feature
L4_1[L5_1] = "UIText_ActivitySpaceZoo_ExpFeature"
L5_1 = L2_1.SpecialFeature
L4_1[L5_1] = "UIText_ActivitySpaceZoo_ExpFeatureSR"
L5_1 = "#ffffff"
L6_1 = "#0a1b3a"
function L7_1(A0_2)
  local L1_2
end
L0_1._on_load = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._cat_data = A2_2
  A0_2._type = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_num
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_name
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_style
  L3_2(L4_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._cat_data
  L2_2 = L1_2
  L1_2 = L1_2.GetEXPChangeCache
  L3_2 = A0_2._type
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_num
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = L3_1
  L5_2 = L1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_num = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._type
  L3_2 = L4_1[L3_2]
  L1_2(L2_2, L3_2)
end
L0_1._setup_name = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._type
  L2_2 = L2_1.SpecialCat
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_special
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.UIColorUtils
    L2_2 = L2_2.GetColor
    L3_2 = L6_1
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_31
    end
  end
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L5_1
  L2_2 = L2_2(L3_2)
  ::lbl_31::
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_name
  L3_2.color = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_num
  L3_2.color = L2_2
end
L0_1._setup_style = L7_1
return L0_1
