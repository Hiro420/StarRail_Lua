local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Debug.Scattered.DebugVersionUpdatePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Base.CsLua.CsToLua"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "DebugVersionUpdatePage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DebugVersionUpdatePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DesignDataBundleLoadStart
  L4_2 = L1_1._start_load_design_data_bundle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DesignDataBundleLoadProgress
  L4_2 = A0_2._on_design_data_bundle_load_progress
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DesignDataBundleLoadEnd
  L4_2 = A0_2._on_design_data_bundle_load_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DownloadAsbBlocksStart
  L4_2 = A0_2._on_update_progress
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ProgressUpdate
  L4_2 = A0_2._on_update_progress
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LocalAssetVerifyStart
  L4_2 = A0_2._on_update_progress
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LocalAssetVerifyProgress
  L4_2 = A0_2._on_update_progress
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.VersionUpdateComplete
  L4_2 = A0_2._enter_game
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.LoginServerFailed
  L4_2 = A0_2._login_failed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GameContextStart
  L4_2 = A0_2._login_failed
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._add_handlers = L2_1
function L2_1(A0_2, A1_2)
end
L1_1._start_load_design_data_bundle = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._login_failed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.ProgressValue
  L3_2 = G
  L3_2 = L3_2.StrUtils
  L3_2 = L3_2.Concat
  L4_2 = G
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = "UIText_ASB_ResPackage_LoadDasignData"
  L4_2 = L4_2(L5_2)
  L5_2 = "("
  L6_2 = A1_2.DescStr
  L7_2 = ")"
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_state_text
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.progress_slider
  L4_2.fillAmount = L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.download_state_text
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A1_2.DescTextID
  L4_2(L5_2, L6_2)
end
L1_1._on_design_data_bundle_load_progress = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.progress_slider
  L2_2.fillAmount = 1
end
L1_1._on_design_data_bundle_load_end = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A1_2
  L3_2 = ""
  L4_2 = A1_2.DownloadSize
  if L4_2 ~= nil then
    L4_2 = A1_2.DownloadSize
    if L4_2 ~= "" then
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "(%s)(%s)(%0.1f%%)"
      L6_2 = A1_2.DownloadSpeed
      L7_2 = A1_2.DownloadSize
      L8_2 = A1_2.ProgressValue
      L8_2 = L8_2 * 100
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L3_2 = L4_2
  end
  else
    L4_2 = A1_2.TotalSize
    if 0 < L4_2 then
      L4_2 = "("
      L5_2 = tostring
      L6_2 = A1_2.CurSize
      L5_2 = L5_2(L6_2)
      L6_2 = "/"
      L7_2 = tostring
      L8_2 = A1_2.TotalSize
      L7_2 = L7_2(L8_2)
      L8_2 = ")"
      L3_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._set_state_text
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.progress_slider
  L5_2 = L2_2.ProgressValue
  L4_2.fillAmount = L5_2
  L4_2 = L2_2.DescStr
  if L4_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.download_state_text
    L5_2 = L4_2
    L4_2 = L4_2.SetCustomizedText
    L6_2 = L2_2.DescStr
    L4_2(L5_2, L6_2)
  end
end
L1_1._on_update_progress = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.state_text
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._set_state_text = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._enter_game = L2_1
return L1_1
