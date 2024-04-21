local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.ChallengeEnvironmentInfoDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeEnvironmentInfoDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 20
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ScheduleModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeEnvironmentInfoDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2.show_update_hint = false
  A0_2.show_close_key_hint = true
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._challenge_group_data = A1_2
  if A2_2 ~= nil then
    A0_2.show_update_hint = A2_2
  end
  if A3_2 ~= nil then
    A0_2.show_close_key_hint = A3_2
  end
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_update_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_close_key_hint
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_exit
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_challenge_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_challenge_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_group_data
  L3_2 = L3_2.GroupName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChallengeGroupType
  L2_2 = L2_2.Memory
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_memory_buff_info
    L1_2(L2_2)
  else
    L1_2 = A0_2._challenge_group_data
    L1_2 = L1_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ChallengeGroupType
    L2_2 = L2_2.Story
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_story_buff_info
      L1_2(L2_2)
    end
  end
end
L0_1._setup_challenge_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_update_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.show_update_hint
  L1_2(L2_2, L3_2)
end
L0_1._setup_update_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.show_close_key_hint
  L1_2(L2_2, L3_2)
end
L0_1._setup_close_key_hint = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.GetMazeBuffData
  L2_2 = A0_2._challenge_group_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.MazeBuffID
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L4_2 = L1_2.BuffName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_desc
  L4_2 = G
  L4_2 = L4_2.ChallengeUtils
  L4_2 = L4_2.create_buff_desc_text_id
  L5_2 = A0_2._challenge_group_data
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_memory_buff_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.GetMazeBuffData
  L2_2 = A0_2._challenge_group_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.MazeBuffID
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L4_2 = L1_2.BuffName
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_desc
  L4_2 = G
  L4_2 = L4_2.ChallengeUtils
  L4_2 = L4_2.create_buff_desc_text_id
  L5_2 = A0_2._challenge_group_data
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_story_buff_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_title = L3_1
function L3_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2
    L5_2 = ...
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_desc = L3_1
return L0_1
