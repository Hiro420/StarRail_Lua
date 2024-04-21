local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.Replay.PunkLordReplayLineupPreviewDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPunkLord.PunkLordUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PunkLordReplayLineupPreviewDialog"
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
  L3_2 = L3_2.PunkLordReplayLineupPreviewDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._battle_record_data = A1_2
  A0_2._punklord_data = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._init_replay_avatar_data
  L3_2(L4_2)
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_replay
  L4_2 = A0_2._enter_replay
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_avatar_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.PunkLordUtils
  L1_2 = L1_2.get_user_nickname_and_head_icon_id_promise
  L2_2 = A0_2._battle_record_data
  L2_2 = L2_2.Uid
  L3_2 = A0_2._async_setup_title
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._replay_avatar_datas
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_avatar_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_replay_status
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._battle_record_data = nil
  A0_2._punklord_data = nil
  A0_2._replay_avatar_datas = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A0_2 ~= nil then
    L3_2 = A0_2._binder
    if L3_2 ~= nil then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_PunkLord_Replay_PlayerName"
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._async_setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._replay_avatar_datas = L1_2
  L1_2 = 0
  L2_2 = A0_2._battle_record_data
  L2_2 = L2_2.AvatarList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._battle_record_data
    L5_2 = L5_2.AvatarList
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.AvatarId
    if L6_2 ~= 0 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = A0_2._replay_avatar_datas
      L8_2 = L5_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._init_replay_avatar_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.AvatarSelectIconPanel
    L8_2 = G
    L8_2 = L8_2.AvatarSelectIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._replay_avatar_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.AvatarData
  L6_2 = L6_2.Create
  L7_2 = L5_2.AvatarId
  L6_2 = L6_2(L7_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_level
  L9_2 = true
  L10_2 = L5_2.AvatarLevel
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.set_show_hp
  L9_2 = false
  L7_2(L8_2, L9_2)
  return L3_2
end
L0_1._on_avatar_item_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._has_replay
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._has_expire
  L2_2 = L2_2(L3_2)
  L3_2 = L1_2 or L3_2
  if L1_2 then
    L3_2 = not L2_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_replay
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_none_replay
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  if not L3_2 then
    if not L1_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_none_replay
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = "UIText_Replay_NotExsist"
      L4_2(L5_2, L6_2)
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.text_none_replay
      L5_2 = L4_2
      L4_2 = L4_2.SafeSetTextID
      L6_2 = "UIText_Replay_Empire"
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._setup_replay_status = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._battle_record_data
  if L1_2 then
    L1_2 = A0_2._battle_record_data
    L1_2 = L1_2.BattleReplayKey
    L2_2 = A0_2._punklord_data
    L3_2 = L2_2
    L2_2 = L2_2.GetReplayByKey
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L2_2 ~= nil
    return L2_2
  end
  L1_2 = false
  return L1_2
end
L0_1._has_replay = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._battle_record_data
  if L1_2 then
    L1_2 = A0_2._battle_record_data
    L1_2 = L1_2.BattleReplayKey
    L2_2 = A0_2._punklord_data
    L3_2 = L2_2
    L2_2 = L2_2.GetReplayByKey
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.BattleUIUtils
      L3_2 = L3_2.IsGameCoreCodeExpire
      L4_2 = L2_2
      return L3_2(L4_2)
    end
  end
  L1_2 = true
  return L1_2
end
L0_1._has_expire = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._battle_record_data
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.BattleUIUtils
    L1_2 = L1_2.LockDownLoadReplayFlag
    if not L1_2 then
      L1_2 = A0_2._battle_record_data
      L1_2 = L1_2.BattleReplayKey
      L2_2 = A0_2._punklord_data
      L3_2 = L2_2
      L2_2 = L2_2.GetReplayByKey
      L4_2 = L1_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.GlobalVars
      L3_2 = L3_2.s_ModuleManager
      L3_2 = L3_2.BattleModule
      L4_2 = A0_2._punklord_data
      L3_2.CurrentPunkLordData = L4_2
      L3_2.CurrentPunkLordReplay = L2_2
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.BattleUIUtils
      L4_2 = L4_2.TryPlayReplay
      L5_2 = L2_2
      L4_2(L5_2)
      L5_2 = A0_2
      L4_2 = A0_2._exit
      L4_2(L5_2)
    end
  end
end
L0_1._enter_replay = L1_1
return L0_1
