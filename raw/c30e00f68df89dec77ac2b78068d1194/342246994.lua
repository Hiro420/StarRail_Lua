local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.RogueNousRecommendedStoryPageBinder"
L0_1(L1_1)
L0_1 = 1
L1_1 = "#bcfff6"
L2_1 = 0.3
L3_1 = 0.2
L4_1 = "#ffffff"
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "RogueNousRecommendedStoryPage"
L7_1 = G
L7_1 = L7_1.UIController
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousRecommendedStoryPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
end
L5_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  A0_2._recommended_story_ids = A1_2
end
L5_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._on_btn_empty_close_click
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueDimensionData
  L1_2 = L1_2.NousStoryInfo
  L2_2 = A0_2._binder
  L2_2 = L2_2.sub_story_mgr
  L3_2 = L2_2
  L2_2 = L2_2.init
  L4_2 = L1_2.SubMissionList
  L5_2 = A0_2._recommended_story_ids
  L6_2 = false
  L7_2 = A0_2._binder
  L7_2 = L7_2.ui_param_deliverer
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.sub_story_mgr
  L3_2 = L2_2
  L2_2 = L2_2.refresh_sub_story
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_highlighted_story_panels
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_highlighted_lines
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._move_content_to_highlighted_story_panels
  L2_2(L3_2)
end
L5_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._do_exit
  L1_2(L2_2)
end
L5_1._on_btn_empty_close_click = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.sub_story_mgr
  L3_2 = L2_2
  L2_2 = L2_2.get_panels
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2(L3_2)
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.get_root_canvas_group
    L6_2 = L6_2(L7_2)
    if L6_2 ~= nil then
      L7_2 = L2_1
      L6_2.alpha = L7_2
    end
    L8_2 = L5_2
    L7_2 = L5_2.set_reward_inactive
    L7_2(L8_2)
    L8_2 = L5_2
    L7_2 = L5_2.get_nous_panel
    L7_2 = L7_2(L8_2)
    L9_2 = L7_2
    L8_2 = L7_2.set_dark
    L10_2 = true
    L8_2(L9_2, L10_2)
  end
  L1_2 = 0
  L2_2 = A0_2._recommended_story_ids
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._recommended_story_ids
    L5_2 = L5_2[L4_2]
    L6_2 = A0_2._binder
    L6_2 = L6_2.sub_story_mgr
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_id
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.get_root_canvas_group
      L7_2 = L7_2(L8_2)
      if L7_2 ~= nil then
        L8_2 = L0_1
        L7_2.alpha = L8_2
      end
      L9_2 = L6_2
      L8_2 = L6_2.get_nous_panel
      L8_2 = L8_2(L9_2)
      L10_2 = L8_2
      L9_2 = L8_2.set_green
      L11_2 = true
      L9_2(L10_2, L11_2)
    end
  end
end
L5_1._setup_highlighted_story_panels = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueDimensionData
  L1_2 = L1_2.NousStoryInfo
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.sub_story_mgr
  L4_2 = L3_2
  L3_2 = L3_2.get_lines
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L3_2(L4_2)
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.set_fill_percent
    L9_2 = 1
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_fill_color
    L9_2 = L4_1
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.set_line_alpha
    L9_2 = L3_1
    L7_2(L8_2, L9_2)
  end
  L2_2 = 0
  L3_2 = A0_2._recommended_story_ids
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._recommended_story_ids
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._binder
    L7_2 = L7_2.sub_story_mgr
    L8_2 = L7_2
    L7_2 = L7_2.get_line_by_end_id
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.set_fill_color
      L10_2 = L1_1
      L8_2(L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.set_line_alpha
      L10_2 = L0_1
      L8_2(L9_2, L10_2)
    end
    L9_2 = L1_2
    L8_2 = L1_2.GetNextSubStoryIDs
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L9_2 = L8_2.Length
      if 0 < L9_2 then
        L9_2 = 0
        L10_2 = L8_2.Length
        L10_2 = L10_2 - 1
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L13_2 = L8_2[L12_2]
          L14_2 = A0_2._binder
          L14_2 = L14_2.sub_story_mgr
          L15_2 = L14_2
          L14_2 = L14_2.get_line_by_end_id
          L16_2 = L13_2
          L14_2 = L14_2(L15_2, L16_2)
          L16_2 = L14_2
          L15_2 = L14_2.set_line_alpha
          L17_2 = L2_1
          L18_2 = L3_1
          L17_2 = L17_2 * L18_2
          L15_2(L16_2, L17_2)
        end
      end
    end
  end
end
L5_1._setup_highlighted_lines = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = -1
  L2_2 = -1
  L3_2 = 0
  L4_2 = A0_2._recommended_story_ids
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._recommended_story_ids
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2._binder
    L8_2 = L8_2.sub_story_mgr
    L9_2 = L8_2
    L8_2 = L8_2.get_panel_by_id
    L10_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 ~= nil then
      L10_2 = L8_2
      L9_2 = L8_2.get_tf
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2.anchoredPosition
      L9_2 = L9_2.y
      L9_2 = -L9_2
      if L1_2 == -1 or L1_2 > L9_2 then
        L1_2 = L9_2
      end
      if L2_2 == -1 or L2_2 < L9_2 then
        L2_2 = L9_2
      end
    end
  end
  L3_2 = L1_2 + L2_2
  L3_2 = L3_2 / 2
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect
  L4_2 = L4_2.viewport
  L4_2 = L4_2.rect
  L4_2 = L4_2.height
  L5_2 = A0_2._binder
  L5_2 = L5_2.rect_mask_2d
  L5_2 = L5_2.padding
  L5_2 = L5_2.w
  L6_2 = A0_2._binder
  L6_2 = L6_2.rect_mask_2d
  L6_2 = L6_2.padding
  L6_2 = L6_2.y
  L6_2 = L4_2 - L6_2
  L7_2 = L5_2 + L6_2
  L7_2 = L7_2 / 2
  L8_2 = A0_2._binder
  L8_2 = L8_2.scroll_rect
  L8_2 = L8_2.content
  L8_2 = L8_2.rect
  L8_2 = L8_2.height
  L9_2 = A0_2._binder
  L9_2 = L9_2.content_layout_group
  L9_2 = L9_2.padding
  L9_2 = L9_2.top
  L10_2 = L3_2 + L9_2
  L10_2 = L10_2 - L7_2
  L11_2 = L8_2 - L4_2
  L13_2 = A0_2
  L12_2 = A0_2._clamp_01
  L14_2 = L10_2 / L11_2
  L12_2 = L12_2(L13_2, L14_2)
  L13_2 = A0_2._binder
  L13_2 = L13_2.scroll_rect
  L14_2 = 1 - L12_2
  L13_2.verticalNormalizedPosition = L14_2
end
L5_1._move_content_to_highlighted_story_panels = L6_1
function L6_1(A0_2, A1_2)
  local L2_2
  if A1_2 < 0 then
    L2_2 = 0
    return L2_2
  end
  if 1 < A1_2 then
    L2_2 = 1
    return L2_2
  end
  return A1_2
end
L5_1._clamp_01 = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueNousRecommendedStoryPageExit
  L1_2(L2_2)
end
L5_1._do_exit = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._do_exit
  L1_2(L2_2)
end
L5_1._in_control_exit_click = L6_1
return L5_1
