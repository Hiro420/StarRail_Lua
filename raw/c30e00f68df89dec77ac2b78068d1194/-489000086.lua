local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessRecordInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_record
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rank
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._data
  L2_2 = L2_2.HasEnteredEndless
  if not L2_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.HasEndlessScore
    if not L2_2 then
      goto lbl_59
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_record
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rank
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_rank
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._data
  L4_2 = L4_2.EndlessAchievedRank
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_score
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._data
  L4_2 = L4_2.EndlessAchievedScore
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_progress_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ActivityRogueEndless_MainUI__Challenge_Hard"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._data
  L4_2 = L4_2.EndlessAchievedProgress
  L2_2(L3_2, L4_2)
  goto lbl_153
  ::lbl_59::
  L2_2 = A0_2._data
  L2_2 = L2_2.NormalStatus
  L3_2 = CS
  L3_2 = L3_2.MLCDPMIBLBK
  L3_2 = L3_2.NHPJJMMAPAM
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_tip_bg_normal
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_tip_bg_endless
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityRogueEndless_MainUI_Hard_Unchallenge"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_tip_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._data
    L2_2 = L2_2.HasRecord
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_tip_bg_normal
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_tip_bg_endless
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_ActivityRogueEndless_Tip_1_Scoreless"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_tip_num
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_tip_bg_normal
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_tip_bg_endless
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_tip_num
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_tip
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_ActivityRogueEndless_MainUI__Challenge_Normal"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_tip_num
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetText
      L4_2 = A0_2._data
      L4_2 = L4_2.NormalAchievedProgress
      L2_2(L3_2, L4_2)
    end
  end
  ::lbl_153::
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
return L0_1
