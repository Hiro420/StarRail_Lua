local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.ActivityClockParkGamePlaySlotMachineResultDialogBinder"
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
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.ClockParkAttributeType
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.ClockParkGameStateEnum
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ConstValueClientExcelTable
L3_1 = L3_1.GetData
L4_1 = "Picture_Play_Card_Lottery"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L3_1 = L3_1.StringValue
L4_1 = "UIText_ClockPark_MainPage_GamePlay_Hint_4"
L5_1 = "UIText_BoxingClub_Challenge_FirstReward"
L6_1 = {}
L6_1[1] = "UIText_Rollshop_Level_UR"
L6_1[2] = "UIText_Rollshop_Level_SSR"
L6_1[3] = "UIText_Rollshop_Level_SR"
L6_1[4] = "UIText_Rollshop_Level_R"
L7_1 = "WorldOfferingNewFigureHint_FadeIn"
L8_1 = "WorldOfferingNewFigureHint_FadeOut"
L9_1 = "UIText_ClockPark_GamePlay_Success"
L10_1 = "UIText_ClockPark_GamePlay_Fail"
L11_1 = G
L11_1 = L11_1.Class
L12_1 = "ActivityClockParkGamePlaySlotMachineResultDialog"
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
  L3_2 = L3_2.ActivityClockParkGamePlaySlotMachineResultDialogBinder
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
function L12_1(A0_2, A1_2)
  A0_2._slot_machine_state = A1_2
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
end
L11_1._on_load = L12_1
function L12_1(A0_2)
  local L1_2
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
  L1_2 = A0_2._setup_effect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_result
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hint
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
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_game
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
end
L11_1._setup_game_img = L12_1
function L12_1(A0_2)
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
L11_1._setup_desc = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect_a
  L2_2 = L1_2
  L1_2 = L1_2.setup_attribute_type
  L3_2 = L1_1.A
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect_b
  L2_2 = L1_2
  L1_2 = L1_2.setup_attribute_type
  L3_2 = L1_1.B
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect_c
  L2_2 = L1_2
  L1_2 = L1_2.setup_attribute_type
  L3_2 = L1_1.C
  L1_2(L2_2, L3_2)
end
L11_1._setup_attribute = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.ActivityClockParkUtils
  L2_2 = L2_2.get_state
  L3_2 = L2_1.SlotMachine
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.GetSortedLotteryList
    L3_2 = L3_2(L4_2)
    L4_2 = 0
    L5_2 = L3_2.Count
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2[L7_2]
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.ClockParkLotteryExcelTable
      L9_2 = L9_2.GetData
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 ~= nil then
        L10_2 = L9_2.LotteryType
        L10_2 = L1_2[L10_2]
        if L10_2 == nil then
          L10_2 = L9_2.LotteryType
          L1_2[L10_2] = L9_2
        end
      end
    end
  end
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L3_2
    L12_2 = A0_2
    L11_2 = A0_2._create_effect_item_data
    L13_2 = L8_2
    L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_desc_list
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._binder
    L9_2 = L9_2.panel_desc_list
    L10_2 = L9_2
    L9_2 = L9_2.get_panel_by_index
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L11_2 = L9_2
      L10_2 = L9_2.setup_result
      L12_2 = false
      L10_2(L11_2, L12_2)
    end
  end
end
L11_1._setup_effect = L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = A1_2.LotteryType
  L4_2 = L6_1[L4_2]
  L3_2 = L3_2(L4_2)
  L2_2.desc = L3_2
  L3_2 = A1_2.LotteryAttributeGain
  L3_2 = L3_2.AttributeA
  L2_2.resultA = L3_2
  L3_2 = A1_2.LotteryAttributeGain
  L3_2 = L3_2.AttributeB
  L2_2.resultB = L3_2
  L3_2 = A1_2.LotteryAttributeGain
  L3_2 = L3_2.AttributeC
  L2_2.resultC = L3_2
  L2_2.show_status = true
  return L2_2
end
L11_1._create_effect_item_data = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = G
  L1_2 = L1_2.ActivityClockParkUtils
  L1_2 = L1_2.get_state
  L2_2 = L2_1.SlotMachine
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.ResultLotteryID
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ClockParkLotteryExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L4_2 = L3_2.LotteryType
      L5_2 = A0_2._binder
      L5_2 = L5_2.panel_desc_list
      L6_2 = L5_2
      L5_2 = L5_2.get_panel_by_index
      L7_2 = L4_2
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 ~= nil then
        L7_2 = L5_2
        L6_2 = L5_2.setup_result
        L8_2 = true
        L6_2(L7_2, L8_2)
      end
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_effect_a
      L7_2 = L6_2
      L6_2 = L6_2.setup_num_result
      L8_2 = L3_2.LotteryAttributeGain
      L8_2 = L8_2.AttributeA
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_effect_b
      L7_2 = L6_2
      L6_2 = L6_2.setup_num_result
      L8_2 = L3_2.LotteryAttributeGain
      L8_2 = L8_2.AttributeB
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_effect_c
      L7_2 = L6_2
      L6_2 = L6_2.setup_num_result
      L8_2 = L3_2.LotteryAttributeGain
      L8_2 = L8_2.AttributeC
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_effect_a
      L7_2 = L6_2
      L6_2 = L6_2.set_show_effect_highlight_icon
      L8_2 = L3_2.LotteryAttributeGain
      L8_2 = L8_2.AttributeA
      L8_2 = 0 < L8_2
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_effect_b
      L7_2 = L6_2
      L6_2 = L6_2.set_show_effect_highlight_icon
      L8_2 = L3_2.LotteryAttributeGain
      L8_2 = L8_2.AttributeB
      L8_2 = 0 < L8_2
      L6_2(L7_2, L8_2)
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_effect_c
      L7_2 = L6_2
      L6_2 = L6_2.set_show_effect_highlight_icon
      L8_2 = L3_2.LotteryAttributeGain
      L8_2 = L8_2.AttributeC
      L8_2 = 0 < L8_2
      L6_2(L7_2, L8_2)
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_toast
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    if L2_2 ~= 0 then
      L6_2 = L9_1
      if L6_2 then
        goto lbl_86
      end
    end
    L6_2 = L10_1
    ::lbl_86::
    L4_2(L5_2, L6_2)
  end
end
L11_1._setup_result = L12_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
end
L11_1._setup_hint = L12_1
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
  L3_2 = L7_1
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
    L2_3 = L8_1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_success_toast
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L7_1
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
