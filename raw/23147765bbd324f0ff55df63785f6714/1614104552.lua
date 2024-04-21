local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
L0_1 = require
L1_1 = "Ui.Story.CreatePlayerPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.CreatePlayerUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.PlayerUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CreatePlayerPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = "GenderChooseBtn_FadeIn"
L3_1 = "EditNamePanel_FadeIn_Male"
L4_1 = "EditNamePanel_FadeIn_Female"
L5_1 = "GenderChooseBtn_FadeOut"
L6_1 = "EditNamePanel_FadeOut_Male"
L7_1 = "EditNamePanel_FadeOut_Female"
L8_1 = {}
L9_1 = 200010717
L10_1 = 200010718
L8_1[1] = L9_1
L8_1[2] = L10_1
L9_1 = {}
L10_1 = 200010723
L11_1 = 200010724
L9_1[1] = L10_1
L9_1[2] = L11_1
L10_1 = {}
L11_1 = {}
L12_1 = 200010725
L13_1 = 200010726
L11_1[1] = L12_1
L11_1[2] = L13_1
L12_1 = {}
L13_1 = 200010727
L14_1 = 200010728
L12_1[1] = L13_1
L12_1[2] = L14_1
L13_1 = {}
L14_1 = 200010729
L15_1 = 200010730
L13_1[1] = L14_1
L13_1[2] = L15_1
L10_1[1] = L11_1
L10_1[2] = L12_1
L10_1[3] = L13_1
L11_1 = 30
L12_1 = 0.5
L13_1 = CS
L13_1 = L13_1.RPG
L13_1 = L13_1.GameCore
L13_1 = L13_1.ConstValueClientExcelTable
L13_1 = L13_1.GetData
L14_1 = "PlayerIcon_Male"
L13_1 = L13_1(L14_1)
L13_1 = L13_1.Value
L13_1 = L13_1.IntValue
L14_1 = CS
L14_1 = L14_1.RPG
L14_1 = L14_1.GameCore
L14_1 = L14_1.ConstValueClientExcelTable
L14_1 = L14_1.GetData
L15_1 = "PlayerIcon_Female"
L14_1 = L14_1(L15_1)
L14_1 = L14_1.Value
L14_1 = L14_1.IntValue
L15_1 = {}
L15_1.Overall = 1
L15_1.Male = 2
L15_1.Female = 3
L16_1 = {}
L16_1.GenderSelect = 1
L16_1.GenderConfirm = 2
L16_1.NickNameCreate = 3
L16_1.FinalConfirm = 4
L16_1.Finish = 5
L17_1 = "CS_Chap00_Act245"
L18_1 = 9
L19_1 = 1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.CreatePlayerPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.CreatePlayerUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._create_player_ui3d = L1_2
  L1_2 = CS
  L1_2 = L1_2.GMPCKMKNPML
  L1_2 = L1_2.KMOLEEHDPBD
  A0_2._gender = L1_2
  A0_2._name = ""
  L1_2 = L16_1.GenderSelect
  A0_2._step = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._waiting_vo_index = 0
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_waiting_operation
  L4_2 = L11_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._count_down_timer = L1_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L2_2 = 2
  L1_2 = L1_2(L2_2)
  A0_2._VO_Param = L1_2
  A0_2._is_played_name = false
end
L0_1.ctor = L20_1
function L20_1(A0_2, A1_2)
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
  end
