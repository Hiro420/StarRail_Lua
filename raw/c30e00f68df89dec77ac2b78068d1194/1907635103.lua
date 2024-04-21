local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Relic.RelicMainStatusDetailInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicMainStatusDetailInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.AvatarModule
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  A0_2._binder = L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_simple_statu
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_title
  L4_2 = A1_2.PropertyType
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.NextNum
  L2_2 = L2_2 ~= nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_simple_statu
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_detail_statu
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2._setup_detail_statu
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._setup_simple_statu
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_simple_statu
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.statu_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_AvatarRelic_Filter_MainAffix"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.statu_img
  L4_2 = "SpriteOutput/UI/Avatar/Icon/IconEmpty.png"
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.setup_unequipped_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AvatarPropertyExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.statu_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.PropertyNameRelic
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.statu_img
  L6_2 = L2_2.IconPath
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._set_title = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.statu_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_1.FormatDisplayDataByType
  L5_2 = A1_2.PropertyType
  L6_2 = A1_2.CurNum
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_simple_statu = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.statu_cur_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_1.FormatDisplayDataByType
  L5_2 = A1_2.PropertyType
  L6_2 = A1_2.CurNum
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.statu_next_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_1.FormatDisplayDataByType
  L5_2 = A1_2.PropertyType
  L6_2 = A1_2.NextNum
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.arrow_up
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.NextNum
  L5_2 = A1_2.CurNum
  L4_2 = L4_2 > L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.arrow_down
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.NextNum
  L5_2 = A1_2.CurNum
  L4_2 = L4_2 < L5_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_detail_statu = L2_1
return L0_1
