local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoHyperlinkPageCommand"
L2_1 = "Logic.Goto.BaseCommand"
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A1_2.ParamStringList
  L2_2 = L2_2[0]
  L3_2 = A1_2.ParamStringList
  L3_2 = L3_2[1]
  if L2_2 == "OpenURL1" then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.OpeUtil
    L4_2 = L4_2.OpenURLInExternalBrowser
    L5_2 = L3_2
    L4_2(L5_2)
  elseif L2_2 == "OpenURL2" then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.OpeUtil
    L4_2 = L4_2.OpenURLInEmbeddedBrowser
    L5_2 = L3_2
    L4_2(L5_2)
  elseif L2_2 == "OpenURL3" then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.OpeUtil
    L4_2 = L4_2.OpenURLDirect
    L5_2 = L3_2
    L6_2 = true
    L4_2(L5_2, L6_2)
  elseif L2_2 == "OpenURL4" then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.OpeUtil
    L4_2 = L4_2.OpenURLDirect
    L5_2 = L3_2
    L6_2 = false
    L4_2(L5_2, L6_2)
  elseif L2_2 == "OpenURL5" then
    L5_2 = A0_2
    L4_2 = A0_2._open_dispatch_url
    L6_2 = L3_2
    L7_2 = false
    L8_2 = true
    L9_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  elseif L2_2 == "OpenURL6" then
    L5_2 = A0_2
    L4_2 = A0_2._open_dispatch_url
    L6_2 = L3_2
    L7_2 = true
    L8_2 = true
    L9_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  elseif L2_2 == "OpenURL7" then
    L5_2 = A0_2
    L4_2 = A0_2._open_dispatch_url
    L6_2 = L3_2
    L7_2 = G
    L7_2 = L7_2.Utils
    L7_2 = L7_2.is_pc_mode
    L7_2 = L7_2()
    L8_2 = true
    L9_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  elseif L2_2 == "OpenURL8" then
    L5_2 = A0_2
    L4_2 = A0_2._open_dispatch_url
    L6_2 = L3_2
    L7_2 = OVERSEA_BUILD
    L7_2 = not L7_2
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.AppUtils
    L8_2 = L8_2.IsAndroidPlatform
    L8_2 = not L8_2
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.AppUtils
    L9_2 = L9_2.IsAndroidPlatform
    L9_2 = not L9_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  elseif L2_2 == "OpenURL9" then
    L4_2 = A1_2.ParamStringList
    L4_2 = L4_2[2]
    L6_2 = A0_2
    L5_2 = A0_2._open_dispatch_url_with_webview_rule
    L7_2 = L3_2
    L8_2 = L4_2
    L5_2(L6_2, L7_2, L8_2)
  elseif L2_2 == "None" then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogFormat
    L5_2 = "GotoHyperlinkPageCommand: DO NOTHIING"
    L4_2(L5_2)
  else
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "GotoHyperlinkPageCommand NO THIS TYPE "
    L6_2 = tostring
    L7_2 = L2_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 .. L6_2
    L4_2(L5_2)
  end
end
L0_1.execute = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == "official_community_url" then
    L5_2 = G
    L5_2 = L5_2.OperationModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.record_community_seen
    L5_2(L6_2)
  elseif A1_2 == "custom_service_url" then
  elseif A1_2 == "hot_point_url" then
    L5_2 = G
    L5_2 = L5_2.OperationModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.record_hot_point_seen
    L5_2(L6_2)
  elseif A1_2 == "web_tool_url" then
    L5_2 = G
    L5_2 = L5_2.OperationModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.record_game_tool_seen
    L5_2(L6_2)
  elseif A1_2 == "cloud_game_url" then
    L5_2 = G
    L5_2 = L5_2.OperationModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.record_cloud_game_seen
    L5_2(L6_2)
  end
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.OpeUtil
  L5_2 = L5_2.OpenDispatchUrl
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1._open_dispatch_url = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = true
  L5_2 = A0_2
  L4_2 = A0_2._get_webview_type
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.OpenURLWebViewType
  L5_2 = L5_2.Embedded
  L5_2 = #L5_2
  if L4_2 == L5_2 then
    L3_2 = false
  end
  L6_2 = A0_2
  L5_2 = A0_2._open_dispatch_url
  L7_2 = A1_2
  L8_2 = L3_2
  L9_2 = true
  L10_2 = true
  return L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._open_dispatch_url_with_webview_rule = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.OpenURLWebViewRuleExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.OpenURLWebViewType
    L3_2 = L3_2.External
    L3_2 = #L3_2
    return L3_2
  end
  L3_2 = L2_2.Default
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AppUtils
  L4_2 = L4_2.IsWindowsPlatform
  if not L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AppUtils
    L4_2 = L4_2.IsWindowsEditor
    if not L4_2 then
      goto lbl_34
    end
  end
  L3_2 = L2_2.Windows
  goto lbl_51
  ::lbl_34::
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AppUtils
  L4_2 = L4_2.IsAndroidPlatform
  if L4_2 then
    L3_2 = L2_2.Android
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AppUtils
    L4_2 = L4_2.IsApplePlatform
    if L4_2 then
      L3_2 = L2_2.iOS
    end
  end
  ::lbl_51::
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.OpenURLWebViewType
  L4_2 = L4_2.None
  L4_2 = #L4_2
  if L3_2 == L4_2 then
    L3_2 = L2_2.Default
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.OpenURLWebViewType
  L4_2 = L4_2.None
  L4_2 = #L4_2
  if L3_2 == L4_2 then
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.OpenURLWebViewType
    L4_2 = L4_2.External
    L3_2 = #L4_2
  end
  return L3_2
end
L0_1._get_webview_type = L1_1
return L0_1
