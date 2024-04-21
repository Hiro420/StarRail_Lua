local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.Fan.HeliobusPopulationPhaseFanNewPostMissionTypeItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.Fan.HeliobusPopulationPhaseFanNewPostMissionTypeItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.Fan.HeliobusPopulationPhaseFanNewPostItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.SNS.PopulationPhase.Fan.HeliobusPopulationPhaseFanNewPostItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Heliobus.HeliobusUtilities.HeliobusSNSUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HeliobusPopulationPhaseFanNewPostPanel"
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
L2_1 = {}
L2_1.MISSION_TYPE = 1
L2_1.POST_TYPE = 0
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_new_post
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_list_view_new_post_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._pop_phase = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._generate_table
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_new_post
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeliobusPostExcelTable
  L4_2 = L3_2
  L3_2 = L3_2.GetEnumerator
  L3_2 = L3_2(L4_2)
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L5_2 = G
    L5_2 = L5_2.HeliobusSNSUtils
    L5_2 = L5_2.is_mission_type_post
    L6_2 = L4_2.PostType
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = L4_2.PostUnlockPhase
      L6_2 = A0_2._pop_phase
      if L5_2 == L6_2 then
        L5_2 = L4_2.PostType
        L6_2 = CS
        L6_2 = L6_2.RPG
        L6_2 = L6_2.GameCore
        L6_2 = L6_2.HeliobusPostType
        L6_2 = L6_2.MissionMain
        if L5_2 == L6_2 then
          L5_2 = table
          L5_2 = L5_2.insert
          L6_2 = L1_2
          L7_2 = L4_2
          L5_2(L6_2, L7_2)
        else
          L5_2 = L4_2.PostType
          L6_2 = CS
          L6_2 = L6_2.RPG
          L6_2 = L6_2.GameCore
          L6_2 = L6_2.HeliobusPostType
          L6_2 = L6_2.MissionSide
          if L5_2 == L6_2 then
            L5_2 = table
            L5_2 = L5_2.insert
            L6_2 = L2_2
            L7_2 = L4_2
            L5_2(L6_2, L7_2)
          end
        end
      end
    end
  end
  L4_2 = {}
  A0_2._new_post_table = L4_2
  L4_2 = #L1_2
  if 0 < L4_2 then
    L4_2 = {}
    L5_2 = L2_1.MISSION_TYPE
    L4_2.Type = L5_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.HeliobusPostType
    L5_2 = L5_2.MissionMain
    L4_2.Content = L5_2
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._new_post_table
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = 1
    L6_2 = #L1_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = {}
      L10_2 = L2_1.POST_TYPE
      L9_2.Type = L10_2
      L10_2 = L1_2[L8_2]
      L9_2.Content = L10_2
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = A0_2._new_post_table
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
  L4_2 = #L2_2
  if 0 < L4_2 then
    L4_2 = {}
    L5_2 = L2_1.MISSION_TYPE
    L4_2.Type = L5_2
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.HeliobusPostType
    L5_2 = L5_2.MissionSide
    L4_2.Content = L5_2
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._new_post_table
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
    L5_2 = 1
    L6_2 = #L2_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = {}
      L10_2 = L2_1.POST_TYPE
      L9_2.Type = L10_2
      L10_2 = L2_2[L8_2]
      L9_2.Content = L10_2
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = A0_2._new_post_table
      L12_2 = L9_2
      L10_2(L11_2, L12_2)
    end
  end
end
L0_1._generate_table = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_new_post
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._new_post_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_new_post
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_new_post = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._new_post_table
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.Type
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L6_2 = A0_2._new_post_table
    L7_2 = A2_2 + 1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.Type
    L7_2 = L2_1.MISSION_TYPE
    if L6_2 == L7_2 then
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.HeliobusPopulationPhaseFanNewPostMissionTypeItem
      L9_2 = G
      L9_2 = L9_2.HeliobusPopulationPhaseFanNewPostMissionTypeItemBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    else
      L7_2 = A0_2
      L6_2 = A0_2.create_panel
      L8_2 = G
      L8_2 = L8_2.HeliobusPopulationPhaseFanNewPostItem
      L9_2 = G
      L9_2 = L9_2.HeliobusPopulationPhaseFanNewPostItemBinder
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L5_2 = L6_2
    end
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_view
  L8_2 = A0_2._new_post_table
  L9_2 = A2_2 + 1
  L8_2 = L8_2[L9_2]
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L5_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  return L4_2
end
L0_1._on_list_view_new_post_change = L3_1
return L0_1
