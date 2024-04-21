local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.LittleGameState.ActivityClockParkGamePlayLittleGameResultDialogBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = "UIText_ClockPark_Play_Card_Result_1"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ClockParkRoundType
L3_1 = {}
L4_1 = L2_1.MovieGame
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueClientExcelTable
L5_1 = L5_1.GetData
L6_1 = "Picture_Play_Card_MovieGame"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.StringValue
L3_1[L4_1] = L5_1
L4_1 = L2_1.HanuShooting
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueClientExcelTable
L5_1 = L5_1.GetData
L6_1 = "Picture_Play_Card_ShootingGame"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.StringValue
L3_1[L4_1] = L5_1
L4_1 = L2_1.SlotMachine
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueClientExcelTable
L5_1 = L5_1.GetData
L6_1 = "Picture_Play_Card_Lottery"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.StringValue
L3_1[L4_1] = L5_1
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.ClockParkAttributeType
L5_1 = G
L5_1 = L5_1.ConstValueUtils
L5_1 = L5_1.get_string_array
L6_1 = "Activity_ClockPark_GamePlay_Score_Level"
L5_1 = L5_1(L6_1)
L6_1 = "WorldOfferingNewFigureHint_FadeIn"
L7_1 = "WorldOfferingNewFigureHint_FadeOut"
L8_1 = "UIText_ClockPark_GamePlay_Success"
L9_1 = "UIText_ClockPark_GamePlay_Fail"
L10_1 = "UIText_AbyssRewardList_RewardHint"
L11_1 = G
L11_1 = L11_1.Class
L12_1 = "ActivityClockParkGamePlayLittleGameResultDialog"
L13_1 = G
L13_1 = L13_1.UIController
L11_1 = L11_1(L12_1, L13_1)
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayLittleGameResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L11_1.ctor = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1.ClockParkInstance
  L2_2 = L1_2
  L1_2 = L1_2.GetState
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ClockParkGameStateEnum
  L3_2 = L3_2.MovieGame
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._little_game_state = L1_2
end
L11_1.init = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_trouble
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.recover_pause
  L1_2()
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SetClockParkBGM
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L11_1._on_load = L12_1
function L12_1(A0_2)
  local L1_2
  A0_2._little_game_state = nil
end
L11_1._on_dispose = L12_1
function L12_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_game_img
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_attribute
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_toast_anim
  L1_2(L2_2)
end
L11_1._setup_view = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.ScriptInfo
  L1_2 = L1_2.ChapterInfo
  L1_2 = L1_2.RoundInfo
  L1_2 = L1_2.RoundType
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_game
  L5_2 = L3_1[L1_2]
  L2_2(L3_2, L4_2, L5_2)