end
L0_1._on_enter_zoom = L20_1
function L20_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_list
  L1_2 = L1_2[1]
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_step_back
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.FFOMLPONIFB
  L1_2 = L1_2.NBDECGBNLKN
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = L18_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_screen_female
  L4_2 = A0_2._on_female_selected
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_screen_male
  L4_2 = A0_2._on_male_selected
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.male_gender_confirm_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_gender_selected_callback
  L3_2 = A0_2._on_gender_exchange
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.male_gender_confirm_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_confirm_callback
  L3_2 = A0_2._on_step_forward
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.female_gender_confirm_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_gender_selected_callback
  L3_2 = A0_2._on_gender_exchange
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.female_gender_confirm_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_confirm_callback
  L3_2 = A0_2._on_step_forward
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.male_create_nickname_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_create_player
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.male_create_nickname_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_nickname_created_callback
  L3_2 = A0_2._on_step_forward
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.female_create_nickname_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_is_create_player
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.female_create_nickname_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_nickname_created_callback
  L3_2 = A0_2._on_step_forward
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.male_confirm_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_confirm_callback
  L3_2 = A0_2._on_step_forward
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.female_confirm_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_confirm_callback
  L3_2 = A0_2._on_step_forward
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.male_confirm_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_preload_cutscene_callback
  L3_2 = A0_2._preload_next_cutscene
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.female_confirm_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_preload_cutscene_callback
  L3_2 = A0_2._preload_next_cutscene
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetGender
  L4_2 = L0_1._on_create_player_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetNickName
  L4_2 = L0_1._on_player_set_nick_name
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ClosePlayerSelectPage
  L4_2 = L0_1._on_close_player_select_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerSetGenderFail
  L4_2 = L0_1._on_step_back
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_screen_female
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_screen_female
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_screen_male
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_screen_male
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_mobile_platform
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.EventTriggerListener
    L1_2 = L1_2.Get
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_screen_female
    L2_2 = L2_2.gameObject
    L1_2 = L1_2(L2_2)
    function L2_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = A0_2._binder
      L2_3 = L2_3.btn_screen_female
      L2_3 = L2_3.gameObject
      L0_3(L1_3, L2_3)
    end
    L1_2.OnEnterTrigger = L2_2
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.EventTriggerListener
    L2_2 = L2_2.Get
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_screen_male
    L3_2 = L3_2.gameObject
    L2_2 = L2_2(L3_2)
    function L3_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = A0_2._binder
      L2_3 = L2_3.btn_screen_male
      L2_3 = L2_3.gameObject
      L0_3(L1_3, L2_3)
    end
    L2_2.OnEnterTrigger = L3_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_list
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._change_step
  L3_2 = L16_1.GenderSelect
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = A0_2._VO_Param
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  L1_2 = A0_2._VO_Param
  L2_2 = L1_2
  L1_2 = L1_2.Add
  L3_2 = L8_1[1]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._VO_Param
  L2_2 = L1_2
  L1_2 = L1_2.Add
  L3_2 = L8_1[2]
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.GetAdventureAudioManager
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.PlayVOSequence
  L4_2 = A0_2._VO_Param
  L5_2 = L12_1
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L0_1._setup_view = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_close_player_select_page = L20_1
function L20_1(A0_2)
  local L1_2
end
L0_1._on_create_player_finish = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._step
  L3_2 = L16_1.NickNameCreate
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = A0_2._gender
  L3_2 = CS
  L3_2 = L3_2.GMPCKMKNPML
  L3_2 = L3_2.ELKPIGNHLME
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.male_create_nickname_panel
    L3_2 = L2_2
    L2_2 = L2_2.on_player_set_nick_name
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._gender
    L3_2 = CS
    L3_2 = L3_2.GMPCKMKNPML
    L3_2 = L3_2.KMDILKFJJKN
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.female_create_nickname_panel
      L3_2 = L2_2
      L2_2 = L2_2.on_player_set_nick_name
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_player_set_nick_name = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._step
  L2_2 = L16_1.GenderSelect
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_gender
  L3_2 = CS
  L3_2 = L3_2.GMPCKMKNPML
  L3_2 = L3_2.ELKPIGNHLME
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._change_step
  L3_2 = L16_1.GenderConfirm
  L1_2(L2_2, L3_2)
end
L0_1._on_male_selected = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._step
  L2_2 = L16_1.GenderSelect
  if L1_2 ~= L2_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._set_gender
  L3_2 = CS
  L3_2 = L3_2.GMPCKMKNPML
  L3_2 = L3_2.KMDILKFJJKN
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._change_step
  L3_2 = L16_1.GenderConfirm
  L1_2(L2_2, L3_2)
