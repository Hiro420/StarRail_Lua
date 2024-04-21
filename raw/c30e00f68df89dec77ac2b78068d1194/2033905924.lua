local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Battle.MonsterDialogBuffRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterDialogBuffRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = G
L2_1 = L2_1.TextExtensions
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StatusExcelTable
  L2_2 = L2_2.GetByModifierName
  L3_2 = A1_2.KeyForStatusConfig
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.StatusName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_describe
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AbilityStatic
  L5_2 = L5_2.GetStatusBuffDesc
  L6_2 = A1_2
  L7_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_1.SafeSetActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_stack
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A1_2.Layer
  if L3_2 == 0 then
    L3_2 = A1_2.InitCount
    if L3_2 == -1 then
      L3_2 = L1_1.SafeSetActive
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_stack
      L5_2 = false
      L3_2(L4_2, L5_2)
    else
      L3_2 = L2_1.SafeSetText
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_stack
      L5_2 = A1_2.Count
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = L2_1.SafeSetText
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_stack
    L5_2 = A1_2.Layer
    L3_2(L4_2, L5_2)
  end
  L3_2 = L2_1.SafeSetTextID
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_tip
  L5_2 = "UIText_AvatarDialog_BuffTime"
  L6_2 = A1_2.CurrentLife
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L1_1.SafeSetActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_tip_node
  L5_2 = A1_2.CurrentLife
  L5_2 = L5_2 ~= -1
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_skill
  L6_2 = L2_2.StatusIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L1_1.SafeSetActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_time
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1.init_view = L3_1
return L0_1
