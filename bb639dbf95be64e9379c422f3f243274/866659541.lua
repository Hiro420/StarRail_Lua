local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.Video.CommonVideoPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonVideoPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.CommonVideoPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._can_skip = false
  A0_2.is_loop = false
  A0_2.end_pause = false
  A0_2.skip_text_id = "UIText_SkipStory"
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.SetMuteBGM
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._video_id = A1_2
  A0_2._can_skip = A2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_hide
  L4_2 = A0_2._on_btn_hide
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skip
  L4_2 = A0_2._on_btn_skip
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_mana_player
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._mana_player
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ManaVideoPlayer
    L1_2 = L1_2.CreatePlayer
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_video
    L2_2 = L2_2.gameObject
    L3_2 = A0_2.is_loop
    L4_2 = A0_2.end_pause
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._mana_player = L1_2
  end
  L1_2 = A0_2._mana_player
  L2_2 = L1_2
  L1_2 = L1_2.SetVideoID
  L3_2 = A0_2._video_id
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mana_player
  L2_2 = L1_2
  L1_2 = L1_2.SetVideoPath
  L4_2 = A0_2
  L3_2 = A0_2._get_video_path
  L5_2 = A0_2._video_id
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._mana_player
  L2_2 = L1_2
  L1_2 = L1_2.SetCallbackAction
  L3_2 = nil
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_video_end
    L0_3(L1_3)
  end
  L5_2 = nil
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._mana_player
  L2_2 = L1_2
  L1_2 = L1_2.BindCaption
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.VideoCaptionPosition
  L3_2 = L3_2.Bottom
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_bottom_caption
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_bottom_caption
  L6_2 = A0_2._binder
  L6_2 = L6_2.canvas_group_bottom_caption
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._mana_player
  L2_2 = L1_2
  L1_2 = L1_2.BindCaption
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.VideoCaptionPosition
  L3_2 = L3_2.Center
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_center_caption
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_center_caption
  L6_2 = A0_2._binder
  L6_2 = L6_2.canvas_group_center_caption
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._init_mana_player = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.VideoConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.VideoPath
    return L3_2
  end
end
L0_1._get_video_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_func_view
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mana_player
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.SetMuteBGM
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_bg
  L3_2 = not A1_2
  L2_2.interactable = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_func
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_func_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2.end_pause
  if L1_2 then
    L1_2 = A0_2._mana_player
    if L1_2 ~= nil then
      L1_2 = A0_2._mana_player
      L2_2 = L1_2
      L1_2 = L1_2.SeekToBegin
      L1_2(L2_2)
    end
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Common.Video.VideoEndDialog"
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.LuaTable
    L3_2 = L2_2
    L2_2 = L2_2.register_replay_callback
    L4_2 = A0_2._on_btn_replay
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = L1_2.LuaTable
    L3_2 = L2_2
    L2_2 = L2_2.register_finish_callback
    L4_2 = A0_2._on_btn_finish
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_video_end = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.exit_all_child_dialogs
  L1_2(L2_2)
  A0_2._can_skip = true
  L1_2 = A0_2._mana_player
  L2_2 = L1_2
  L1_2 = L1_2.Pause
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_mana_player
  L1_2(L2_2)
  L1_2 = A0_2._mana_player
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
end
L0_1._on_btn_replay = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit_all_child_dialogs
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._close
    L0_3(L1_3)
  end
  L1_2(L2_2)
end
L0_1._on_btn_finish = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mana_player
  if L1_2 ~= nil then
    L1_2 = A0_2._mana_player
    L2_2 = L1_2
    L1_2 = L1_2.Clear
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._close = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._can_skip
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_func_view
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_bg = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_func_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_hide = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._can_skip
  if not L1_2 then
    return
  end
  L1_2 = A0_2._mana_player
  L1_2 = L1_2.IsPaused
  L2_2 = A0_2._mana_player
  L3_2 = L2_2
  L2_2 = L2_2.Pause
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Dialogue.DialogueSkipDialog"
  L4_2 = A0_2.skip_text_id
  L5_2 = nil
  L6_2 = nil
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._close
      L1_3(L2_3)
    end
    L1_3 = A0_2._mana_player
    if L1_3 ~= nil then
      L1_3 = A0_2._mana_player
      L2_3 = L1_3
      L1_3 = L1_3.Pause
      L3_3 = L1_2
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_btn_skip = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._in_control_exit_click = L1_1
return L0_1