end
L0_1._on_female_selected = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._gender
  L2_2 = CS
  L2_2 = L2_2.GMPCKMKNPML
  L2_2 = L2_2.ELKPIGNHLME
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._set_gender
    L3_2 = CS
    L3_2 = L3_2.GMPCKMKNPML
    L3_2 = L3_2.KMDILKFJJKN
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._gender
    L2_2 = CS
    L2_2 = L2_2.GMPCKMKNPML
    L2_2 = L2_2.KMDILKFJJKN
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._set_gender
      L3_2 = CS
      L3_2 = L3_2.GMPCKMKNPML
      L3_2 = L3_2.ELKPIGNHLME
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_gender_exchange = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_gender_choose
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_gender_confirm
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_gender_navigation
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_close
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.GMPCKMKNPML
  L4_2 = L4_2.KMOLEEHDPBD
  L4_2 = A1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  A0_2._gender = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.PlayerModule
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.HeroAvatarInfoData
  L3_2 = CS
  L3_2 = L3_2.GMPCKMKNPML
  L3_2 = L3_2.ELKPIGNHLME
  if A1_2 == L3_2 then
    L4_2 = L2_2
    L3_2 = L2_2.SetCurrentHeroGender
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.GenderType
    L5_2 = L5_2.GENDER_MAN
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.GMPCKMKNPML
    L3_2 = L3_2.KMDILKFJJKN
    if A1_2 == L3_2 then
      L4_2 = L2_2
      L3_2 = L2_2.SetCurrentHeroGender
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.GenderType
      L5_2 = L5_2.GENDER_WOMAN
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._set_gender = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.GMPCKMKNPML
  L2_2 = L2_2.KMOLEEHDPBD
  if A1_2 ~= L2_2 then
    L2_2 = A0_2._gender
    L3_2 = CS
    L3_2 = L3_2.GMPCKMKNPML
    L3_2 = L3_2.KMOLEEHDPBD
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_gender_choose_button
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L5_1
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_create_player
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = CS
    L2_2 = L2_2.GMPCKMKNPML
    L2_2 = L2_2.KMOLEEHDPBD
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_gender_choose_button
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_gender_choose_button
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L2_1
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_gender_choose = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.GMPCKMKNPML
  L2_2 = L2_2.KMOLEEHDPBD
  if A1_2 == L2_2 then
    L2_2 = A0_2._gender
    L3_2 = CS
    L3_2 = L3_2.GMPCKMKNPML
    L3_2 = L3_2.ELKPIGNHLME
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._binder
      L4_2 = L4_2.btn_screen_male
      L4_2 = L4_2.gameObject
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = CS
    L2_2 = L2_2.GMPCKMKNPML
    L2_2 = L2_2.KMOLEEHDPBD
    if A1_2 == L2_2 then
      L2_2 = A0_2._gender
      L3_2 = CS
      L3_2 = L3_2.GMPCKMKNPML
      L3_2 = L3_2.KMDILKFJJKN
      if L2_2 == L3_2 then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = A0_2._binder
        L4_2 = L4_2.btn_screen_female
        L4_2 = L4_2.gameObject
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._setup_gender_navigation = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._gender
  L3_2 = CS
  L3_2 = L3_2.GMPCKMKNPML
  L3_2 = L3_2.ELKPIGNHLME
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_create_player_male
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L6_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.male_gender_confirm_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_btn_enable
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._gender
    L3_2 = CS
    L3_2 = L3_2.GMPCKMKNPML
    L3_2 = L3_2.KMDILKFJJKN
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_create_player_female
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L7_1
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.female_gender_confirm_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_btn_enable
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = CS
  L2_2 = L2_2.GMPCKMKNPML
  L2_2 = L2_2.ELKPIGNHLME
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_create_player_male
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.male_gender_confirm_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_btn_enable
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_create_player_male
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_create_player_male
    L3_2 = L2_2
    L2_2 = L2_2.Sample
    L2_2(L3_2)
    L2_2 = A0_2._create_player_ui3d
    L3_2 = L2_2
    L2_2 = L2_2.active_camera
    L4_2 = L15_1.Male
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.GMPCKMKNPML
    L2_2 = L2_2.KMDILKFJJKN
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_create_player_female
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.female_gender_confirm_panel
      L3_2 = L2_2
      L2_2 = L2_2.set_btn_enable
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_create_player_female
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L4_1
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_create_player_female
      L3_2 = L2_2
      L2_2 = L2_2.Sample
      L2_2(L3_2)
      L2_2 = A0_2._create_player_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.active_camera
      L4_2 = L15_1.Female
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._create_player_ui3d
      L3_2 = L2_2
      L2_2 = L2_2.active_camera
      L4_2 = L15_1.Overall
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_gender_confirm = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._button_mutex
  if L1_2 then
    L1_2 = A0_2._button_mutex
    L2_2 = L1_2
    L1_2 = L1_2.Check
    function L3_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_step_back
      L0_3(L1_3)
    end
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_step_back
    L1_2(L2_2)
  end
end
L0_1._on_btn_close_click = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._change_step
  L3_2 = A0_2._step
  L3_2 = L3_2 + 1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._step
  L2_2 = L16_1.NickNameCreate
  if L1_2 == L2_2 then
    L1_2 = L1_1.RenameCD
    if L1_2 ~= nil then
      L2_2 = A0_2
      L1_2 = A0_2._on_step_forward
      L1_2(L2_2)
    end
  end
end
L0_1._on_step_forward = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_InControlActionsManager
  L1_2 = L1_2.IsInputFiledSelected
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._change_step
    L3_2 = A0_2._step
    L3_2 = L3_2 - 1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._step
    L2_2 = L16_1.NickNameCreate
    if L1_2 == L2_2 then
      L1_2 = L1_1.RenameCD
      if L1_2 ~= nil then
        L2_2 = A0_2
        L1_2 = A0_2._on_step_back
        L1_2(L2_2)
      end
    end
  end
