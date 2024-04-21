local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FindTrotterOrderPanel"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2
  A0_2._row = A1_2
  L2_2 = A0_2._row
  L2_2 = L2_2.MissionID
  A0_2._reddot_id = L2_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._row
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.play_unlock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.unbind_reddot
  L3_2 = A0_2._binder
  L3_2 = L3_2.reddot
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_reddot
  L1_2(L2_2)
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  if L1_2 ~= nil then
    L2_2 = L1_2.ActivityFindTrotterNewMissionIDs
    if L2_2 ~= nil then
      L2_2 = L1_2.ActivityFindTrotterNewMissionIDs
      L3_2 = L2_2
      L2_2 = L2_2.Remove
      L4_2 = A0_2._reddot_id
      L2_2(L3_2, L4_2)
      L2_2 = G
      L2_2 = L2_2.NotifyManager
      L2_2 = L2_2.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.ActivityForceRefreshRedDot
      L2_2(L3_2)
    end
  end
end
L0_1._remove_reddot = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_first_select = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
