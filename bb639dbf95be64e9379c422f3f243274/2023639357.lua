local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityMonopolyMapCellPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_icon
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L6_2 = A0_2
    L5_2 = A0_2._get_icon_path
    L7_2 = A1_2
    L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L1_1.show_icon = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.GroundLayer
  L2_2 = L2_2.IconPath
  L3_2 = A1_2.CellType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MonopolyMapCellType
  L4_2 = L4_2.Asset
  if L3_2 == L4_2 then
    L3_2 = L0_1.AssetInfo
    L3_2 = L3_2.AssetsDict
    L4_2 = A1_2.GroundLayer
    L4_2 = L4_2.ContentID
    L3_2 = L3_2[L4_2]
    L3_2 = L3_2.IsOwnedByPlayer
    if L3_2 then
      L2_2 = "SpriteOutput/Quest/Monopoly/3DBlockIcon/MonopolyBlockIconBuilding1.png"
    end
  end
  if L2_2 == nil then
    return L2_2
  end
  L4_2 = L2_2
  L3_2 = L2_2.gsub
  L5_2 = "3DBlockIcon"
  L6_2 = "MapIcon"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.gsub
  L6_2 = "Block"
  L7_2 = "Map"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  return L4_2
end
L1_1._get_icon_path = L2_1
return L1_1