end
L0_1._on_step_back = L20_1
function L20_1(A0_2)
  local L1_2
end
L0_1._on_reconnect = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_screen_female
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L16_1.GenderSelect
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_screen_male
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L16_1.GenderSelect
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.male_gender_confirm_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L16_1.GenderConfirm
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.female_gender_confirm_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L16_1.GenderConfirm
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.male_create_nickname_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L16_1.NickNameCreate
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.female_create_nickname_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L16_1.NickNameCreate
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.male_confirm_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L16_1.FinalConfirm
  L4_2 = A1_2 >= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.female_confirm_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = L16_1.FinalConfirm
  L4_2 = A1_2 >= L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_cur_step_change
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_sound_type
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._step = A1_2
end
L0_1._change_step = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = L19_1
  L2_2(L3_2, L4_2)
  L2_2 = L16_1.GenderSelect
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = L18_1
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._set_gender
    L4_2 = CS
    L4_2 = L4_2.GMPCKMKNPML
    L4_2 = L4_2.KMOLEEHDPBD
    L2_2(L3_2, L4_2)
  else
    L2_2 = L16_1.NickNameCreate
    if A1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.male_create_nickname_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A0_2._name
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.female_create_nickname_panel
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = A0_2._name
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._is_played_name
      if not L2_2 then
        L2_2 = A0_2._count_down_timer
        L3_2 = L2_2
        L2_2 = L2_2.stop
        L2_2(L3_2)
        L2_2 = A0_2._VO_Param
        L3_2 = L2_2
        L2_2 = L2_2.Clear
        L2_2(L3_2)
        L2_2 = A0_2._VO_Param
        L3_2 = L2_2
        L2_2 = L2_2.Add
        L4_2 = L9_1[1]
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._VO_Param
        L3_2 = L2_2
        L2_2 = L2_2.Add
        L4_2 = L9_1[2]
        L2_2(L3_2, L4_2)
        L2_2 = CS
        L2_2 = L2_2.RPG
        L2_2 = L2_2.Client
        L2_2 = L2_2.GlobalVars
        L2_2 = L2_2.s_GamePhaseManager
        L3_2 = L2_2
        L2_2 = L2_2.GetCurrentPhase
        L2_2 = L2_2(L3_2)
        L4_2 = L2_2
        L3_2 = L2_2.GetAdventureAudioManager
        L3_2 = L3_2(L4_2)
        L4_2 = L3_2
        L3_2 = L3_2.PlayVOSequence
        L5_2 = A0_2._VO_Param
        L6_2 = L12_1
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = A0_2._count_down_timer
        L4_2 = L3_2
        L3_2 = L3_2.reset
        L3_2(L4_2)
        L3_2 = A0_2._count_down_timer
        L4_2 = L3_2
        L3_2 = L3_2.start
        L3_2(L4_2)
        A0_2._is_played_name = true
      end
    else
      L2_2 = L16_1.FinalConfirm
      if A1_2 == L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._get_nickname
        L2_2 = L2_2(L3_2)
        A0_2._name = L2_2
        L2_2 = A0_2._binder
        L2_2 = L2_2.male_confirm_panel
        L3_2 = L2_2
        L2_2 = L2_2.setup_view
        L4_2 = A0_2._name
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.female_confirm_panel
        L3_2 = L2_2
        L2_2 = L2_2.setup_view
        L4_2 = A0_2._name
        L2_2(L3_2, L4_2)
      else
        L2_2 = L16_1.Finish
        if A1_2 == L2_2 then
          L2_2 = L1_1.RenameCD
          if L2_2 ~= nil then
            L2_2 = L1_1
            L3_2 = L2_2
            L2_2 = L2_2.SetGender
            L4_2 = A0_2._gender
            L2_2(L3_2, L4_2)
          else
            L2_2 = CS
            L2_2 = L2_2.RPG
            L2_2 = L2_2.Client
            L2_2 = L2_2.NetworkManager
            L2_2 = L2_2.FFOMLPONIFB
            L3_2 = L2_2
            L2_2 = L2_2.KMFMKEAPNOB
            L4_2 = A0_2._gender
            L5_2 = A0_2._name
            L2_2(L3_2, L4_2, L5_2)
          end
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.NetworkManager
          L2_2 = L2_2.FFOMLPONIFB
          L3_2 = L2_2
          L2_2 = L2_2.KHFMPMGKHKG
          L2_2(L3_2)
          L3_2 = A0_2
          L2_2 = A0_2._set_head_icon
          L2_2(L3_2)
          L2_2 = CS
          L2_2 = L2_2.RPG
          L2_2 = L2_2.Client
          L2_2 = L2_2.GlobalVars
          L2_2 = L2_2.s_GamePhaseManager
          L3_2 = L2_2
          L2_2 = L2_2.GetCurrentPhase
          L2_2 = L2_2(L3_2)
          L3_2 = A0_2._count_down_timer
          L4_2 = L3_2
          L3_2 = L3_2.stop
          L3_2(L4_2)
          L4_2 = L2_2
          L3_2 = L2_2.GetAdventureAudioManager
          L3_2 = L3_2(L4_2)
          L4_2 = L3_2
          L3_2 = L3_2.StopVOSequence
          L3_2(L4_2)
        end
      end
    end
  end
