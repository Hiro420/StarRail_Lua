local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryChapterCardPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryBuffPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryBuffPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.trigger_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_click_call_back = A1_2
  A0_2._on_click_call_back_self = A2_2
end
L0_1.register_on_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._fantastic_buff_data = A1_2
  L3_2 = A1_2.BuffID
  A0_2.buff_id = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.gameObject
  L6_2 = A0_2.buff_id
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.BuffUtils
  L3_2 = L3_2.GetMazeBuffData
  L4_2 = A0_2._fantastic_buff_data
  L4_2 = L4_2.MazebuffID
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._maze_buff_row = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_maze_buff_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_lock_state
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_tips
  L5_2 = A2_2 or L5_2
  if A2_2 then
    L5_2 = A0_2._fantastic_buff_data
    L5_2 = L5_2.IsUnlock
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = L3_2
  L3_2 = L3_2.ClearAnimationState
  L3_2(L4_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "FantasticStoryBuffNew"
  L6_2 = A0_2.buff_id
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.red_dot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_navigation_btn_gameobject = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_root
  L1_2(L2_2)
end
L0_1.trigger_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_buff_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._maze_buff_row
  L3_2 = L3_2.BuffName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_buff_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._maze_buff_row
  L3_2 = L3_2.BuffDesc
  L4_2 = G
  L4_2 = L4_2.UITextUtils
  L4_2 = L4_2.GetSkillParams
  L5_2 = A0_2._maze_buff_row
  L5_2 = L5_2.ParamList
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_buff_icon
  L4_2 = A0_2._maze_buff_row
  L4_2 = L4_2.BuffIcon
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_maze_buff_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._fantastic_buff_data
  L3_2 = L3_2.IsUnlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._fantastic_buff_data
  L3_2 = L3_2.IsUnlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_detail
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._fantastic_buff_data
  L3_2 = L3_2.IsUnlock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._fantastic_buff_data
  L1_2 = L1_2.IsUnlock
  if not L1_2 then
    L1_2 = A0_2._fantastic_buff_data
    L1_2 = L1_2.ScheduleData
    L2_2 = L1_2
    L1_2 = L1_2.IsInSchedule
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_lock_tips
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_ActivityFanaticStory_UnlockTip_5"
      L4_2 = A0_2._fantastic_buff_data
      L4_2 = L4_2.UnlockChapterID
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_timer
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_lock_tips
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_ActivityFanaticStory_UnlockTip_1"
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_timer
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.mono_remain_timer
      L2_2 = L1_2
      L1_2 = L1_2.SetTargetTimeByTimeStamp
      L3_2 = A0_2._fantastic_buff_data
      L3_2 = L3_2.ScheduleData
      L3_2 = L3_2.BeginTimeStamp
      L4_2 = A0_2._setup_lock_state
      L5_2 = A0_2
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L0_1._setup_lock_state = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_use_tips
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.FantasticStoryActivityModule
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_use_tips
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = A0_2._fantastic_buff_data
    L5_2 = L5_2.IsShowTips
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._fantastic_buff_data
    L3_2 = L3_2.IsShowTips
    if L3_2 then
      L3_2 = A0_2._fantastic_buff_data
      L3_2 = L3_2.ParagraphID
      L3_2 = L3_2.Length
      if L3_2 == 1 then
        L4_2 = L2_2
        L3_2 = L2_2.GetParagraphData
        L5_2 = A0_2._fantastic_buff_data
        L5_2 = L5_2.ParagraphID
        L5_2 = L5_2[0]
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = A0_2._binder
        L4_2 = L4_2.text_use_tips
        L5_2 = L4_2
        L4_2 = L4_2.SafeSetTextID
        L6_2 = "UIText_ActivityFanaticStory_Buff_AvailableTip_1"
        L7_2 = G
        L7_2 = L7_2.TextmapStatic
        L7_2 = L7_2.GetText
        L8_2 = L3_2.Name
        L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      else
        L3_2 = A0_2._fantastic_buff_data
        L3_2 = L3_2.ParagraphID
        L3_2 = L3_2.Length
        if L3_2 == 2 then
          L4_2 = L2_2
          L3_2 = L2_2.GetParagraphData
          L5_2 = A0_2._fantastic_buff_data
          L5_2 = L5_2.ParagraphID
          L5_2 = L5_2[0]
          L3_2 = L3_2(L4_2, L5_2)
          L5_2 = L2_2
          L4_2 = L2_2.GetParagraphData
          L6_2 = A0_2._fantastic_buff_data
          L6_2 = L6_2.ParagraphID
          L6_2 = L6_2[1]
          L4_2 = L4_2(L5_2, L6_2)
          L5_2 = A0_2._binder
          L5_2 = L5_2.text_use_tips
          L6_2 = L5_2
          L5_2 = L5_2.SafeSetTextID
          L7_2 = "UIText_ActivityFanaticStory_Buff_AvailableTip_2"
          L8_2 = G
          L8_2 = L8_2.TextmapStatic
          L8_2 = L8_2.GetText
          L9_2 = L3_2.Name
          L8_2 = L8_2(L9_2)
          L9_2 = G
          L9_2 = L9_2.TextmapStatic
          L9_2 = L9_2.GetText
          L10_2 = L4_2.Name
          L9_2, L10_2 = L9_2(L10_2)
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        end
      end
    end
  end
end
L0_1._setup_tips = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_equiped
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_equiped = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._on_click_call_back
  if L1_2 then
    L1_2 = A0_2._on_click_call_back
    L2_2 = A0_2._on_click_call_back_self
    L3_2 = A0_2.buff_id
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_root = L1_1
return L0_1
