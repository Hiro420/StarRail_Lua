local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Expedition.ExpeditionUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ExpeditionDetailBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Assignment_AssignConfirm_Btn"
L2_1 = "UIText_Assignment_AssignInProgress"
L3_1 = "4031"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.ExpeditionModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.NetworkManager
L5_1 = L5_1.OOGONDGGKMI
function L6_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_accept_callback = A1_2
  A0_2._on_btn_accept_callback_self = A2_2
end
L0_1.register_on_btn_accept_callback = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_accept
  L4_2 = A0_2._on_btn_accept
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_btn_receive
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reverse
  L4_2 = A0_2._on_btn_reverse
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive_all
  L4_2 = A0_2._on_btn_receive_all
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    A0_2._expedition_data = A1_2
  end
  L3_2 = G
  L3_2 = L3_2.ExpeditionUtils
  L3_2 = L3_2.get_finish_time_stamp
  L4_2 = A0_2._expedition_data
  L3_2 = L3_2(L4_2)
  A0_2._finish_time = L3_2
  L3_2 = A0_2._expedition_data
  L3_2 = L3_2.MinSelection
  A0_2._avatar_min_select_num = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._is_activity
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = "UIText_ActivityExpedition_MinAssign_Label"
    if L3_2 then
      goto lbl_21
    end
  end
  L3_2 = "UIText_Assignment_MinAssign_Label"
  ::lbl_21::
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_btn_accept_disable_hint
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2
  L7_2 = A0_2._avatar_min_select_num
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._expedition_data
  if L4_2 then
    L4_2 = A0_2._expedition_data
    L4_2 = L4_2.Status
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.ExpeditionStatus
    L5_2 = L5_2.InProgress
    if L4_2 == L5_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.TimeManager
      L4_2 = L4_2.Instance
      L4_2 = L4_2.NowTimeStamp
      L5_2 = A0_2._finish_time
      if L4_2 >= L5_2 then
        L5_2 = A0_2
        L4_2 = A0_2._setup_complete_view
        L4_2(L5_2)
      else
        L5_2 = A0_2
        L4_2 = A0_2._setup_in_progress_view
        L4_2(L5_2)
      end
  end
  else
    L5_2 = A0_2
    L4_2 = A0_2._setup_select_view
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_btn_view
  L4_2(L5_2)
end
L0_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_receive
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reverse
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_accept
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_complete_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_receive
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_reverse
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_accept
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_accept_btn_status
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn_accept
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1._setup_in_progress_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_receive
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reverse
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_accept
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_accept_btn_status
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2._avatar_min_select_num
    L4_2 = A1_2 >= L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_btn_accept
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1
  L2_2(L3_2, L4_2)
end
L0_1._setup_select_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._expedition_data
  if L2_2 then
    L2_2 = A0_2._expedition_data
    L2_2 = L2_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ExpeditionStatus
    L3_2 = L3_2.InProgress
    L2_2 = L2_2 == L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_accept
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = not L2_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_accept_disable_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2 and L5_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_accept_btn_status = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._is_activity
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._has_group_available
  L1_2 = not L1_2 and L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_receive_all
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TutorialTaskUnlock
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_btn_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L4_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAllCompletedExpeditionIDs
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Count
  L1_2 = 0 < L1_2
  return L1_2
end
L0_1._has_group_available = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L5_1
  L2_2 = L1_2
  L1_2 = L1_2.KIIBMLOOALP
  L3_2 = L4_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAllCompletedExpeditionIDs
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_receive_all = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ExpeditionStatus
  L2_2 = L2_2.InProgress
  if L1_2 ~= L2_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowConfirmDialog
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._is_activity
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L1_3 = L4_1
        L2_3 = L1_3
        L1_3 = L1_3.CancelActivityExpedition
        L3_3 = A0_2._expedition_data
        L3_3 = L3_3.ID
        L1_3(L2_3, L3_3)
      else
        L1_3 = L4_1
        L2_3 = L1_3
        L1_3 = L1_3.SendCancelExpeditionCsReq
        L3_3 = A0_2._expedition_data
        L3_3 = L3_3.ID
        L1_3(L2_3, L3_3)
      end
    end
  end
  L1_2 = L1_2(L2_2)
  L2_2 = DialogBtnMode
  L2_2 = L2_2.eOkCancel
  L1_2.Mode = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.GetComponentContent
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Assignment_AssignRevoke_ConfirmDialog"
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_reverse = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ExpeditionStatus
  L2_2 = L2_2.InProgress
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_activity
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L4_1
    L2_2 = L1_2
    L1_2 = L1_2.TakeActivityExpeditionReward
    L3_2 = A0_2._expedition_data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  else
    L1_2 = L4_1
    L2_2 = L1_2
    L1_2 = L1_2.SendTakeExpeditionReward
    L3_2 = A0_2._expedition_data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_receive = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._expedition_data
  L1_2 = L1_2.IsActivity
  L1_2 = L1_2 == true
  return L1_2
end
L0_1._is_activity = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L4_1.TeamInProgressCount
  L2_2 = L4_1.TeamCount
  if L1_2 >= L2_2 then
    L1_2 = {}
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "UIText_Assignment_Toast_OverAssignLimit"
    L2_2(L3_2, L4_2)
    L2_2 = {}
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessage
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    return
  end
  L1_2 = A0_2._on_btn_accept_callback
  if L1_2 then
    L1_2 = A0_2._on_btn_accept_callback_self
    if L1_2 then
      L1_2 = A0_2._on_btn_accept_callback
      L2_2 = A0_2._on_btn_accept_callback_self
      L1_2(L2_2)
    end
  end
end
L0_1._on_btn_accept = L6_1
return L0_1
