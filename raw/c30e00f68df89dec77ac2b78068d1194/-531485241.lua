local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.AvatarHPBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.AvatarHPBarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Generate.AvatarItemIconLiteIndex"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "AvatarItemIconLitePanelBinder"
L3_1 = G
L3_1 = L3_1.UIBinder
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = "UI/CommonKits/Icon/AvatarItemIconLite.prefab"
  return L1_2
end
L1_1.get_prefab_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BinderIndex
  L1_2 = L1_2.BinderIndexOpen
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.auto_bind
    L3_2 = L0_1
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._create_panel_with_root_trans
      L3_2 = G
      L3_2 = L3_2.AvatarHPBarPanel
      L4_2 = G
      L4_2 = L4_2.AvatarHPBarPanelBinder
      L5_2 = A0_2.node_hp_bar
      L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
      A0_2.panel_hp_bar = L1_2
      return
    end
  end
end
L1_1._on_bind = L2_1
return L1_1
