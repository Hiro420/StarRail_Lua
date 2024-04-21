local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionGraphPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Tools.ChessRogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionGraphPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ChessRogueModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_animation_event
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._cabinet_data_lst = A1_2
  L2_2 = L1_1.ChessRogueDimensionData
  L2_2 = L2_2.DimensionInfo
  L3_2 = L2_2
  L2_2 = L2_2.GetChessRogueDimensionDataItemList
  L2_2 = L2_2(L3_2)
  A0_2._dimension_data_lst = L2_2
  L2_2 = G
  L2_2 = L2_2.ChessRogueUtils
  L2_2 = L2_2.calculate_cabinet_increment_tb_by_missions
  L3_2 = A0_2._cabinet_data_lst
  L2_2 = L2_2(L3_2)
  A0_2._dimension_increment_tb = L2_2
  L2_2 = G
  L2_2 = L2_2.ChessRogueUtils
  L2_2 = L2_2.format_dimension_display_data
  L3_2 = A0_2._dimension_increment_tb
  L2_2 = L2_2(L3_2)
  A0_2._graph_data_tb = L2_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.dimension_components
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.NumPanel
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = A0_2._dimension_data_lst
    L10_2 = L5_2 - 1
    L9_2 = L9_2[L10_2]
    L10_2 = A0_2._dimension_increment_tb
    L11_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2)
    L7_2 = L6_2.GraphPanel
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = A0_2._graph_data_tb
    L9_2 = L9_2[L5_2]
    L7_2(L8_2, L9_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.dimension_components
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.GraphPanel
    L7_2 = L6_2
    L6_2 = L6_2.try_play_increase_animation
    L6_2(L7_2)
  end
end
L0_1.setup_animation_play = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.dimension_components
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.NumPanel
    L8_2 = L7_2
    L7_2 = L7_2.try_play_switch_animation
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
    L7_2 = L6_2.GraphPanel
    L8_2 = L7_2
    L7_2 = L7_2.try_play_default_switch_animation
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.play_aeon_room_unlock_animation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.dimension_components
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.NumPanel
    L8_2 = L7_2
    L7_2 = L7_2.try_play_switch_stage_animation
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
    L7_2 = L6_2.GraphPanel
    L8_2 = L7_2
    L7_2 = L7_2.try_play_switch_stage_animation
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.play_transfer_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.dimension_components
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.NumPanel
    L7_2 = L6_2
    L6_2 = L6_2.try_set_switch_stage_view
    L6_2(L7_2)
    L6_2 = L5_2.GraphPanel
    L7_2 = L6_2
    L6_2 = L6_2.try_increase_default_quad
    L6_2(L7_2)
  end
end
L0_1.try_increase_default_quad = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1.ChessRogueDimensionData
  L1_2 = L1_2.DimensionInfo
  L2_2 = L1_2
  L1_2 = L1_2.GetChessRogueDimensionDataItemList
  L1_2 = L1_2(L2_2)
  A0_2._dimension_data_lst = L1_2
  L1_2 = G
  L1_2 = L1_2.ChessRogueUtils
  L1_2 = L1_2.format_dimension_display_data
  L2_2 = {}
  L1_2 = L1_2(L2_2)
  A0_2._graph_data_tb = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.dimension_components
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.NumPanel
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = A0_2._dimension_data_lst
    L9_2 = L4_2 - 1
    L8_2 = L8_2[L9_2]
    L9_2 = nil
    L10_2 = true
    L6_2(L7_2, L8_2, L9_2, L10_2)
    L6_2 = L5_2.GraphPanel
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = A0_2._graph_data_tb
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
  end
end
L0_1.setup_num_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_listener = A1_2
  A0_2._click_handler = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._click_listener
  if L2_2 then
    L2_2 = A0_2._click_handler
    if L2_2 then
      L2_2 = A0_2._click_handler
      L3_2 = A0_2._click_listener
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_dimension_panel_clicked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 ~= "QuadStartIncreasing" and A1_2 ~= "UIQuadSwitch" then
    return
  end
  if A1_2 == "QuadStartIncreasing" then
    L2_2 = A0_2._stage_one_triggered
    if L2_2 then
      return
  end
  elseif A1_2 == "QuadStartIncreasing" then
    L2_2 = ipairs
    L3_2 = A0_2._binder
    L3_2 = L3_2.dimension_components
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = L6_2.NumPanel
      L8_2 = L7_2
      L7_2 = L7_2.play_increase_animation
      L7_2(L8_2)
      L7_2 = L6_2.GraphPanel
      L8_2 = L7_2
      L7_2 = L7_2.try_start_increase_quad
      L7_2(L8_2)
    end
    A0_2._stage_one_triggered = true
    return
  end
  if A1_2 == "UIQuadSwitch" then
    L2_2 = A0_2._stage_two_triggered
    if L2_2 then
      return
  end
  elseif A1_2 == "UIQuadSwitch" then
    L3_2 = A0_2
    L2_2 = A0_2.try_increase_default_quad
    L2_2(L3_2)
    A0_2._stage_two_triggered = true
  end
end
L0_1._on_animation_event = L2_1
return L0_1
