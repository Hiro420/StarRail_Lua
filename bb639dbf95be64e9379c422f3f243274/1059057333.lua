local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubResonanceWinDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubResonanceWinDialog"
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
  L3_2 = L3_2.BoxingClubResonanceWinDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._block_input = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._info = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_new_best_record_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_turn_num
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_taken_hint_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._info
  L1_2 = L1_2.OldBestRecord
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.new_record_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.new_record_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._info
  L3_2 = L3_2.OldBestRecord
  L4_2 = A0_2._info
  L4_2 = L4_2.CurrentRecord
  L3_2 = L3_2 > L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_new_best_record_hint = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.total_round
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._info
  L3_2 = L3_2.CurrentRecord
  L1_2(L2_2, L3_2)
end
L0_1._setup_turn_num = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2)
end
L0_1.in_control_exit_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.GetSubMissionDataWithPromise
  L3_2 = 801520302
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaActionOneParam
  function L3_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A0_3.IsStart
      if L1_3 then
        L1_3 = CS
        L1_3 = L1_3.RPG
        L1_3 = L1_3.Client
        L1_3 = L1_3.GlobalVars
        L1_3 = L1_3.s_UIManager
        L2_3 = L1_3
        L1_3 = L1_3.BackToFirstPage
        L1_3(L2_3)
    end
    else
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.exit
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_exit_btn_clicked = L1_1
return L0_1
