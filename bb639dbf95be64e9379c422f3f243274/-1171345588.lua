local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.FanPhaseDetail.HeliobusPopulationPhaseDetailMissionPostItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.FanPhaseDetail.HeliobusPopulationPhaseDetailMissionPostItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.FanPhaseDetail.HeliobusPopulationPhaseDetailMissionPostPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseDetailMissionPostPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.HeliobusModule
L1_1 = L1_1.HeliobusSNSData
L2_1 = 3
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._post_panel_table = L1_2
  L1_2 = 1
  L2_2 = L2_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.HeliobusPopulationPhaseDetailMissionPostItem
    L8_2 = G
    L8_2 = L8_2.HeliobusPopulationPhaseDetailMissionPostItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L9_2 = "node_mission_post_"
    L10_2 = L4_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._post_panel_table
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._pop_phase = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._generate_mission_post_table
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_mission_post
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._mission_post_table = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.HeliobusPostExcelTable
  L2_2 = L1_2
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2(L2_2)
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    L3_2 = G
    L3_2 = L3_2.HeliobusSNSUtils
    L3_2 = L3_2.is_mission_type_post
    L4_2 = L2_2.PostType
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = L2_2.PostUnlockPhase
      L4_2 = A0_2._pop_phase
      if L3_2 == L4_2 then
        L3_2 = L2_2.PostType
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.HeliobusPostType
        L4_2 = L4_2.MissionAnchor
        if L3_2 ~= L4_2 then
          L3_2 = table
          L3_2 = L3_2.insert
          L4_2 = A0_2._mission_post_table
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.PostType
    L3_3 = A1_3.PostType
    if L2_3 ~= L3_3 then
      L2_3 = A0_3.PostType
      L3_3 = CS
      L3_3 = L3_3.RPG
      L3_3 = L3_3.GameCore
      L3_3 = L3_3.HeliobusPostType
      L3_3 = L3_3.MissionMain
      L2_3 = L2_3 == L3_3
      return L2_3
    else
      L2_3 = A0_3.HeliobusPostID
      L3_3 = A1_3.HeliobusPostID
      L2_3 = L2_3 < L3_3
      return L2_3
    end
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2._mission_post_table
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._generate_mission_post_table = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._mission_post_table
  L3_2 = #L3_2
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_post_table
  L1_2 = #L1_2
  if L1_2 == 0 then
    return
  end
  L1_2 = 1
  L2_2 = L2_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L6_2 = "node_mission_post_"
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L5_2 = L5_2[L6_2]
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A0_2._mission_post_table
    L7_2 = #L7_2
    L7_2 = L4_2 <= L7_2
    L5_2(L6_2, L7_2)
  end
  L1_2 = A0_2._mission_post_table
  L1_2 = #L1_2
  L2_2 = L2_1
  if L1_2 <= L2_2 then
    L1_2 = A0_2._mission_post_table
    L1_2 = #L1_2
    if L1_2 then
      goto lbl_44
    end
  end
  L1_2 = L2_1
  ::lbl_44::
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._post_panel_table
    L6_2 = L6_2[L5_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = A0_2._mission_post_table
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.HeliobusPostID
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_mission_post = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_unload = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
return L0_1
