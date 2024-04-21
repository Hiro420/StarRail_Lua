local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.VersionUpdate.HotUpdatePageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HotUpdatePageContext"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.HotUpdatePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.super
  L1_2 = L1_2._setup_view
  L2_2 = A0_2
  L1_2(L2_2)
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
  L4_2 = A0_2._on_update_end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.StateText
  L1_2.text = ""
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GameCoreConfigManager
  L2_2 = L2_2.CurProgress
  L2_2 = L2_2 * 1.0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameCoreConfigManager
  L3_2 = L3_2.Total
  L2_2 = L2_2 / L3_2
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.2f"
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = G
  L4_2 = L4_2.StrUtils
  L4_2 = L4_2.Concat
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = "UIText_ASB_ResPackage_LoadDasignData"
  L5_2 = L5_2(L6_2)
  L6_2 = "("
  L7_2 = L3_2
  L8_2 = ")"
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  L3_2 = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._set_state_text
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.ProgressSlider
  L4_2.fillAmount = L2_2
  return L3_2
end
L0_1._on_design_data_bundle_load_progress = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.ProgressSlider
  L2_2.fillAmount = 1
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_design_data_bundle_load_end = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_LoadingManager
  L3_2 = L2_2
  L2_2 = L2_2.ReportLoadingUIEnd
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1._on_update_end = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._set_state_text
  L5_2 = L2_2.DescStr
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.ProgressSlider
  L4_2 = L2_2.ProgressValue
  L3_2.fillAmount = L4_2
end
L0_1._on_update_progress = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.StateText
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_state_text = L1_1
return L0_1
