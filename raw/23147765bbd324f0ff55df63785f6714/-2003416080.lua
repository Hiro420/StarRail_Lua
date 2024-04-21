local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.ActivityClockParkGamePlaySlotMachineStartDialogBinder"
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
L1_1 = L1_1.ClockParkGameStateEnum
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.ClockParkAttributeType
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
L5_1 = {}
L5_1[1] = "UIText_Rollshop_Level_UR"
L5_1[2] = "UIText_Rollshop_Level_SSR"
L5_1[3] = "UIText_Rollshop_Level_SR"
L5_1[4] = "UIText_Rollshop_Level_R"
L6_1 = "ActivityClockParkGamePlayMainPage"
L7_1 = G
L7_1 = L7_1.Class
L8_1 = "ActivityClockParkGamePlaySlotMachineStartDialog"
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
  L3_2 = L3_2.ActivityClockParkGamePlaySlotMachineStartDialogBinder
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
function L8_1(A0_2, A1_2)
  A0_2._slot_machine_state = A1_2
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
end
L7_1._on_load = L8_1
function L8_1(A0_2)
  local L1_2
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
  L1_2 = A0_2._setup_effect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_hint
  L1_2(L2_2)
end
L7_1._setup_view = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_game
  L4_2 = L3_1
  L1_2(L2_2, L3_2, L4_2)
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
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect_a
  L2_2 = L1_2
  L1_2 = L1_2.setup_attribute_type
  L3_2 = L2_1.A
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect_b
  L2_2 = L1_2
  L1_2 = L1_2.setup_attribute_type
  L3_2 = L2_1.B
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_effect_c
  L2_2 = L1_2
  L1_2 = L1_2.setup_attribute_type
  L3_2 = L2_1.C
  L1_2(L2_2, L3_2)
end
L7_1._setup_attribute = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.ActivityClockParkUtils
  L2_2 = L2_2.get_state
  L3_2 = L1_1.SlotMachine
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
  L3_2 = false
  L4_2 = false
  L5_2 = false
  L6_2 = {}
  L7_2 = pairs
  L8_2 = L1_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_2.LotteryAttributeGain
    L12_2 = L12_2.AttributeA
    if 0 < L12_2 then
      L3_2 = true
    end
    L12_2 = L11_2.LotteryAttributeGain
    L12_2 = L12_2.AttributeB
    if 0 < L12_2 then
      L4_2 = true
    end
    L12_2 = L11_2.LotteryAttributeGain
    L12_2 = L12_2.AttributeC
    if 0 < L12_2 then
      L5_2 = true
    end
    L12_2 = table
    L12_2 = L12_2.insert
    L13_2 = L6_2
    L15_2 = A0_2
    L14_2 = A0_2._create_effect_item_data
    L16_2 = L11_2
    L14_2, L15_2, L16_2 = L14_2(L15_2, L16_2)
    L12_2(L13_2, L14_2, L15_2, L16_2)
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_desc_list
  L8_2 = L7_2
  L7_2 = L7_2.setup_view
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = pairs
  L8_2 = L6_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = A0_2._binder
    L12_2 = L12_2.panel_desc_list
    L13_2 = L12_2
    L12_2 = L12_2.get_panel_by_index
    L14_2 = L10_2
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 ~= nil then
      L14_2 = L12_2
      L13_2 = L12_2.setup_result
      L15_2 = false
      L13_2(L14_2, L15_2)
    end
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_effect_a
  L8_2 = L7_2
  L7_2 = L7_2.set_show_effect_highlight_icon
  L9_2 = L3_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_effect_b
  L8_2 = L7_2
  L7_2 = L7_2.set_show_effect_highlight_icon
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_effect_c
  L8_2 = L7_2
  L7_2 = L7_2.set_show_effect_highlight_icon
  L9_2 = L5_2
  L7_2(L8_2, L9_2)
end
L7_1._setup_effect = L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextmapStatic
  L3_2 = L3_2.GetText
  L4_2 = A1_2.LotteryType
  L4_2 = L5_1[L4_2]
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
L7_1._create_effect_item_data = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
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
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityClockPark.InSideGame.SlotMachineState.ClockParkSlotMachinePage"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L7_1._on_btn_start = L8_1
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
    L3_2 = L6_1
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
