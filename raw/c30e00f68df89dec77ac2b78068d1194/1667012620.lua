local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Puzzle.WolfBroShooting.WolfBroShootingIntegralPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Puzzle.MovieRacing.MovieRacingIntegralDigitalPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "WolfBroShootingIntegralPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 8
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._last_rank_index = 0
  L1_2 = {}
  A0_2._movie_racing_integral_digital_panel_list = L1_2
  L1_2 = L1_1
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MovieRacingIntegralDigitalPanel
    L8_2 = G
    L8_2 = L8_2.MovieRacingIntegralDigitalPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_integral_digital_item_list
    L8_2 = L8_2[L4_2]
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._movie_racing_integral_digital_panel_list
    L6_2[L4_2] = L5_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.init_integral_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_rank_index_animation_event
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._mono_wolf_bro_custom_data = A1_2
  L2_2 = A0_2._mono_wolf_bro_custom_data
  L2_2 = L2_2.GunPlayPuzzleBoard
  L2_2 = L2_2.GunMode
  L3_2 = A0_2._mono_wolf_bro_custom_data
  L3_2 = L3_2.GunPlayPuzzleBoard
  L3_2 = L3_2.GunLevel
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MazePuzzleWolfGunPlayLevelExcelTable
  L4_2 = L4_2.GetData
  L5_2 = #L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.TargetScore
  A0_2._target_score = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_target_score
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = A0_2._target_score
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_fail
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_success
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
end
L0_1.inti_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = tonumber
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2._last_score
  L2_2 = L2_2 - L3_2
  A0_2._add_score = L2_2
  L2_2 = tonumber
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.0f"
  L5_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._last_score = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_cur_score
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_add_integral
  L4_2 = A0_2._add_score
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._target_score
  L2_2 = L2_2 ~= nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_fail
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_success
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_rank_index
  if A1_2 == L2_2 then
    return
  end
  L2_2 = A0_2._cur_rank_index
  if A1_2 > L2_2 then
    L2_2 = "UI_ShootingTarget_IntegralPanel_LevelDown"
    if L2_2 then
      goto lbl_12
    end
  end
  L2_2 = "UI_ShootingTarget_IntegralPanel_LevelUp"
  ::lbl_12::
  A0_2._cur_rank_index = A1_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIAnimationUtils
  L3_2 = L3_2.PlayFromBegin
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_root
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_rank_index = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "WolfBroShootingRefreshRankIndex" then
    L3_2 = A0_2
    L2_2 = A0_2.setup_rank_index_node
    L2_2(L3_2)
  end
end
L0_1._on_rank_index_animation_event = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._cur_rank_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_rank_index_node
  L2_2(L3_2)
end
L0_1.setup_rank_index_immediately = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_rank_index
  L2_2 = A0_2._last_rank_index
  if L1_2 ~= L2_2 then
    A0_2._last_rank_index = L1_2
    L2_2 = G
    L2_2 = L2_2.UIUtils
    L2_2 = L2_2.set_children_visible
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_rank
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_rank_list
    L3_2 = A0_2._last_rank_index
    L2_2 = L2_2[L3_2]
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_rank_index_node = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_add_integral_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_add_integral_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = nil
  if A1_2 < 0 then
    L3_2 = "-"
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "%.0f"
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = A1_2
    L6_2, L7_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L2_2 = L3_2 .. L4_2
  else
    L3_2 = "+"
    L4_2 = string
    L4_2 = L4_2.format
    L5_2 = "%.0f"
    L6_2 = math
    L6_2 = L6_2.abs
    L7_2 = A1_2
    L6_2, L7_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L2_2 = L3_2 .. L4_2
  end
  if 0 < A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_add
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_minus
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_add
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_add
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_minus
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_minus
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_add_integral = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._add_score = 0
  A0_2._last_score = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_add_integral_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_cur_score
  L1_2(L2_2)
end
L0_1.init_integral_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = tostring
  L2_2 = A0_2._last_score
  L1_2 = L1_2(L2_2)
  L2_2 = string
  L2_2 = L2_2.len
  L3_2 = tostring
  L4_2 = A0_2._last_score
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L3_2 = string
  L3_2 = L3_2.len
  L4_2 = tostring
  L5_2 = A0_2._add_score
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L4_2 = L1_1
  L5_2 = 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._movie_racing_integral_digital_panel_list
    L8_2 = L8_2[L7_2]
    if L2_2 < L7_2 then
      L10_2 = L8_2
      L9_2 = L8_2.safe_set_active
      L11_2 = false
      L9_2(L10_2, L11_2)
    else
      L10_2 = L8_2
      L9_2 = L8_2.safe_set_active
      L11_2 = true
      L9_2(L10_2, L11_2)
      L9_2 = L2_2 - L7_2
      L9_2 = L9_2 + 1
      if L7_2 <= L3_2 then
        L11_2 = L8_2
        L10_2 = L8_2.setup_cur_num
        L12_2 = string
        L12_2 = L12_2.sub
        L13_2 = L1_2
        L14_2 = L9_2
        L15_2 = L9_2
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L13_2 = false
        L10_2(L11_2, L12_2, L13_2)
      else
        L11_2 = L8_2
        L10_2 = L8_2.setup_cur_num
        L12_2 = string
        L12_2 = L12_2.sub
        L13_2 = L1_2
        L14_2 = L9_2
        L15_2 = L9_2
        L12_2 = L12_2(L13_2, L14_2, L15_2)
        L13_2 = true
        L10_2(L11_2, L12_2, L13_2)
      end
    end
  end
end
L0_1._setup_cur_score = L2_1
return L0_1
