local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "CommonActivityStateUtils"
L0_1 = L0_1(L1_1)
L1_1 = {}
L1_1.GuideTakeMission = 1
L1_1.GuideGoto = 2
L1_1.ActivityGoto = 3
L0_1.ReportGuideType = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = 0
  L5_2 = nil
  L6_2 = A0_2.IsResidentPanel
  if L6_2 then
    L5_2 = A0_2.UnlockScheduleData
  else
    L5_2 = A0_2.ScheduleData
  end
  if L5_2 ~= nil then
    L4_2 = L5_2.ActivityID
  end
  L6_2 = A0_2.PanelID
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.SDKLuaReportAdapter
  L7_2 = L7_2.ReportActivityPanelButtonGoClick
  L8_2 = L4_2
  L9_2 = L6_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
L0_1.report_activity_panel_btn_go_click = L1_1
L1_1 = G
L1_1.CommonActivityStateUtils = L0_1
return L0_1
