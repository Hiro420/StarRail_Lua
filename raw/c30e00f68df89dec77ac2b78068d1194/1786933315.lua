local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonBuffSelectPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonBuffSelectPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_TreasureDungeon_Stage_BuffConfirm"
L2_1 = "UIText_TreasureDungeon_Stage_BuffPick"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonBuffSelectPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._buff_data = A1_2
  A0_2._now_buff_data = A2_2
  L3_2 = A2_2 ~= nil
  A0_2._is_replace = L3_2
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_confirm_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._exit_callback = A1_2
  A0_2._exit_callback_self = A2_2
end
L0_1.register_exit_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 33
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._exit_callback
  L3_2 = A0_2._exit_callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_shortcut_hint
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.new_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._buff_data
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cur_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_replace
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_replace
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.now_buff_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._now_buff_data
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_arrow
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.now_buff_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._refresh_buff = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_replace
  if L1_2 then
    L1_2 = L2_1
    if L1_2 then
      goto lbl_8
    end
  end
  L1_2 = L1_1
  ::lbl_8::
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_replace
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._is_replace
  L2_2(L3_2, L4_2)
end
L0_1._refresh_btn = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.now_buff_panel
    L1_3 = L0_3
    L0_3 = L0_3.can_scroll
    L0_3 = L0_3(L1_3)
    L1_3 = A0_2._is_replace
    if L1_3 and not L0_3 then
      L1_3 = A0_2._binder
      L1_3 = L1_3.new_buff_panel
      L2_3 = L1_3
      L1_3 = L1_3.can_scroll
      L1_3 = L1_3(L2_3)
      L0_3 = L1_3
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.setup_short_cut_hint_panel
    if L0_3 then
      L3_3 = 33
      if L3_3 then
        goto lbl_27
      end
    end
    L3_3 = 1
    ::lbl_27::
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2)
end
L0_1._refresh_shortcut_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_replace
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkCancelHint
    L2_2 = "UIText_TreasureDungeon_Stage_BuffPickTips"
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3
      if A0_3 then
        L1_3 = G
        L1_3 = L1_3.Utils
        L1_3 = L1_3.invoke_callback
        L2_3 = A0_2._callback
        L3_3 = A0_2._callback_self
        L1_3(L2_3, L3_3)
        L1_3 = A0_2
        L2_3 = L1_3
        L1_3 = L1_3.exit
        L1_3(L2_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_confirm = L3_1
return L0_1
