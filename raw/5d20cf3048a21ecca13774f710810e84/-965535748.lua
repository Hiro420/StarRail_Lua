local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoPhotoGraphSystemCommand"
L2_1 = "Logic.Goto.BaseCommand"
L0_1 = L0_1(L1_1, L2_1)
L0_1._text_photograph_forbid = "UIText_PhotoGraph_Forbid"
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.PhotoGraphSys
  L4_2 = L2_2.IsInDanger
  if not L4_2 then
    L5_2 = L3_2
    L4_2 = L3_2.IsInTutorial
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      goto lbl_19
    end
  end
  L4_2 = false
  L5_2 = L0_1._text_photograph_forbid
  do return L4_2, L5_2 end
  ::lbl_19::
  L4_2 = true
  L5_2 = ""
  return L4_2, L5_2
end
L0_1._check_goto_condition = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A2_2 == nil then
    L3_2 = L0_1.super
    L3_2 = L3_2.get_params
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    A2_2 = L3_2
  end
  L3_2 = A2_2[1]
  L4_2 = A2_2[2]
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.PhotoGraphModeType
  L5_2 = L5_2.Identify
  L5_2 = #L5_2
  if L3_2 == L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._goto_identify
    L5_2(L6_2)
    return
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.PhotoGraphUIMode
  L5_2 = L5_2.CommonShotDecal
  L5_2 = #L5_2
  if L4_2 == L5_2 then
    L6_2 = A0_2
    L5_2 = A0_2._goto_common_shot
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.PhotoGraphModeType
    L7_2 = L7_2.CommonShotFirstPerson
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_ModuleManager
  L5_2 = L5_2.PhotoGraphModule
  L7_2 = L5_2
  L6_2 = L5_2.GetSettingData
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.GameCore
  L8_2 = L8_2.PhotoGraphSettingItemType
  L8_2 = L8_2.DefaultFirstPerspective
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 ~= nil then
    L7_2 = L6_2.IsEnable
    if L7_2 then
      L8_2 = A0_2
      L7_2 = A0_2._goto_common_shot
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.PhotoGraphModeType
      L9_2 = L9_2.CommonShotFirstPerson
      L10_2 = L4_2
      L7_2(L8_2, L9_2, L10_2)
  end
  else
    L8_2 = A0_2
    L7_2 = A0_2._goto_common_shot
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.PhotoGraphModeType
    L9_2 = L9_2.CommonShotThirdPerson
    L10_2 = L4_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1.execute = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.StartPhotoGraph
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = "Ui.PhotoGraph.PhotoGraphMainPage"
  L3_2 = L3_2(L4_2)
  if A2_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.init_extra_mode
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
  L5_2 = L3_2
  L4_2 = L3_2.async_show
  L4_2(L5_2)
end
L0_1._goto_common_shot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.StartPhotoGraph
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.PhotoGraphModeType
  L3_2 = L3_2.Identify
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = "Ui.PhotoGraph.IdentifyMode.IdentifyMainPage"
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.async_show
  L2_2(L3_2)
end
L0_1._goto_identify = L1_1
return L0_1
