local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Audio.NetworkChangeAlertDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "NetworkChangeAlertDialog"
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
  A0_2.audio_item = nil
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.NetworkChangeAlertDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
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
  L4_2 = A0_2._exit
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetDownloadedAudioItems
  L1_2 = L1_2(L2_2)
  A0_2._downloaded_audio = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAudioItemByAudioKey
  L3_2 = A0_2.language_key
  L1_2 = L1_2(L2_2, L3_2)
  A0_2.audio_item = L1_2
  L1_2 = A0_2.language_key
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.download_size
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = A0_2.audio_item
    L3_2 = L3_2.Size
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.callback
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2
    L3_2 = false
    L2_2(L3_2)
  end
end
L0_1._on_cancel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.callback
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2
    L3_2 = false
    L2_2(L3_2)
  end
end
L0_1._exit = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2.language_key = A1_2
  A0_2.callback = A2_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.language_key
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2.callback
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2
    L3_2 = true
    L2_2(L3_2)
  end
end
L0_1._on_confirm = L2_1
return L0_1
