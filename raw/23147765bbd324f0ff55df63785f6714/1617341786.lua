local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SceneObjClickHintUIData"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2
  A0_2.mono_script = nil
  A0_2.dot_panel = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UtilEngineWrap
  L1_2 = L1_2.IsCsObjectNull
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2.AttachPointList
    if L1_2 ~= nil then
      L1_2 = A0_2.AttachPointList
      L1_2 = L1_2.Count
      if L1_2 ~= 0 then
        goto lbl_17
      end
    end
  end
  L1_2 = nil
  do return L1_2 end
  ::lbl_17::
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.Component.SceneObjClickHintUIData"
  L1_2 = L1_2(L2_2)
  L1_2.mono_script = A0_2
  return L1_2
end
L0_1.create = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2.dot_panel = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.update_dot_panel_position
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.update_dot_panel_status
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.set_dot_panel = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.dot_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._log_error
    L4_2 = "\230\156\170\229\136\155\229\187\186SceneObjClickHintDotPanel\239\188\140\232\183\179\232\191\135\229\136\183\230\150\176\239\188\140EntityRuntimeID %d\239\188\140GameObject %s\239\188\140AttachPointIndex %d"
    L5_2 = A0_2.mono_script
    L5_2 = L5_2.EntityRuntimeID
    L6_2 = A0_2.mono_script
    L6_2 = L6_2.gameObject
    L7_2 = A0_2.mono_script
    L7_2 = L7_2.CurAttachPointIndex
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    return
  end
  L2_2 = A0_2.dot_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_show
  L4_2 = A0_2.mono_script
  L4_2 = L4_2.IsShow
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2.dot_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_hovered
  L4_2 = A0_2.mono_script
  L4_2 = L4_2.IsHovered
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.dot_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_selected
  L4_2 = A0_2.mono_script
  L4_2 = L4_2.IsSelected
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.update_dot_panel_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.mono_script
  L2_2 = L1_2
  L1_2 = L1_2.GetCurAttachPoint
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.dot_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2._log_error
    L4_2 = "\230\156\170\229\136\155\229\187\186SceneObjClickHintDotPanel\239\188\140\232\183\179\232\191\135\229\136\183\230\150\176\239\188\140EntityRuntimeID %d\239\188\140GameObject %s\239\188\140AttachPointIndex %d"
    L5_2 = A0_2.mono_script
    L5_2 = L5_2.EntityRuntimeID
    L6_2 = A0_2.mono_script
    L6_2 = L6_2.gameObject
    L7_2 = A0_2.mono_script
    L7_2 = L7_2.CurAttachPointIndex
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    return
  end
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsObjectNull
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._log_error
    L4_2 = "\232\142\183\229\143\150AttachPoint\229\164\177\232\180\165\239\188\140\232\183\179\232\191\135\229\136\183\230\150\176\239\188\140EntityRuntimeID %d\239\188\140GameObject %s\239\188\140AttachPointIndex %d"
    L5_2 = A0_2.mono_script
    L5_2 = L5_2.EntityRuntimeID
    L6_2 = A0_2.mono_script
    L6_2 = L6_2.gameObject
    L7_2 = A0_2.mono_script
    L7_2 = L7_2.CurAttachPointIndex
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    return
  end
  L2_2 = A0_2.dot_panel
  L3_2 = L2_2
  L2_2 = L2_2.update_position
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1.update_dot_panel_position = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogErrorFormatWithTag
  L3_2 = G
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.UI
  L4_2 = "[SceneObjClickHint] "
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._log_error = L1_1
return L0_1
