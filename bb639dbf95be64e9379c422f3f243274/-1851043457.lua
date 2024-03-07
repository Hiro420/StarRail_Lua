local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleCollegeDetailVideoTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BattleCollegeModule
L2_1 = "UIText_BattleCollege_VideoTab"
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._on_select_callback = nil
  A0_2._on_select_listener = nil
  A0_2._on_select_param = nil
  L1_2 = A0_2._mana_player
  if L1_2 ~= nil then
    L1_2 = A0_2._mana_player
    L2_2 = L1_2
    L1_2 = L1_2.Clear
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.set_exit_callback
  L3_2 = A0_2._on_exit
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.data = A1_2
  L2_2 = A1_2.Row
  A0_2.data_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_video_panel
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_image_cover
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.image_cover
  L4_2 = A0_2.data_row
  L4_2 = L4_2.VideoCoverPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.data_row
  L3_2 = L3_2.StageIntroTitle
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.play_video
  L3_2 = A0_2.data_row
  L3_2 = L3_2.VideoAssetID
  L1_2(L2_2, L3_2)
end
L0_1.setup_video_panel = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._mana_player
  if L2_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ManaVideoPlayer
    L2_2 = L2_2.CreatePlayer
    L3_2 = A0_2._binder
    L3_2 = L3_2.image_trans
    L3_2 = L3_2.gameObject
    L4_2 = true
    L5_2 = false
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._mana_player = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.caption_component
    L3_2 = L2_2
    L2_2 = L2_2.SetCaptionParam
    L4_2 = A0_2._mana_player
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.caption_component
    L3_2 = L2_2
    L2_2 = L2_2.Bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_subtitle
    L5_2 = A0_2._binder
    L5_2 = L5_2.canvas_group_caption
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_subtitle
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = nil
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.LoopCGConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.GetModifiedFileNameByPlayerGender
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  end
  if L2_2 == nil then
    return
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GameCoreConfigLoader
  L4_2 = L4_2.LoadVideoCaptionConfig
  L5_2 = L3_2.CaptionPath
  L4_2 = L4_2(L5_2)
  A0_2.caption_config = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.caption_component
  L5_2 = L4_2
  L4_2 = L4_2.SetCaptionConfig
  L6_2 = A0_2.caption_config
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.caption_component
  L5_2 = L4_2
  L4_2 = L4_2.RefreshCaption
  L4_2(L5_2)
  L4_2 = A0_2._mana_player
  L5_2 = L4_2
  L4_2 = L4_2.SetVideoPath
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._mana_player
  L5_2 = L4_2
  L4_2 = L4_2.SetCallbackAction
  function L6_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_start_play
    L0_3(L1_3)
  end
  function L7_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_finish_play
    L0_3(L1_3)
  end
  function L8_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_before_play
    L0_3(L1_3)
  end
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2.pause_video
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._mana_player
  L5_2 = L4_2
  L4_2 = L4_2.Play
  L4_2(L5_2)
end
L0_1.play_video = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._mana_player
  if L2_2 ~= nil then
    L2_2 = A0_2._mana_player
    L3_2 = L2_2
    L2_2 = L2_2.Pause
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.pause_video = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_tick
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._video_finish_callback
  L3_2 = A0_2._video_finish_callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_finish_play = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_before_play = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_image_cover
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_start_play = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._on_select_callback
  if L1_2 ~= nil then
    L1_2 = A0_2._on_select_callback
    L2_2 = A0_2._on_select_listener
    L3_2 = A0_2._on_select_param
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_select = L3_1
function L3_1(A0_2, A1_2, A2_2, ...)
  local L3_2
  A0_2._on_select_callback = A1_2
  A0_2._on_select_listener = A2_2
  L3_2 = (...)
  A0_2._on_select_param = L3_2
end
L0_1.register_select_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_image_cover
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.image_trans
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.node_image_cover
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = true
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.image_trans
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetActive
        L3_2 = false
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._on_exit = L3_1
return L0_1
