local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.LittleGameState.ActivityClockParkGamePlayLittleGameStartDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonTextPanel"
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
L4_1 = "ActivityClockParkGamePlayMainPage"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.ClockParkAttributeType
L6_1 = G
L6_1 = L6_1.ConstValueUtils
L6_1 = L6_1.get_string_array
L7_1 = "Activity_ClockPark_GamePlay_Score_Level"
L6_1 = L6_1(L7_1)
L7_1 = G
L7_1 = L7_1.Class
L8_1 = "ActivityClockParkGamePlayLittleGameStartDialog"
L9_1 = G
L9_1 = L9_1.UIController
L7_1 = L7_1(L8_1, L9_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkGamePlayLittleGameStartDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L7_1.ctor = L8_1
function L8_1(A0_2)
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
L7_1.init = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_success_toast
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_trouble
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = "5307"
  L1_2(L2_2, L3_2)
end
L7_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2
  A0_2._little_game_state = nil
end
L7_1._on_dispose = L8_1
function L8_1(A0_2)
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
end
L7_1._setup_view = L8_1
function L8_1(A0_2)
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
L7_1._setup_game_img = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.ClockParkInstance
  L1_2 = L1_2.CardInfo
  L1_2 = L1_2.CardItemList
  if L1_2 ~= nil then
    L2_2 = L1_2.Count
    if 0 < L2_2 then
      L2_2 = L1_2[0]
      L3_2 = A0_2._binder
      L3_2 = L3_2.txt_desc
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2.Config
      L5_2 = L5_2.CardDesc
      L3_2(L4_2, L5_2)
    end
  end
end
L7_1._setup_desc = L8_1
function L8_1(A0_2)
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
  L2_2 = {}
  L3_2 = false
  L4_2 = false
  L5_2 = false
  L6_2 = A0_2._little_game_state
  L6_2 = L6_2.IsInHanuShooting
  L7_2 = L1_2[0]
  L8_2 = L7_2.Row
  L9_2 = 1
  L10_2 = L8_2.ParamList
  L10_2 = L10_2.Length
  L10_2 = L10_2 - 1
  L11_2 = 1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = L8_2.ParamList
    L13_2 = L13_2[L12_2]
    L14_2 = L8_2.Param1
    L14_2 = L14_2 * L13_2
    if 0 < L14_2 then
      L3_2 = true
    end
    L14_2 = L8_2.Param2
    L14_2 = L14_2 * L13_2
    if 0 < L14_2 then
      L4_2 = true
    end
    L14_2 = L8_2.Param3
    L14_2 = L14_2 * L13_2
    if 0 < L14_2 then
      L5_2 = true
    end
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L2_2
    L17_2 = A0_2
    L16_2 = A0_2._create_effect_item_data
    L18_2 = L8_2.Param1
    L19_2 = L8_2.Param2
    L20_2 = L8_2.Param3
    L21_2 = L13_2
    L22_2 = L8_2.PlayCardEffectDesc
    if L6_2 then
      L23_2 = CS
      L23_2 = L23_2.RPG
      L23_2 = L23_2.Client
      L23_2 = L23_2.TextmapStatic
      L23_2 = L23_2.GetText
      L24_2 = L8_2.PlayCardEffectDescParamList
      L25_2 = L12_2 - 1
      L24_2 = L24_2[L25_2]
      L24_2 = L6_1[L24_2]
      L23_2 = L23_2(L24_2)
      if L23_2 then
        goto lbl_67
      end
    end
    L23_2 = L8_2.PlayCardEffectDescParamList
    L24_2 = L12_2 - 1
    L23_2 = L23_2[L24_2]
    ::lbl_67::
    L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
  end
  L9_2 = A0_2._binder
  L9_2 = L9_2.panel_desc_list
  L10_2 = L9_2
  L9_2 = L9_2.setup_view
  L11_2 = L2_2
  L9_2(L10_2, L11_2)
  L9_2 = pairs
  L10_2 = L2_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = A0_2._binder
    L14_2 = L14_2.panel_desc_list
    L15_2 = L14_2
    L14_2 = L14_2.get_panel_by_index
    L16_2 = L12_2
    L14_2 = L14_2(L15_2, L16_2)
    if L14_2 ~= nil then
      L16_2 = L14_2
      L15_2 = L14_2.setup_result
      L17_2 = false
      L15_2(L16_2, L17_2)
    end
  end
  L9_2 = A0_2._binder
  L9_2 = L9_2.panel_effect_a
  L10_2 = L9_2
  L9_2 = L9_2.set_show_effect_highlight_icon
  L11_2 = L3_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.panel_effect_b
  L10_2 = L9_2
  L9_2 = L9_2.set_show_effect_highlight_icon
  L11_2 = L4_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.panel_effect_c
  L10_2 = L9_2
  L9_2 = L9_2.set_show_effect_highlight_icon
  L11_2 = L5_2
  L9_2(L10_2, L11_2)
end
L7_1._setup_target = L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
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
L7_1._create_effect_item_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect_a
  L2_2 = L1_2
  L1_2 = L1_2.setup_attribute_type
  L3_2 = L5_1.A
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect_b
  L2_2 = L1_2
  L1_2 = L1_2.setup_attribute_type
  L3_2 = L5_1.B
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect_c
  L2_2 = L1_2
  L1_2 = L1_2.setup_attribute_type
  L3_2 = L5_1.C
  L1_2(L2_2, L3_2)
end
L7_1._setup_attribute = L8_1
function L8_1(A0_2)
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
  L1_2 = L1_2.node_tips_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_tips
  L2_2 = L0_1.ClockParkInstance
  L2_2 = L2_2.ScriptInfo
  L2_2 = L2_2.DataRef
  L2_2 = L2_2.Row
  L2_2 = L2_2.ScriptGamePlayGuideGroupID
  L1_2.GuideID = L2_2
end
L7_1._setup_hint = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.shield_pause
  L1_2()
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SetClockParkBGM
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._little_game_state
  L2_2 = L1_2
  L1_2 = L1_2.FinishRound
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L7_1._on_btn_start = L8_1
function L8_1(A0_2)
  local L1_2
end
L7_1._on_btn_tips = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TopPage
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Name
    L3_2 = L4_1
    if L2_2 == L3_2 then
      L2_2 = L1_2.LuaTable
      if L2_2 ~= nil then
        L3_2 = L2_2.exit_gameplay_page
        if L3_2 ~= nil then
          L4_2 = L2_2
          L3_2 = L2_2.exit_gameplay_page
          L3_2(L4_2)
        end
      end
    end
  end
end
L7_1._in_control_exit_click = L8_1
function L8_1(A0_2)
  local L1_2
end
L7_1.get_first_selected_object = L8_1
function L8_1(A0_2, A1_2)
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
L7_1._on_enter_zoom = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L7_1._init_ui_navigation = L8_1
return L7_1
