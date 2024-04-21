local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ChallengeStory.Maze.ToastChallengeStoryEnvironmentHintPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ToastChallengeStoryEnvironmentHintPanel"
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
  L3_2 = L3_2.ToastChallengeStoryEnvironmentHintPanelBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_exit
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_update_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._challenge_instance = nil
  A0_2._challenge_data = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChallengeModule
  L1_2 = L1_2.CurrentChallengeInstance
  A0_2._challenge_instance = L1_2
  L1_2 = A0_2._challenge_instance
  L1_2 = L1_2.ChallengeDataRef
  A0_2._challenge_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_story_environment_info
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.node_scroll_tip
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = A0_2._binder
    L2_3 = L2_3.scroll_rect
    L3_3 = L2_3
    L2_3 = L2_3.CanScroll
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_bg
  L4_2 = A0_2._challenge_data
  L4_2 = L4_2.ChallengeGroupDataRef
  L4_2 = L4_2.StoryGroupExtraInfoRow
  L4_2 = L4_2.ThemeToastPicPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_challenge_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.GetMazeBuffData
  L2_2 = A0_2._challenge_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.MazeBuffID
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_title
  L4_2 = true
  L5_2 = "UIText_ChallengeStory_Environment"
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_desc
  L4_2 = G
  L4_2 = L4_2.ChallengeUtils
  L4_2 = L4_2.create_buff_desc_text_id
  L5_2 = A0_2._challenge_data
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_select_buff
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_color
  L2_2(L3_2)
end
L0_1._setup_story_environment_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._challenge_instance
  L1_2 = L1_2.CurrentStageNum
  L2_2 = A0_2._challenge_instance
  L2_2 = L2_2.BuffList
  L3_2 = L1_2 - 1
  L2_2 = L2_2[L3_2]
  L3_2 = G
  L3_2 = L3_2.BuffUtils
  L3_2 = L3_2.GetMazeBuffData
  L4_2 = L2_2
  L5_2 = 1
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._maze_buff_row = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_buff_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_ChallengeStory_Buff"
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_buff_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._maze_buff_row
  L5_2 = L5_2.BuffName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_buff_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._maze_buff_row
  L5_2 = L5_2.BuffDesc
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetSkillParams
  L7_2 = A0_2._maze_buff_row
  L7_2 = L7_2.ParamList
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_buff_icon
  L6_2 = A0_2._maze_buff_row
  L6_2 = L6_2.BuffIcon
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_select_buff = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_title = L1_1
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L5_2 = ...
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.ChallengeGroupDataRef
  L1_2 = L1_2.StoryThemeConfigRow
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L1_2.ThemeMainColor
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_main_color_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.UIColorUtils
    L8_2 = L8_2.GetColorWithOriginAlpha
    L9_2 = L2_2
    L10_2 = L7_2.color
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.color = L8_2
  end
end
L0_1._setup_color = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L1_1
return L0_1
