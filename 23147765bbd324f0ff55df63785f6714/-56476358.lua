local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStoryBuffSelectPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStorySelectBuffPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ChallengeStory.Entrance.ChallengeStorySelectBuffPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.LineupSlotPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.Entrance.LineupSlotPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeStoryBuffSelectPage"
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
  L3_2 = L3_2.ChallengeStoryBuffSelectPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2.avatar_panels = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  A0_2.story_data = A1_2
  A0_2.team_info = A2_2
  L5_2 = A2_2 ~= nil
  A0_2.can_equip = L5_2
  if A2_2 then
    L5_2 = A2_2.avatar_data
    A0_2.avatar_data = L5_2
    L5_2 = A2_2.team_index
    A0_2.team_index = L5_2
    L5_2 = A2_2.cur_buff_id
    A0_2.cur_buff_id = L5_2
    L5_2 = A2_2.cur_buff_id
    A0_2.init_buff_id = L5_2
  end
  A0_2.confirm_callback = A3_2
  A0_2.confirm_callback_listener = A4_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.override_transition_anim_type
  L3_2 = "ChallengeStoryDetailPage"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UITransitionAnimType
  L4_2 = L4_2.Morph
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_buff_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_bg
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.sync_load_prefab
  L3_2 = A0_2.story_data
  L3_2 = L3_2.ChallengeGroupDataRef
  L3_2 = L3_2.StoryThemeConfigRow
  L3_2 = L3_2.ThemeBgPrefabPath
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_bg_panel
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.bg_object = L1_2
  L1_2 = A0_2.bg_object
  L1_2.name = "Bg"
