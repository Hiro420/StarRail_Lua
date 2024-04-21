local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EditVirtualTeamPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._cached_added_avatar_ids = L1_2
  L1_2 = {}
  A0_2._cached_removed_avatar_ids = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamGetTrialAvatar
  L4_2 = A0_2._try_show_avatar_added
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TeamTrialAvatarLeave
  L4_2 = A0_2._try_show_avatar_removed
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A1_2 then
    return
  end
  L2_2 = 1
  L3_2 = A0_2._cached_added_avatar_ids
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._do_show_avatar_added
    L8_2 = A0_2._cached_added_avatar_ids
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = {}
  A0_2._cached_added_avatar_ids = L2_2
  L2_2 = 1
  L3_2 = A0_2._cached_removed_avatar_ids
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._do_show_avatar_removed
    L8_2 = A0_2._cached_removed_avatar_ids
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = {}
  A0_2._cached_removed_avatar_ids = L2_2
end
L0_1._on_owner_active_change = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._owner_is_top_page
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._do_show_avatar_added
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._cached_added_avatar_ids
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._try_show_avatar_added = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._owner_is_top_page
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._do_show_avatar_removed
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._cached_removed_avatar_ids
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._try_show_avatar_removed = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._should_show_hint
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.ToastModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.try_show_trial_avatar_added
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "VTeamCreateConfirmDialog"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.IntValue
  if L2_2 == 1 then
    L3_2 = A0_2
    L2_2 = A0_2._do_show_edit_dialog
    L4_2 = A1_2
    L5_2 = "UIText_CreateTrialPlayerEditTeamConfirm"
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._do_show_avatar_added = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "VTeamDelConfirmDialog"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.IntValue
  if L2_2 == 1 then
    L3_2 = A0_2
    L2_2 = A0_2._do_show_edit_dialog
    L4_2 = A1_2
    L5_2 = "UIText_ConfirmDialog_TrialLeave"
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._do_show_avatar_removed = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ToastPile
  L3_2 = L3_2()
  L3_2.DescTextID = A2_2
  L5_2 = A0_2
  L4_2 = A0_2._get_trial_avatar_name
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L3_2.TextIDParam = L4_2
  L4_2 = G
  L4_2 = L4_2.NotifyManager
  L4_2 = L4_2.notify
  L5_2 = G
  L5_2 = L5_2.CS
  L5_2 = L5_2.NotifyType
  L5_2 = L5_2.UIPileToastMessageStruct
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L0_1._do_show_toast = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._get_trial_avatar_name
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ConfirmDialogUtil
  L4_2 = L4_2.ShowOkCancelHint
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.TextID
  L6_2 = L6_2.empty
  function L7_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = G
      L1_3 = L1_3.UIManager
      L1_3 = L1_3.load_and_async_show
      L2_3 = "Ui.Team.TeamEditMainPage"
      L1_3(L2_3)
    end
  end
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.GetComponentContent
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = A2_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._do_show_edit_dialog = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AvatarModule
  L3_2 = L2_2
  L2_2 = L2_2.GetTrialAvatar
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogError
    L4_2 = "can not find avatar config, id: "
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = false
    return L3_2
  end
  L3_2 = L2_2.SpecialAvatarID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GamePlayStatic
  L4_2 = L4_2.AdventureGetSpecialAvatarRowByAvatarID
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 == nil then
    L5_2 = G
    L5_2 = L5_2.SuperDebug
    L5_2 = L5_2.LogError
    L6_2 = "can not find special avatar config, id: "
    L7_2 = tostring
    L8_2 = A1_2
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
    L5_2 = false
    return L5_2
  end
  L5_2 = L4_2.HasJoinHint
  return L5_2
end
L0_1._should_show_hint = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AvatarModule
  L3_2 = L2_2
  L2_2 = L2_2.GetTrialAvatar
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogError
    L4_2 = "can not find avatar config, id: "
    L5_2 = tostring
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L3_2(L4_2)
    L3_2 = ""
    return L3_2
  end
  L3_2 = G
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = L2_2.Row
  L4_2 = L4_2.AvatarName
  return L3_2(L4_2)
end
L0_1._get_trial_avatar_name = L1_1
return L0_1
