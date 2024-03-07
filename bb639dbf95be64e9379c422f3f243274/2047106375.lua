local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfPremissionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.SilverWolfUtils
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ActivityConstValueSilverWolfExcelTable
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_goto_premission
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1.GetPremissionIDList
  L1_2 = L1_2()
  A0_2._premission_id_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto_premission
  L4_2 = A0_2._on_btn_goto_mission
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "GoToPreMissionBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = L3_1.GetData
  L2_2 = "SilverWolf_PrePhoneMessage_SubmissionID"
  L1_2 = L1_2(L2_2)
  L2_2 = tonumber
  L3_2 = L1_2.Value
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Collections
  L3_2 = L3_2.Generic
  L3_2 = L3_2.List
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.UInt32
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2()
  L5_2 = L3_2
  L4_2 = L3_2.Add
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.MissionModule
  L5_2 = L4_2
  L4_2 = L4_2.SubMissionDataPromised
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2
  L4_2 = L4_2.ThenLuaAction
  function L6_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = L1_1
    L1_3 = L0_3
    L0_3 = L0_3.GetSubMissionState
    L2_3 = L2_2
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.GameCore
    L1_3 = L1_3.SubMissionState
    L1_3 = L1_3.Finish
    if L0_3 == L1_3 then
      L1_3 = 0
      L2_3 = A0_2._premission_id_list
      L2_3 = L2_3.Count
      L2_3 = L2_3 - 1
      L3_3 = 1
      for L4_3 = L1_3, L2_3, L3_3 do
        L5_3 = L1_1
        L6_3 = L5_3
        L5_3 = L5_3.TryGetMainMissionData
        L7_3 = A0_2._premission_id_list
        L7_3 = L7_3[L4_3]
        L5_3 = L5_3(L6_3, L7_3)
        L6_3 = CS
        L6_3 = L6_3.RPG
        L6_3 = L6_3.GameCore
        L6_3 = L6_3.MainMissionTypeConfigExcelTable
        L6_3 = L6_3.GetData
        L7_3 = L5_3.MainMissionType
        L7_3 = #L7_3
        L6_3 = L6_3(L7_3)
        if L5_3 then
          L7_3 = L5_3.IsFinish
          if not L7_3 then
            L7_3 = L5_3.IsStart
            if L7_3 then
              L7_3 = G
              L7_3 = L7_3.GotoManager
              L7_3 = L7_3.Goto
              L8_3 = 700
              L9_3 = {}
              L10_3 = L5_3.MainMissionType
              L10_3 = #L10_3
              L11_3 = A0_2._premission_id_list
              L11_3 = L11_3[L4_3]
              L9_3[1] = L10_3
              L9_3[2] = L11_3
              L7_3(L8_3, L9_3)
              return
            end
          end
        end
      end
    else
      L1_3 = L3_1.GetData
      L2_3 = "SilverWolf_PrePhoneMessage_GroupID"
      L1_3 = L1_3(L2_3)
      L2_3 = G
      L2_3 = L2_3.GotoManager
      L2_3 = L2_3.Goto
      L3_3 = 4000
      L4_3 = {}
      L5_3 = tonumber
      L6_3 = L1_3.Value
      L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3 = L5_3(L6_3)
      L4_3[1] = L5_3
      L4_3[2] = L6_3
      L4_3[3] = L7_3
      L4_3[4] = L8_3
      L4_3[5] = L9_3
      L4_3[6] = L10_3
      L4_3[7] = L11_3
      L2_3(L3_3, L4_3)
    end
  end
  L4_2(L5_2, L6_2)
end
L0_1._on_btn_goto_mission = L4_1
return L0_1
