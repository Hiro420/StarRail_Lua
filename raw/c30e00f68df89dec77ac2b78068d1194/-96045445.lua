local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.SkillInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogSkillRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogSkillRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SkillInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.SuperScrollView
  L1_2 = L1_2.LoopListViewInitParam
  L1_2 = L1_2()
  L1_2.mDistanceForRecycle0 = 1000
  L1_2.mDistanceForNew0 = 800
  L1_2.mDistanceForRecycle1 = 1000
  L1_2.mDistanceForNew1 = 800
  L2_2 = A0_2._binder
  L2_2 = L2_2.skill_listview
  L3_2 = L2_2
  L2_2 = L2_2.SafeInitListView
  L4_2 = 0
  L5_2 = A0_2._on_skill_item_change
  L6_2 = L1_2
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  A0_2._SkillDatas = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.skill_listview
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._SkillDatas
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.skill_listview
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarDialogSkillRow
    L8_2 = G
    L8_2 = L8_2.AvatarDialogSkillRowBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.init_view
  L7_2 = A0_2._SkillDatas
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L4_2._binder
  L6_2 = L6_2.root
  L5_2(L6_2)
  L6_2 = A1_2
  L5_2 = A1_2.OnItemSizeChanged
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_skill_item_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2._binder
  L2_2 = L2_2.skill_listview
  L1_2(L2_2)
end
L0_1._on_dispose = L1_1
return L0_1
