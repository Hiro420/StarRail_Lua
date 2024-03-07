local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Audio.LanguegePackDownloadDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LanguegePackDownloadDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_AudioManager
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.language_key = nil
  A0_2.in_download_panel = false
  A0_2._is_resp_esc = false
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.LanguegePackDownloadDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2.language_key = A1_2
  A0_2.in_download_panel = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.LogTag
  L3_2 = L3_2.LuaHotfix
  L4_2 = "LanguegePackDownloadDialog int {0}"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_exit_callback
  L4_2 = A0_2.exit_callback
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2._start_panel_cancel_btn
  L4_2 = A0_2.startup_cancel_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2._start_panel_confirm_btn
  L4_2 = A0_2.startup_confirm_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2._finish_panel_cancel_btn
  L4_2 = A0_2.finish_cancel_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2._finish_panel_confirm_btn
  L4_2 = A0_2.finish_confirm_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2._download_panel_stop_btn
  L4_2 = A0_2.download_stop_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAudioDownloadChanged
  L4_2 = A0_2._on_download_state_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.DesignDataBundleLoadStart
  L4_2 = A0_2._start_load_design_data_bundle
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
  L4_2 = A0_2._update_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.NetworkChangeToMobileNetwork
  L4_2 = A0_2._on_network_changed
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormatWithTag
  L2_2 = G
  L2_2 = L2_2.LogTag
  L2_2 = L2_2.Default
  L3_2 = "LanguegePackDownloadDialog loading"
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.PrepareDownload
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_start_panel
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetDownloadStage
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2.language_key
  if L2_2 ~= nil then
    L2_2 = #L1_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AudioManager
    L3_2 = L3_2.AudioDownloadState
    L3_2 = L3_2.DOWNLOAD
    L3_2 = #L3_2
    if L2_2 == L3_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.Pause
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Audio.NetworkChangeAlertDialog"
  L4_2 = A0_2.language_key
  L5_2 = A0_2.on_confirm_network
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_network_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.Resume
    L2_2(L3_2)
  else
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.StopDownload
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  end
end
L0_1.on_confirm_network = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.waiting_for_exit
  if L1_2 then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetDownloadStage
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AudioManager
  L3_2 = L3_2.AudioDownloadState
  L3_2 = L3_2.START
  L3_2 = #L3_2
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_start_panel
    L2_2(L3_2)
  else
    L2_2 = #L1_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AudioManager
    L3_2 = L3_2.AudioDownloadState
    L3_2 = L3_2.DOWNLOAD
    L3_2 = #L3_2
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.setup_download_panel
      L2_2(L3_2)
    else
      L2_2 = #L1_2
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.AudioManager
      L3_2 = L3_2.AudioDownloadState
      L3_2 = L3_2.FINISH
      L3_2 = #L3_2
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2.setup_finish_panel
        L2_2(L3_2)
      end
    end
  end
end
L0_1._on_download_state_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.in_download_panel = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.start_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.downloading_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.finish_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AllowedAudioLanguageExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.language_key
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.ShowString
  L2_2 = A0_2._binder
  L2_2 = L2_2._start_panel_content
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Voice_Download_Hint"
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = L1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAudioSize
  L4_2 = A0_2.language_key
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2._start_panel_num_text
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_start_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.StopDownload
  L1_2(L2_2)
end
L0_1.startup_cancel_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.waiting_for_exit
  if L1_2 then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.StopDownload
  L1_2(L2_2)
end
L0_1.exit_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.language_key
  if L1_2 == nil then
    return
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.StartDownload
  L3_2 = A0_2.language_key
  L1_2(L2_2, L3_2)
end
L0_1.startup_confirm_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.in_download_panel = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.start_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.downloading_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.finish_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.setup_download_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2.waiting_for_exit = true
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.StopDownload
  L1_2(L2_2)
end
L0_1.download_stop_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  A0_2.in_download_panel = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.start_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.downloading_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.finish_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AllowedAudioLanguageExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.language_key
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.ShowString
  L2_2 = A0_2._binder
  L2_2 = L2_2._finish_panel_desc_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Voice_Download_Complete_Desc"
  L5_2 = G
  L5_2 = L5_2.TextmapStatic
  L5_2 = L5_2.GetText
  L6_2 = L1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.setup_finish_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1.finish_cancel_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.ApplyAudio
  L3_2 = A0_2.language_key
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
end
L0_1.finish_confirm_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._exit = L2_1
function L2_1(A0_2, A1_2)
end
L0_1._start_load_design_data_bundle = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.in_download_panel
  if not L2_2 then
    return
  end
  L2_2 = G
  L2_2 = L2_2.StrUtils
  L2_2 = L2_2.Concat
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = "UIText_ASB_ResPackage_LoadDasignData"
  L3_2 = L3_2(L4_2)
  L4_2 = "("
  L5_2 = A1_2.DescStr
  L6_2 = ")"
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_state_text
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2._download_panel_progress_slider
  L4_2 = progress
  L3_2.normalizedValue = L4_2
end
L0_1._on_design_data_bundle_load_progress = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.in_download_panel
  if not L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2._download_panel_progress_slider
  L2_2.normalizedValue = 1
end
L0_1._on_design_data_bundle_load_end = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.in_download_panel
  if not L2_2 then
    return
  end
  L2_2 = A1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2._download_panel_state_text
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.DescTextID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2._download_panel_speed_text
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2.DownloadSpeed
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2._download_panel_progress_text
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2.DownloadProgress
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2._download_panel_progress_slider
  L4_2 = L2_2.ProgressValue
  L3_2.normalizedValue = L4_2
end
L0_1._on_update_progress = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.in_download_panel
  if not L2_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2._download_panel_state_text
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_state_text = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._update_finish = L2_1
return L0_1
