local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.TravelBrochureModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.StoryLineModule
L2_1 = "TravelBrochureDirectoryPage"
L3_1 = G
L3_1 = L3_1.StaticClass
L4_1 = "TravelBrochureUtils"
L3_1 = L3_1(L4_1)
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_UIManager
  L1_2 = L0_2
  L0_2 = L0_2.HasPageInStack
  L2_2 = L2_1
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    return
  end
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_UIManager
  L1_2 = L0_2
  L0_2 = L0_2.TopPage
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.Name
  L2_2 = L2_1
  if L1_2 == L2_2 then
    L2_2 = L0_2
    L1_2 = L0_2.Exit
    L1_2(L2_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.NextPage
  L1_2 = L1_2(L2_2)
  while true do
    L2_2 = L1_2.Name
    L3_2 = L2_1
    if L2_2 == L3_2 then
      break
    end
    L3_2 = L1_2
    L2_2 = L1_2.Exit
    L2_2(L3_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UIManager
    L3_2 = L2_2
    L2_2 = L2_2.NextPage
    L2_2 = L2_2(L3_2)
    L1_2 = L2_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.Exit
  L2_2(L3_2)
  L3_2 = L0_2
  L2_2 = L0_2.Exit
  L2_2(L3_2)
end
L3_1.exit_travel_brochure = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = L3_1.can_open_travel_brochure
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_UIManager
  L1_2 = L0_2
  L0_2 = L0_2.HasPageInStack
  L2_2 = L2_1
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L0_2 = CS
    L0_2 = L0_2.RPG
    L0_2 = L0_2.Client
    L0_2 = L0_2.GlobalVars
    L0_2 = L0_2.s_ModuleManager
    L0_2 = L0_2.TravelBrochureModule
    L1_2 = L0_2
    L0_2 = L0_2.IsEntranceShow
    L0_2 = L0_2(L1_2)
  end
  return L0_2
end
L3_1.show_reddot = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.IsUnlocked
  if not L2_2 then
    L2_2 = A0_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.TravelBrochurePasterType
    L3_2 = L3_2.Text
    if L2_2 == L3_2 then
      L2_2 = 1
      if L2_2 then
        goto lbl_16
      end
    end
    L2_2 = 0
    ::lbl_16::
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TravelBrochureUtils
    L3_2 = L3_2.GetDiaryPasterCount
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TravelBrochureUtils
    L4_2 = L4_2.GetDiaryUnlockedPasterCount
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L3_2 - L4_2
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.SDKLuaReportAdapter
    L4_2 = L4_2.ReportTravelBrochurePreviewPaster
    L5_2 = A0_2.ID
    L6_2 = L2_2
    L7_2 = A1_2
    L8_2 = L3_2
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.TravelBrochureUtils
    L9_2 = L9_2.GetLockedPasterCount
    L9_2 = L9_2()
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
end
L3_1.try_report_preview_paster = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L3_1.can_open_travel_brochure
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L0_2 = L0_1.HasSeenBrochure
  if L0_2 then
    L0_2 = G
    L0_2 = L0_2.UIManager
    L0_2 = L0_2.load_and_show
    L1_2 = "Ui.TravelBrochure.TravelBrochureDirectoryPage"
    L0_2(L1_2)
    return
  end
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_UIManager
  L1_2 = L0_2
  L0_2 = L0_2.BeginShowGroup
  L0_2(L1_2)
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_show
  L1_2 = "Ui.TravelBrochure.TravelBrochureDirectoryPage"
  L0_2(L1_2)
  L0_2 = G
  L0_2 = L0_2.UIManager
  L0_2 = L0_2.load_and_show
  L1_2 = "Ui.TravelBrochure.TravelBrochureFirstPage"
  L0_2(L1_2)
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_UIManager
  L1_2 = L0_2
  L0_2 = L0_2.EndShowGroup
  L0_2(L1_2)
end
L3_1.open_travel_brochure = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L1_1
  L1_2 = L0_2
  L0_2 = L0_2.IsMainLine
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = true
    return L0_2
  end
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.ConstValueClientExcelTable
  L0_2 = L0_2.GetData
  L1_2 = "TravelBrochure_UnlockStoryline"
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.Value
  L0_2 = L0_2.ArrayValue
  if L0_2 ~= nil then
    L1_2 = 0
    L2_2 = L0_2.Length
    L2_2 = L2_2 - 1
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = L0_2[L4_2]
      L5_2 = L5_2.UintValue
      L6_2 = L1_1
      L7_2 = L6_2
      L6_2 = L6_2.IsStoryLine
      L8_2 = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = true
        return L6_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L3_1.can_open_travel_brochure = L4_1
return L3_1
