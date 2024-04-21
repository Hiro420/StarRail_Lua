local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryEnvironmentInfoDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeStoryEnvironmentInfoDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 20
L2_1 = 2.5
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.ScheduleModule
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeStoryEnvironmentInfoDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2.show_update_hint = false
  A0_2.show_close_key_hint = true
  A0_2.can_exit = false
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._challenge_group_data = A1_2
  if A2_2 ~= nil then
    A0_2.show_update_hint = A2_2
  end
  if A3_2 ~= nil then
    A0_2.show_close_key_hint = A3_2
  end
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_update_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_story_buff_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_optional_buff_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_close_key_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_color
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    A0_2.can_exit = true
    L0_3 = A0_2._exit_timer
    L1_3 = L0_3
    L0_3 = L0_3.stop
    L0_3(L1_3)
  end
  L4_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._exit_timer = L1_2
  L1_2 = A0_2._exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 3
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_short_cut_hint_panel
    L2_3 = 33
    L3_3 = A0_2._binder
    L3_3 = L3_3.scroll_rect
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_buff_icon
  L3_2 = nil
  L4_2 = A0_2.buff_list
  L4_2 = L4_2[0]
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_skill = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_exit
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_open
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.gamepad_btn_skill
  L4_2 = A0_2._on_btn_skill
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._custom_on_load
  L1_2(L2_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._custom_on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_bg
  L4_2 = A0_2._challenge_group_data
  L4_2 = L4_2.StoryGroupExtraInfoRow
  L4_2 = L4_2.ThemeToastPicPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_theme_icon_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = A0_2
    L6_2 = A0_2.async_load_sprite_to
    L8_2 = L5_2
    L9_2 = A0_2._challenge_group_data
    L9_2 = L9_2.StoryGroupExtraInfoRow
    L9_2 = L9_2.ThemeIconPicPath
    L6_2(L7_2, L8_2, L9_2)
  end
end
L0_1._setup_challenge_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2.OptionalBuffList
  A0_2.buff_list = L1_2
  L1_2 = {}
  A0_2.param_table = L1_2
  L1_2 = 0
  L2_2 = A0_2.buff_list
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2.param_table
    L7_2 = {}
    L8_2 = A0_2.buff_list
    L8_2 = L8_2[L4_2]
    L7_2.buff_id = L8_2
    L8_2 = A0_2._on_click_buff_icon
    L7_2.click_callback = L8_2
    L7_2.callback_listener = A0_2
    L5_2(L6_2, L7_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2.param_table
  L4_2 = nil
  L5_2 = nil
  L6_2 = NavigationType
  L6_2 = L6_2.Horizontal
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_optional_buff_list = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.ChallengeStory.Common.ChallengeStoryBuffDetailDialog"
  L5_2 = A0_2._challenge_group_data
  L6_2 = A2_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_buff_panel
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_buff_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetLightWeightActive
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1._on_click_buff_icon = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_update_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.show_update_hint
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_btn_open
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.show_update_hint
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg_exit
  L1_2 = L1_2.gameObject
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.show_update_hint
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_update_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.show_close_key_hint
  L1_2(L2_2, L3_2)
end
L0_1._setup_close_key_hint = L4_1
function L4_1(A0_2)
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
  L2_2 = A0_2._setup_desc
  L4_2 = G
  L4_2 = L4_2.ChallengeUtils
  L4_2 = L4_2.create_buff_desc_text_id
  L5_2 = A0_2._challenge_group_data
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_story_buff_info = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._setup_title = L4_1
function L4_1(A0_2, A1_2, ...)
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
L0_1._setup_desc = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2.StoryThemeConfigRow
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L1_2.ThemeMainColor
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L1_2.ThemeSubColor1
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.UIColorUtils
  L4_2 = L4_2.GetColor
  L5_2 = L1_2.ThemeEffColor
  L4_2 = L4_2(L5_2)
  L5_2 = pairs
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_main_color_list
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.UIColorUtils
    L10_2 = L10_2.GetColorWithOriginAlpha
    L11_2 = L2_2
    L12_2 = L9_2.color
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.color = L10_2
  end
  L5_2 = pairs
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_sub_color1_list
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.Client
    L10_2 = L10_2.UIColorUtils
    L10_2 = L10_2.GetColorWithOriginAlpha
    L11_2 = L3_2
    L12_2 = L9_2.color
    L10_2 = L10_2(L11_2, L12_2)
    L9_2.color = L10_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.mesh_renderer_cone
  L5_2 = L5_2.material
  L6_2 = L5_2
  L5_2 = L5_2.GetColor
  L7_2 = "_MainColor"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.UIColorUtils
  L6_2 = L6_2.GetColorWithOriginAlpha
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.mesh_renderer_cone
  L7_2 = L7_2.material
  L8_2 = L7_2
  L7_2 = L7_2.SetColor
  L9_2 = "_MainColor"
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  L4_2.a = 1
  L7_2 = A0_2._binder
  L7_2 = L7_2.particle_system_util
  L8_2 = L7_2
  L7_2 = L7_2.SetStartColor
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
end
L0_1._setup_color = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.can_exit
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_exit = L4_1
return L0_1