end
L0_1._on_cur_step_change = L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L16_1.GenderSelect
  if A1_2 == L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIButtonSoundType
    L2_2 = L2_2.Special
    if L2_2 then
      goto lbl_16
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIButtonSoundType
  L2_2 = L2_2.Mute
  ::lbl_16::
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_screen_female
  L3_2.SoundType = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_screen_male
  L3_2.SoundType = L2_2
end
L0_1._setup_sound_type = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._gender
  L2_2 = CS
  L2_2 = L2_2.GMPCKMKNPML
  L2_2 = L2_2.ELKPIGNHLME
  if L1_2 == L2_2 then
    L1_2 = L13_1
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = L14_1
  ::lbl_11::
  L2_2 = G
  L2_2 = L2_2.PlayerUtils
  L2_2 = L2_2.do_modify_head_icon
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._set_head_icon = L20_1
function L20_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._gender
  L2_2 = CS
  L2_2 = L2_2.GMPCKMKNPML
  L2_2 = L2_2.ELKPIGNHLME
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.male_create_nickname_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_nickname
    return L1_2(L2_2)
  else
    L1_2 = A0_2._gender
    L2_2 = CS
    L2_2 = L2_2.GMPCKMKNPML
    L2_2 = L2_2.KMDILKFJJKN
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.female_create_nickname_panel
      L2_2 = L1_2
      L1_2 = L1_2.get_nickname
      return L1_2(L2_2)
    else
      L1_2 = L1_1.PlayerData
      L1_2 = L1_2.NickName
      if not L1_2 then
        L1_2 = ""
      end
      return L1_2
    end
  end
end
L0_1._get_nickname = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GenderType
  L1_2 = L1_2.GENDER_NONE
  L2_2 = A0_2._gender
  L3_2 = CS
  L3_2 = L3_2.GMPCKMKNPML
  L3_2 = L3_2.ELKPIGNHLME
  if L2_2 == L3_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GenderType
    L1_2 = L2_2.GENDER_MAN
  else
    L2_2 = A0_2._gender
    L3_2 = CS
    L3_2 = L3_2.GMPCKMKNPML
    L3_2 = L3_2.KMDILKFJJKN
    if L2_2 == L3_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.GenderType
      L1_2 = L2_2.GENDER_WOMAN
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CutsceneCacheInitParams
  L3_2 = L17_1
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.PreLoadCutscene
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._preload_next_cutscene = L20_1
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._waiting_vo_index
  L2_2 = L10_1
  L2_2 = #L2_2
  if L1_2 < L2_2 then
    L1_2 = A0_2._waiting_vo_index
    L1_2 = L1_2 + 1
    A0_2._waiting_vo_index = L1_2
    L1_2 = A0_2._waiting_vo_index
    L1_2 = L10_1[L1_2]
    L2_2 = A0_2._VO_Param
    L3_2 = L2_2
    L2_2 = L2_2.Clear
    L2_2(L3_2)
    L2_2 = A0_2._VO_Param
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = L1_2[1]
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._VO_Param
    L3_2 = L2_2
    L2_2 = L2_2.Add
    L4_2 = L1_2[2]
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_GamePhaseManager
    L3_2 = L2_2
    L2_2 = L2_2.GetCurrentPhase
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.GetAdventureAudioManager
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2
    L3_2 = L3_2.PlayVOSequence
    L5_2 = A0_2._VO_Param
    L6_2 = L12_1
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._count_down_timer
    L4_2 = L3_2
    L3_2 = L3_2.reset
    L3_2(L4_2)
    L3_2 = A0_2._count_down_timer
    L4_2 = L3_2
    L3_2 = L3_2.start
    L3_2(L4_2)
  end
end
L0_1._on_waiting_operation = L20_1
return L0_1
