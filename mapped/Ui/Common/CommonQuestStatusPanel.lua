local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonQuestStatusPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.setup_view_by_data
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.TryGetQuestData
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view_by_id = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._quest_data = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = false
  end
  A0_2._show_progress = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_view
  L3_2(L4_2)
end
L0_1.setup_view_by_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.DataRow
  L2_2 = L2_2.GotoID
  L2_2 = L2_2 ~= 0
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_ongoing
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_ongoing
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._show_progress
    L5_2 = CS
    L5_2 = L5_2.LEOGBBOPKKO
    L5_2 = L5_2.KBBBFCIHJPC
    L5_2 = not L5_2 and L5_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_track
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_track
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._show_progress
    L5_2 = CS
    L5_2 = L5_2.LEOGBBOPKKO
    L5_2 = L5_2.KBBBFCIHJPC
    L5_2 = not L5_2 and L5_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_progress
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_progress
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._show_progress
    if L5_2 then
      L5_2 = CS
      L5_2 = L5_2.LEOGBBOPKKO
      L5_2 = L5_2.KBBBFCIHJPC
      L5_2 = L1_2 == L5_2
    end
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_progress_current
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A0_2._quest_data
    L5_2 = L5_2.Progress
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_progress_total
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A0_2._quest_data
    L5_2 = L5_2.TotalProgress
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_get
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.JKFPIINHGPD
  L5_2 = L1_2 == L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_gotten
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.CMOFEAFMGAK
  L5_2 = L1_2 == L5_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_ongoing
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_ongoing
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_track
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_track
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_gotten
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.setup_empty_view = L2_1
return L0_1
