local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Entrance.RaidSaveModeConfirmDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidSaveModeConfirmDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RaidSaveModeConfirmDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._content_text_id = A1_2
  A0_2._confirm_text_id = A2_2
  A0_2._cancel_text_id = A3_2
end
L0_1.init = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._confirm_callback = A1_2
  A0_2._confirm_callback_self = A2_2
end
L0_1.register_confirm_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._cancel_callback = A1_2
  A0_2._cancel_callback_self = A2_2
end
L0_1.register_cancel_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_cancel
  L4_2 = A0_2._on_cancel
  L1_2(L2_2, L3_2, L4_2)
  A0_2._is_click_confirm = false
  A0_2._is_click_cancel = false
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._display_node
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_mono_btn
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "Common_ConfirmDialog_Title"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_content
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._content_text_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._confirm_text_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cancel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cancel_text_id
  L1_2(L2_2, L3_2)
end
L0_1._setup_text = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_cancel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._display_node = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SetActionName
  L3_2 = "Menu_Confirm"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tip_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SetInControlTipKey
  L3_2 = "Menu_Confirm"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_btn_cancel
  L2_2 = L1_2
  L1_2 = L1_2.SetActionName
  L3_2 = "Menu_UnchangeX"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tip_btn_cancel
  L2_2 = L1_2
  L1_2 = L1_2.SetInControlTipKey
  L3_2 = "Menu_UnchangeX"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SetActionName
  L3_2 = "Menu_Cancel"
  L1_2(L2_2, L3_2)
end
L0_1._setup_mono_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._is_click_confirm = true
  L2_2 = A0_2
  L1_2 = A0_2._on_close
  L1_2(L2_2)
end
L0_1._on_confirm = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._is_click_cancel = true
  L2_2 = A0_2
  L1_2 = A0_2._on_close
  L1_2(L2_2)
end
L0_1._on_cancel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_close = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_click_confirm
  if L1_2 then
    L1_2 = A0_2._confirm_callback
    if L1_2 ~= nil then
      L1_2 = A0_2._confirm_callback_self
      if L1_2 ~= nil then
        L1_2 = A0_2._confirm_callback
        L2_2 = A0_2._confirm_callback_self
        L1_2(L2_2)
    end
  end
  else
    L1_2 = A0_2._is_click_cancel
    if L1_2 then
      L1_2 = A0_2._cancel_callback
      if L1_2 ~= nil then
        L1_2 = A0_2._cancel_callback_self
        if L1_2 ~= nil then
          L1_2 = A0_2._cancel_callback
          L2_2 = A0_2._cancel_callback_self
          L1_2(L2_2)
        end
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._reset_mono
  L1_2(L2_2)
end
L0_1._on_unload = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SetActionName
  L3_2 = "Menu_Confirm"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tip_btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SetInControlTipKey
  L3_2 = "Menu_Confirm"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_btn_cancel
  L2_2 = L1_2
  L1_2 = L1_2.SetActionName
  L3_2 = "Menu_Cancel"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_tip_btn_cancel
  L2_2 = L1_2
  L1_2 = L1_2.SetInControlTipKey
  L3_2 = "Menu_Cancel"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SetActionName
  L3_2 = ""
  L1_2(L2_2, L3_2)
end
L0_1._reset_mono = L1_1
return L0_1
