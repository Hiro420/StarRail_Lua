local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.CommonRewardStaticListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonRewardStaticListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BattleCollegeDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BattleCollegeModule
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mana_player
  if L1_2 ~= nil then
    L1_2 = A0_2._mana_player
    L2_2 = L1_2
    L1_2 = L1_2.Clear
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.CommonRewardStaticListPanel
  L4_2 = G
  L4_2 = L4_2.CommonRewardStaticListPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_panel = L1_2
  L1_2 = A0_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.set_exit_callback
  L3_2 = A0_2._on_exit
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    return
  end
  A0_2.data = A1_2
  L2_2 = A1_2.Row
  A0_2.data_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_video_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_rewards
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_txt_normal
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.IsAdvanced
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_txt_advanced
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2.IsAdvanced
  L2_2(L3_2, L4_2)
end
L0_1.update_group_status = L2_1
function L2_1(A0_2)
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
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.image_video
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
L0_1.setup_video_panel = L2_1
function L2_1(A0_2, A1_2)
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
  L4_2 = A0_2._mana_player
  L5_2 = L4_2
  L4_2 = L4_2.Play
  L4_2(L5_2)
end
L0_1.play_video = L2_1
function L2_1(A0_2, A1_2)
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
L0_1.pause_video = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._video_finish_callback
  L3_2 = A0_2._video_finish_callback_self
  L1_2(L2_2, L3_2)
end
L0_1._on_finish_play = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_before_play = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_image_cover
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_start_play = L2_1
function L2_1(A0_2)
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
L0_1._on_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.data_row
  L1_2 = L1_2.RewardID
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableSorted
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = {}
  end
  A0_2._reward_items = L2_2
  L2_2 = A0_2.reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.pre_set_all_get
  L4_2 = A0_2.data
  L4_2 = L4_2.Status
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.BattleCollegeData
  L5_2 = L5_2.BattleCollegeStatus
  L5_2 = L5_2.Finish
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._reward_items
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateConfigIDList
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._config_id_list = L2_2
end
L0_1.setup_rewards = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  if L1_2 ~= nil then
    L1_2 = A0_2._config_id_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1.show_reward_dialog = L2_1
return L0_1
