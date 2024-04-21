local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogBuffRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarDialogBuffRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "BattleUIText_BattleViewModePage_Unreleasable"
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.StatusExcelTable
  L2_2 = L2_2.GetByModifierName
  L3_2 = A1_2.KeyForStatusConfig
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.buff_arrow_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2.StatusType
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.StatusName
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AbilityStatic
  L3_2 = L3_2.GetStatusBuffDesc
  L4_2 = A1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._need_show_dispel
  L6_2 = A1_2
  L7_2 = L2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if L4_2 then
    L4_2 = L2_2.CanDispel
    if not L4_2 then
      L4_2 = G
      L4_2 = L4_2.TextmapStatic
      L4_2 = L4_2.GetText
      L5_2 = L1_1
      L4_2 = L4_2(L5_2)
      L5_2 = L3_2
      L3_2 = L4_2 .. L5_2
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_describe
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.GetModifierConfig
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.UIConfig
  if L4_2 then
    L5_2 = A1_2
    L4_2 = A1_2.GetModifierConfig
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.UIConfig
    L4_2 = L4_2.IsShowNumInAvatarPanel
    if not L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_stack
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetActive
      L6_2 = false
      L4_2(L5_2, L6_2)
  end
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_stack
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A1_2.Layer
    if L4_2 == 0 then
      L4_2 = A1_2.InitCount
      if L4_2 == -1 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.txt_stack
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetActive
        L6_2 = false
        L4_2(L5_2, L6_2)
      else
        L4_2 = A0_2._binder
        L4_2 = L4_2.txt_stack
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetText
        L6_2 = A1_2.Count
        L4_2(L5_2, L6_2)
      end
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.txt_stack
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetText
      L6_2 = A1_2.Layer
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_tip
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_AvatarDialog_BuffTime"
  L7_2 = A1_2.CurrentLife
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_tip_node
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2.CurrentLife
  L6_2 = L6_2 ~= -1
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_skill
  L7_2 = L2_2.StatusIconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_time
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A1_2.TaskContext
  L3_2 = L3_2.OwnerEntity
  if not L3_2 then
    L4_2 = true
    return L4_2
  end
  L4_2 = L3_2.Team
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.TeamType
  L5_2 = L5_2.TeamLight
  if L4_2 == L5_2 then
    L4_2 = A2_2.StatusType
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.EnumStatusType
    L5_2 = L5_2.Debuff
    if L4_2 ~= L5_2 then
      L4_2 = false
      return L4_2
    end
  end
  L4_2 = true
  return L4_2
end
L0_1._need_show_dispel = L2_1
return L0_1
