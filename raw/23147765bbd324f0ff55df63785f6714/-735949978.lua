local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Audio.PackageDownloadTipDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PackageDownloadTipDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.language_key = nil
  A0_2.audio_item = nil
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PackageDownloadTipDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.cancel_btn
  L4_2 = A0_2._on_cancel
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.confirm_btn
  L4_2 = A0_2._on_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L4_2 = A0_2._exit_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.callback
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  if L1_2 then
    L2_2 = L1_2
    L3_2 = false
    L2_2(L3_2)
  end
end
L0_1._on_cancel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.callback
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  if L1_2 then
    L2_2 = L1_2
    L3_2 = false
    L2_2(L3_2)
  end
end
L0_1._exit_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2.callback = A1_2
  A0_2.isPredownload = A3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.callback
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  if L1_2 then
    L2_2 = L1_2
    L3_2 = true
    L2_2(L3_2)
  end
end
L0_1._on_confirm = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.download_size_panel
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
  L1_2 = A0_2.isPredownload
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.title_text
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_PreDownload_Btn"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.desc_text
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_PreDownload_Desc"
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.VersionUpdateMgr
    L1_2 = L1_2.GetPredownloadAllSize
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = A0_3 * 1.0
      L1_3 = L1_3 / 1024
      A0_3 = L1_3 / 1024
      L1_3 = tostring
      L2_3 = math
      L2_3 = L2_3.floor
      L3_3 = A0_3
      L2_3, L3_3, L4_3 = L2_3(L3_3)
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L2_3 = "MB"
      L1_3 = L1_3 .. L2_3
      L2_3 = A0_2
      if L2_3 ~= nil then
        L2_3 = A0_2._binder
        if L2_3 ~= nil then
          L2_3 = A0_2._binder
          L2_3 = L2_3.download_size
          if L2_3 ~= nil then
            L2_3 = A0_2._binder
            L2_3 = L2_3.downloading_panel
            L3_3 = L2_3
            L2_3 = L2_3.SafeSetActive
            L4_3 = false
            L2_3(L3_3, L4_3)
            L2_3 = A0_2._binder
            L2_3 = L2_3.download_size_panel
            L3_3 = L2_3
            L2_3 = L2_3.SafeSetActive
            L4_3 = true
            L2_3(L3_3, L4_3)
            L2_3 = A0_2._binder
            L2_3 = L2_3.download_size
            L3_3 = L2_3
            L2_3 = L2_3.SetCustomizedText
            L4_3 = L1_3
            L2_3(L3_3, L4_3)
          end
        end
      end
    end
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.title_text
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ResPack_Hint_Dialog_Title"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.desc_text
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ResPack_Hint_Dialog_Desc_Reopen"
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.VersionUpdateMgr
    L1_2 = L1_2.GetDownloadAllSize
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = A0_3 * 1.0
      L1_3 = L1_3 / 1024
      A0_3 = L1_3 / 1024
      L1_3 = tostring
      L2_3 = math
      L2_3 = L2_3.floor
      L3_3 = A0_3
      L2_3, L3_3, L4_3 = L2_3(L3_3)
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      L2_3 = "MB"
      L1_3 = L1_3 .. L2_3
      L2_3 = A0_2
      if L2_3 ~= nil then
        L2_3 = A0_2._binder
        if L2_3 ~= nil then
          L2_3 = A0_2._binder
          L2_3 = L2_3.download_size
          if L2_3 ~= nil then
            L2_3 = A0_2._binder
            L2_3 = L2_3.downloading_panel
            L3_3 = L2_3
            L2_3 = L2_3.SafeSetActive
            L4_3 = false
            L2_3(L3_3, L4_3)
            L2_3 = A0_2._binder
            L2_3 = L2_3.download_size_panel
            L3_3 = L2_3
            L2_3 = L2_3.SafeSetActive
            L4_3 = true
            L2_3(L3_3, L4_3)
            L2_3 = A0_2._binder
            L2_3 = L2_3.download_size
            L3_3 = L2_3
            L2_3 = L2_3.SetCustomizedText
            L4_3 = L1_3
            L2_3(L3_3, L4_3)
          end
        end
      end
    end
    L1_2(L2_2)
  end
end
L0_1._setup_view = L1_1
return L0_1
