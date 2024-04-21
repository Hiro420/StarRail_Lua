local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayGoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_PlayGoManager
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayGOStart
  L4_2 = L0_1._playgo_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayGOEnd
  L4_2 = L0_1._playgo_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayGODownloadProgress
  L4_2 = L0_1._playgo_progress
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = L1_1.IsFinishDownload
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._playgo_start = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 ~= nil then
    L2_2 = type
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 == "number" then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = G
  L2_2 = L2_2.TextExtensions
  L2_2 = L2_2.SafeSetText_Num
  L3_2 = A0_2._binder
  L3_2 = L3_2.num
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.f%%"
  L6_2 = A1_2 * 100
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.progress
  L2_2.fillAmount = A1_2
end
L0_1._playgo_progress = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._playgo_end = L2_1
return L0_1
