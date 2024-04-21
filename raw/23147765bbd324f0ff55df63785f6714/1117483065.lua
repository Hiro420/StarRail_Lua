local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryLevelPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryLevelPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeStoryThemePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 4
L2_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryDetailPage"
L3_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryBuffSelectPage"
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.ChallengeModule
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2.level_panel
  L1_2 = L1_2[1]
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff
  L4_2 = A0_2._on_btn_buff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.init_level_list
  L1_2(L2_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.group_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_level_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.refresh_detail_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.init_navigation
  L2_2(L3_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.button_list
  if L1_2 then
    return
  end
  L1_2 = {}
  A0_2.button_list = L1_2
  L1_2 = ipairs
  L2_2 = A0_2.level_panel
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.button_list
    L8_2 = L5_2._binder
    L8_2 = L8_2.btn_root
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2.button_list
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.init_navigation = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2.button_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.ClearAnimationState
    L6_2(L7_2)
  end
end
L0_1.clear_animation_state = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_group_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.group_data
  L3_2 = L3_2.GroupName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTime
  L3_2 = A0_2.group_data
  L3_2 = L3_2.ScheduleData
  L3_2 = L3_2.EndTimeDate
  L4_2 = A0_2._expire_call_back
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_theme_icon_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2._async_load_sprite_to
    L8_2 = L5_2
    L9_2 = A0_2.group_data
    L9_2 = L9_2.StoryGroupExtraInfoRow
    L9_2 = L9_2.ThemeIconPicPath
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1.refresh_detail_info = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2.level_panel = L1_2
  L1_2 = 1
  L2_2 = L1_1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChallengeStoryLevelPanel
    L8_2 = G
    L8_2 = L8_2.ChallengeStoryLevelPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_level
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.register_click_callback
    L8_2 = A0_2._on_click_level
    L9_2 = A0_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.level_panel
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1.init_level_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2.group_data
  L1_2 = L1_2.ChallengeDatas
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.level_panel
    L7_2 = L5_2 + 1
    L6_2 = L6_2[L7_2]
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
end
L0_1.refresh_level_list = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._on_level_callback
  if L3_2 ~= nil then
    L3_2 = A0_2._on_level_callback
    L4_2 = A0_2._on_level_listener
    L3_2(L4_2)
  end
  L4_2 = A1_2
  L3_2 = A1_2.GetIsOpen
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = L2_1
    L5_2 = A1_2.ID
    L3_2(L4_2, L5_2)
  else
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_ChallengeStory_ClearPreLevel"
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_click_level = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L5_2 = L3_2
  L4_2 = L3_2.SetNodeDynamicKey
  L6_2 = A0_2.level_panel
  L6_2 = L6_2[A1_2]
  L6_2 = L6_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.gameObject
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.try_set_tutorial_node = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._on_level_callback = A1_2
  A0_2._on_level_listener = A2_2
end
L0_1.register_click_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ChallengeStory.Entrance.ChallengeStoryEnvironmentInfoPage"
  L3_2 = A0_2.group_data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_buff = L5_1
return L0_1
