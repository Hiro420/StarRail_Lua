local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.MuseumUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumTargetMissionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._is_dark_bg = false
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  A0_2._is_dark_bg = A1_2
end
L0_1.set_dark_bg = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._museum_target = A1_2
  A0_2._museum_mission = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_desc
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_status
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.CoroutineUtils
  L3_2 = L3_2.InvokeNextFrame
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.root
      if L0_3 then
        L0_3 = CS
        L0_3 = L0_3.UnityEngine
        L0_3 = L0_3.UI
        L0_3 = L0_3.LayoutRebuilder
        L0_3 = L0_3.ForceRebuildLayoutImmediate
        L1_3 = A0_2._binder
        L1_3 = L1_3.root
        L1_3 = L1_3.transform
        L0_3(L1_3)
      end
    end
  end
  L3_2(L4_2)
end
L0_1.setup_view_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MuseumTargetMission
  L2_2 = L2_2.Create
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._museum_mission = L2_2
  A0_2._museum_target = nil
  L3_2 = A0_2
  L2_2 = A0_2._setup_desc
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._museum_mission = nil
  A0_2._museum_target = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.MuseumUtils
  L2_2 = L2_2.TEXTID_MISSION_DESC
  L3_2 = A0_2._museum_mission
  L3_2 = L3_2.Type
  L2_2 = L2_2[L3_2]
  if A1_2 then
    L3_2 = G
    L3_2 = L3_2.MuseumUtils
    L3_2 = L3_2.TEXTID_MISSION_DESC_COMPLETE
    L4_2 = A0_2._museum_mission
    L4_2 = L4_2.Type
    L2_2 = L3_2[L4_2]
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2
  L6_2 = G
  L6_2 = L6_2.MuseumUtils
  L6_2 = L6_2.get_target_mission_param
  L7_2 = A0_2._museum_mission
  L8_2 = A0_2._museum_target
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_desc = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil then
    A1_2 = false
  end
  L2_2 = A1_2 or L2_2
  if not A1_2 then
    L2_2 = A0_2._museum_mission
    L2_2 = L2_2.IsFinish
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_not_finish
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_finish
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_status = L1_1
return L0_1
