local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Common.CommonRewardStaticListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonRewardStaticListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityTelevisionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.TransferModule
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_button_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A1_2 == nil then
    return
  end
  A0_2.data = A1_2
  L3_2 = A1_2.Row
  A0_2.data_row = L3_2
  L3_2 = A1_2.LevelRow
  A0_2.level_row = L3_2
  L4_2 = A1_2
  L3_2 = A1_2.IsRevealed
  L3_2 = L3_2(L4_2)
  A0_2.is_revealed = L3_2
  A0_2.index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.setup_level_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_score
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.index
  A0_2.last_index = L3_2
  A0_2.data = A1_2
  A0_2.index = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_monster
  L3_2 = L3_2.isPlaying
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_monster
    L4_2 = L3_2
    L3_2 = L3_2.Stop
    L3_2(L4_2)
  end
  L3_2 = A0_2.index
  L4_2 = A0_2.last_index
  if L3_2 < L4_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_monster
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = "UI_TvMainPage_MonsterPanelSwitch_TtoB"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_monster
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L5_2 = "UI_TvMainPage_MonsterPanelSwitch_BtoT"
    L3_2(L4_2, L5_2)
  end
end
L0_1.refresh = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "RefreshDetailPanel" then
    L3_2 = A0_2
    L2_2 = A0_2.setup_view
    L4_2 = A0_2.data
    L5_2 = A0_2.index
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_ui_animation_event = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1.setup_buff_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_monster
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_monster
    L4_2 = L3_2
    L3_2 = L3_2.GetClip
    L5_2 = "UI_TvMainPage_MonsterPanelFadeIn_Unlock"
    L3_2 = L3_2(L4_2, L5_2)
    L2_2.clip = L3_2
  end
end
L0_1.set_unlock_fadein = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_monster_known
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_revealed
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_monster_unknown
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_revealed
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.is_revealed
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.data_row
    L3_2 = L3_2.StageName
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_monster
    L4_2 = A0_2.data_row
    L4_2 = L4_2.ImagePath
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.data_row
    L3_2 = L3_2.OriginalStageName
    L1_2(L2_2, L3_2)
    L1_2 = pairs
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_monster_unknown
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L7_2 = A0_2
      L6_2 = A0_2._async_load_sprite_to
      L8_2 = L5_2
      L9_2 = A0_2.data_row
      L9_2 = L9_2.OriginalImagePath
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_channel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.data_row
  L3_2 = L3_2.ChannelName
  L1_2(L2_2, L3_2)
end
L0_1.setup_level_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.data
  L1_2 = L1_2.Score
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_rank_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetScoreRank
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.rank_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_rank
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = 0 < L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_score
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = 0 < L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_not_challenged
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not (0 < L1_2)
  L3_2(L4_2, L5_2)
end
L0_1.setup_score = L3_1
function L3_1(A0_2, A1_2)
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
L0_1.update_group_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.data
  L2_2 = L1_2
  L1_2 = L1_2.IsRevealed
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.GotoConfigExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2.data_row
    L2_2 = L2_2.GotoID
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.ParamIntList
    L2_2 = L2_2.Length
    if L2_2 < 2 then
      return
    end
    L2_2 = L2_1
    L3_2 = L2_2
    L2_2 = L2_2.TransferWithFinishedEvent
    L4_2 = A0_2.data_row
    L4_2 = L4_2.EntranceID
    L5_2 = L1_2.ParamIntList
    L5_2 = L5_2[1]
    L6_2 = CS
    L6_2 = L6_2.System
    L6_2 = L6_2.UInt32
    L6_2 = L6_2.MaxValue
    L7_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = A0_2.data_row
    L2_2 = L2_2.GotoID
    L1_2(L2_2)
  end
end
L0_1._on_button_start = L3_1
return L0_1