end
L11_1._setup_game_img = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = A0_2._little_game_state
  L2_2 = L1_2
  L1_2 = L1_2.GetBattleBuffEffectDataItems
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Count
    if L2_2 ~= 0 then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = A0_2._little_game_state
  L2_2 = L2_2.ScoreLevel
  L3_2 = 0
  L4_2 = 0
  L5_2 = 0
  L6_2 = {}
  L7_2 = A0_2._little_game_state
  L7_2 = L7_2.IsInHanuShooting
  L8_2 = L1_2[0]
  L9_2 = L8_2.Row
  L10_2 = 1
  L11_2 = L9_2.ParamList
  L11_2 = L11_2.Length
  L11_2 = L11_2 - 1
  L12_2 = 1
  for L13_2 = L10_2, L11_2, L12_2 do
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L6_2
    L17_2 = A0_2
    L16_2 = A0_2._create_effect_item_data
    L18_2 = L9_2.Param1
    L19_2 = L9_2.Param2
    L20_2 = L9_2.Param3
    L21_2 = L9_2.ParamList
    L21_2 = L21_2[L13_2]
    L22_2 = L9_2.PlayCardEffectDesc
    if L7_2 then
      L23_2 = CS
      L23_2 = L23_2.RPG
      L23_2 = L23_2.Client
      L23_2 = L23_2.TextmapStatic
      L23_2 = L23_2.GetText
      L24_2 = L9_2.PlayCardEffectDescParamList
      L25_2 = L13_2 - 1
      L24_2 = L24_2[L25_2]
      L24_2 = L5_1[L24_2]
      L23_2 = L23_2(L24_2)
      if L23_2 then
        goto lbl_53
      end
    end
    L23_2 = L9_2.PlayCardEffectDescParamList
    L24_2 = L13_2 - 1
    L23_2 = L23_2[L24_2]
    ::lbl_53::
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
    if L13_2 <= L2_2 then
      L14_2 = L9_2.Param1
      L15_2 = L9_2.ParamList
      L15_2 = L15_2[L13_2]
      L14_2 = L14_2 * L15_2
      L3_2 = L3_2 + L14_2
      L14_2 = L9_2.Param2
      L15_2 = L9_2.ParamList
      L15_2 = L15_2[L13_2]
      L14_2 = L14_2 * L15_2
      L4_2 = L4_2 + L14_2
      L14_2 = L9_2.Param3
      L15_2 = L9_2.ParamList
      L15_2 = L15_2[L13_2]
      L14_2 = L14_2 * L15_2
      L5_2 = L5_2 + L14_2
    end
  end
  L10_2 = A0_2._binder
  L10_2 = L10_2.panel_desc_list
  L11_2 = L10_2
  L10_2 = L10_2.setup_view
  L12_2 = L6_2
  L10_2(L11_2, L12_2)
  L10_2 = pairs
  L11_2 = L6_2
  L10_2, L11_2, L12_2 = L10_2(L11_2)
  for L13_2, L14_2 in L10_2, L11_2, L12_2 do
    L15_2 = A0_2._binder
    L15_2 = L15_2.panel_desc_list
    L16_2 = L15_2
    L15_2 = L15_2.get_panel_by_index
    L17_2 = L13_2
    L15_2 = L15_2(L16_2, L17_2)
    if L15_2 ~= nil then
      L17_2 = L15_2
      L16_2 = L15_2.setup_result
      L18_2 = L13_2 <= L2_2
      L16_2(L17_2, L18_2)
    end
  end
  L10_2 = A0_2._binder
  L10_2 = L10_2.panel_effect_a
  L11_2 = L10_2
  L10_2 = L10_2.setup_num_result
  L12_2 = L3_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.panel_effect_b
  L11_2 = L10_2
  L10_2 = L10_2.setup_num_result
  L12_2 = L4_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.panel_effect_c
  L11_2 = L10_2
  L10_2 = L10_2.setup_num_result
  L12_2 = L5_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.panel_effect_a
  L11_2 = L10_2
  L10_2 = L10_2.set_show_effect_highlight_icon
  L12_2 = 0 < L3_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.panel_effect_b
  L11_2 = L10_2
  L10_2 = L10_2.set_show_effect_highlight_icon
  L12_2 = 0 < L4_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.panel_effect_c
  L11_2 = L10_2
  L10_2 = L10_2.set_show_effect_highlight_icon
  L12_2 = 0 < L5_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.txt_toast
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetTextID
  if 0 < L2_2 then
    L12_2 = L8_1
    if L12_2 then
      goto lbl_145
    end
  end
  L12_2 = L9_1
  ::lbl_145::
  L10_2(L11_2, L12_2)
end
L11_1._setup_target = L12_1
function L12_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2
  L7_2 = {}
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.TextmapStatic
  L8_2 = L8_2.GetText
  L9_2 = A5_2
  L10_2 = A6_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2.desc = L8_2
  L8_2 = A1_2 * A4_2
  L7_2.resultA = L8_2
  L8_2 = A2_2 * A4_2
  L7_2.resultB = L8_2
  L8_2 = A3_2 * A4_2
  L7_2.resultC = L8_2
  return L7_2
end
L11_1._create_effect_item_data = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect_a
  L2_2 = L1_2
  L1_2 = L1_2.setup_attribute_type
  L3_2 = L4_1.A
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect_b
  L2_2 = L1_2
  L1_2 = L1_2.setup_attribute_type
  L3_2 = L4_1.B
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect_c
  L2_2 = L1_2
  L1_2 = L1_2.setup_attribute_type
  L3_2 = L4_1.C
  L1_2(L2_2, L3_2)
end
L11_1._setup_attribute = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._little_game_state
  if L1_2 then
    L1_2 = A0_2._little_game_state
    L1_2 = L1_2.IsInMovieGame
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_hint
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_ClockPark_MainPage_GamePlay_Hint_2"
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._little_game_state
    L1_2 = L1_2.IsInHanuShooting
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_hint
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_ClockPark_MainPage_GamePlay_Hint_3"
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L10_1
  L1_2(L2_2, L3_2)
end
L11_1._setup_hint = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.ActionInfo
  L1_2 = L1_2.OnCardAction
  if L1_2 ~= nil then
    L2_2 = L1_2.Count
    if 0 < L2_2 then
      L2_2 = L1_2[0]
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2.Row
      L5_2 = L5_2.CardDesc
      L3_2(L4_2, L5_2)
    end
  end
end
L11_1._setup_desc = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ClockPark_Script_Round_Continue"
  L1_2(L2_2, L3_2)
end
L11_1._setup_btn = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_success_toast
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L6_1
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.anim_success_toast
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = L7_1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_success_toast
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L6_1
  L1_2(L2_2, L3_2)
end
L11_1._setup_toast_anim = L12_1
function L12_1(A0_2)
  local L1_2
end
L11_1.get_first_selected_object = L12_1
function L12_1(A0_2, A1_2)
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
L11_1._on_enter_zoom = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L11_1._init_ui_navigation = L12_1
return L11_1