end
L0_1._load_bg = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.confirm_callback
  if L1_2 then
    L1_2 = A0_2.confirm_callback
    L2_2 = A0_2.confirm_callback_listener
    L3_2 = A0_2.team_index
    L4_2 = A0_2.cur_buff_id
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_confirm_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.LineupSlotPanel
    L8_2 = G
    L8_2 = L8_2.LineupSlotPanelBinder
    L9_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_avatar_icon
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.set_selected
    L8_2 = false
    L6_2(L7_2, L8_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2.avatar_panels
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._init_avatar_list = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.story_data
  L1_2 = L1_2.ChallengeGroupDataRef
  L1_2 = L1_2.OptionalBuffList
  A0_2.buff_list = L1_2
end
L0_1._init_buff_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_left_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_right_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_buff_list
  L1_2(L2_2)
end
L0_1.setup_right_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_equip_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.can_equip
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_team_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.can_equip
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.can_equip
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.refresh_buff_slot
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2.setup_avatar_list
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_theme
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_env_panel
  L1_2(L2_2)
end
L0_1.setup_left_panel = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_left_panel
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "ChallengeStoryBuffPage_Color"
  L4_2 = A0_2.story_data
  L4_2 = L4_2.ChallengeGroupDataRef
  L4_2 = L4_2.ThemeID
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_theme = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.cur_buff_id
  L1_2 = L1_2 == nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_buff_empty_slot
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_buff_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    L2_2 = G
    L2_2 = L2_2.BuffUtils
    L2_2 = L2_2.GetMazeBuffData
    L3_2 = A0_2.cur_buff_id
    L4_2 = 1
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._maze_buff_row = L2_2
    L3_2 = A0_2
    L2_2 = A0_2.load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_buff_icon
    L5_2 = A0_2._maze_buff_row
    L5_2 = L5_2.BuffIcon
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.refresh_buff_slot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_team_index
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.team_index
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = 4
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2.avatar_panels
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2.avatar_data
    L6_2 = L6_2[L4_2]
    L8_2 = L5_2
    L7_2 = L5_2.safe_set_active
    L9_2 = L6_2 ~= nil
    L7_2(L8_2, L9_2)
    if L6_2 then
      L8_2 = L5_2
      L7_2 = L5_2.setup_view
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1.setup_avatar_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.can_equip
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_page_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ChallengeStory_Buff_EquipTip"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_page_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ChallengeStory_Buff_ShowTip"
    L1_2(L2_2, L3_2)
  end
end
L0_1.setup_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2.buff_list
  L3_2 = L3_2.Length
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1.setup_buff_list = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.story_data
  L1_2 = L1_2.Row
  L1_2 = L1_2.MazeBuffID
  A0_2.env_buff_id = L1_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.GetMazeBuffData
  L2_2 = A0_2.env_buff_id
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_env_buff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.BuffDesc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = L1_2.ParamList
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_scroll_gamepad_tips
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
L0_1.setup_env_panel = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChallengeStorySelectBuffPanel
    L8_2 = G
    L8_2 = L8_2.ChallengeStorySelectBuffPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2.buff_list
  L7_2 = L7_2[A2_2]
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_equiped
  L7_2 = A0_2.buff_list
  L7_2 = L7_2[A2_2]
  L8_2 = A0_2.init_buff_id
  L7_2 = L7_2 == L8_2
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.set_checked
  L7_2 = A0_2.buff_list
  L7_2 = L7_2[A2_2]
  L8_2 = A0_2.cur_buff_id
  L7_2 = L7_2 == L8_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2.buff_list
  L5_2 = L5_2[A2_2]
  L6_2 = A0_2.cur_buff_id
  if L5_2 == L6_2 then
    A0_2._cur_select_buff_panel = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.register_on_click_callback
  L7_2 = A0_2._on_buff_select
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.UI
  L5_2 = L5_2.LayoutRebuilder
  L5_2 = L5_2.ForceRebuildLayoutImmediate
  L6_2 = L4_2._binder
  L6_2 = L6_2.root
  L6_2 = L6_2.transform
  L5_2(L6_2)
  return L3_2
end
L0_1._on_item_change = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.can_equip
  if not L3_2 then
    return
  end
  A0_2.cur_buff_id = A1_2
  L3_2 = A0_2._cur_select_buff_panel
  if L3_2 then
    L3_2 = A0_2._cur_select_buff_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_checked
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L4_2 = A2_2
  L3_2 = A2_2.set_checked
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._cur_select_buff_panel = A2_2
  L4_2 = A0_2
  L3_2 = A0_2.refresh_buff_slot
  L3_2(L4_2)
end
L0_1._on_buff_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.cur_buff_id
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_ChallengeStory_Buff_EquipOne"
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_confirm_callback
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.fade_out
  L1_2(L2_2)
end
L0_1._on_btn_confirm = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.cur_buff_id
  if L1_2 ~= 0 then
    L1_2 = A0_2.init_buff_id
    L2_2 = A0_2.cur_buff_id
    if L1_2 ~= L2_2 then
      goto lbl_11
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.fade_out
  L1_2(L2_2)
  do return end
  ::lbl_11::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_ChallengeStory_Buff_EquipConfirmToast"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._on_confirm_callback
      L1_3(L2_3)
    end
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.fade_out
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1.fade_out = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 31
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._on_leave_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_select_buff_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_select_buff_panel
    L1_2 = L1_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.gameObject
    return L1_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_scroll_view
    L2_2 = L1_2
    L1_2 = L1_2.GetShownItemByItemIndex
    L3_2 = 0
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= nil then
      L2_2 = L1_2.UserObjectData
      L2_2 = L2_2._binder
      L2_2 = L2_2.btn_root
      L2_2 = L2_2.gameObject
      return L2_2
    end
  end
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.get_cur_zoom
  L1_2 = L1_2(L2_2)
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_can_to_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip_scroll
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_rect_env_buff
  L3_2 = L2_2
  L2_2 = L2_2.CanScroll
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
  end
  L1_2.IsShowTip = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect_env_buff
  L4_2 = L3_2
  L3_2 = L3_2.CanScroll
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.is_gamepad_input
    L3_2 = L3_2()
  end
  L1_2(L2_2, L3_2)
end
L0_1._setup_scroll_gamepad_tips = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_tip_scroll
  L1_2.IsShowTip = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_move_tip
  L1_2.ActionEnabled = false
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_scroll_gamepad_tips
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_move_tip
  L1_2.ActionEnabled = true
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_scroll_gamepad_tips
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L1_1
return L0_1
