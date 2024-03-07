local L0_1, L1_1, L2_1, L3_1
L0_1 = "MonopolyGachaIconItem_Select"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyMiniGameGachaIconPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._resource_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._show_num
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_num
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_num
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MonopolyGameResourceExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._resource_id
  L3_2 = L3_2(L4_2)
  if L2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_num
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetText
    L6_2 = L3_2.ResourceNum
    L4_2(L5_2, L6_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_icon
    L7_2 = L3_2.IconPath
    L4_2(L5_2, L6_2, L7_2)
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._resource_id
  L2_2 = L2_2 == A1_2
  return L2_2
end
L1_1.is_same_resource = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hint
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L1_1.show_highlight = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L0_1
    L1_2(L2_2, L3_2)
  end
end
L1_1.play_result = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._resource_id
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MonopolyGameResourceExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._resource_id
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_num
  L2_2 = G
  L2_2 = L2_2.StrExt
  L2_2 = L2_2.IsNullOrEmpty
  L3_2 = L1_2.IconPath
  L2_2 = L2_2 ~= nil and L2_2
  return L2_2
end
L1_1._show_num = L2_1
return L1_1
