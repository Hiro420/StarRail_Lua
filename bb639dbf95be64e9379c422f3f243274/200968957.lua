local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.ChronicleUtilities.MissionChronicleUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChronicleSingleBtnItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 20
L2_1 = 28
L3_1 = 11
L4_1 = 60
L5_1 = 20
L6_1 = 23
L7_1 = 100
L8_1 = 0.3
L9_1 = 4
L10_1 = "ChroniclePage_Item_FadeIn"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click_btn
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._nav_callback
    if L0_3 then
      L0_3 = A0_2._nav_callback_self
      if L0_3 then
        L0_3 = A0_2._nav_callback
        L1_3 = A0_2._nav_callback_self
        L2_3 = A0_2
        L0_3(L1_3, L2_3)
      end
    end
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MissionChronicleUnlockTimeUp
  L4_2 = A0_2._on_unlock_time_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Mission.Chronicle.MissionChronicleSingleBtnLineItem"
  L6_2 = "Ui.Mission.Chronicle.MissionChronicleSingleBtnLineItemBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._line_panel = L1_2
  L1_2 = A0_2._line_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_prefab_load_line
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_frame
  L1_2 = L1_2.transform
  L1_2 = L1_2.rect
  L1_2 = L1_2.width
  A0_2._width = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_frame
  L1_2 = L1_2.transform
  L1_2 = L1_2.rect
  L1_2 = L1_2.height
  A0_2._height = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_root
  L1_2.alpha = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_left_dot
  L1_2.alpha = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_right_dot
  L1_2.alpha = 0
end
L0_1._on_load = L11_1
function L11_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L11_1
function L11_1(A0_2, A1_2, A2_2)
  A0_2._find_graph_panel_callback = A1_2
  A0_2._find_graph_panel_callback_self = A2_2
end
L0_1.register_find_graph_panel_callback = L11_1
function L11_1(A0_2, A1_2, A2_2)
  A0_2._nav_callback = A1_2
  A0_2._nav_callback_self = A2_2
end
L0_1.register_nav_callback = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = A0_2._mission_path_info
  L1_2 = L1_2.ID
  return L1_2
end
L0_1.get_id = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._width
  L2_2 = A0_2._height
  return L1_2, L2_2
end
L0_1.get_width_height = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = A0_2._mission_path_info
  return L1_2
end
L0_1.get_path_data = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L1_2 = L1_2.anchoredPosition
  return L1_2
end
L0_1.get_pos = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_btn = L11_1
function L11_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_click_btn
  L1_2(L2_2)
end
L0_1.trigger_btn = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_fade_in
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_fade_in
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = L10_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = {}
  A0_2._play_fade_in_panel_table = L1_2
  L1_2 = 0
  L2_2 = A0_2._mission_path_info
  L2_2 = L2_2.ConnectionList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._mission_path_info
    L5_2 = L5_2.ConnectionList
    L5_2 = L5_2[L4_2]
    L5_2 = L5_2.PathData
    L6_2 = G
    L6_2 = L6_2.MissionChronicleUtils
    L6_2 = L6_2.check_is_path_data_available
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = A0_2._find_graph_panel_callback
      L7_2 = A0_2._find_graph_panel_callback_self
      L8_2 = L5_2.ID
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 ~= nil then
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._play_fade_in_panel_table
        L9_2 = L6_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  L1_2 = A0_2._play_fade_in_panel_table
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.CoroutineUtils
    L1_2 = L1_2.InvokeAfterFrames
    L2_2 = L9_1
    function L3_2()
      local L0_3, L1_3
      L0_3 = A0_2._binder
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_fade_in_anim_between_timer_end
        L0_3(L1_3)
      end
    end
    L1_2(L2_2, L3_2)
  end
end
L0_1.play_fade_in_anim = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_root
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.canvas_group_root
    L1_2.alpha = 1
  end
end
L0_1.force_fade_in = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 1
  L2_2 = A0_2._play_fade_in_panel_table
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._play_fade_in_panel_table
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.play_fade_in_anim
    L6_2(L7_2)
  end
end
L0_1._on_fade_in_anim_between_timer_end = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_root
    L3_2 = L2_2
    L2_2 = L2_2.SetChecked
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.instantiate_object
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_prefab_load_checked_eff
    L4_2 = L4_2.Prefab
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_prefab_load_checked_eff
    L5_2 = L5_2.transform
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._checked_eff = L2_2
  else
    L2_2 = A0_2._checked_eff
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.destroy_object
      L4_2 = A0_2._checked_eff
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.set_selected = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.get_cur_selected_path_data
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._mission_path_info
    if L2_2 ~= nil then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L2_2 = L1_2.ID
  L3_2 = A0_2._mission_path_info
  L3_2 = L3_2.ID
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._hide_nodes
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_info
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_status
    L2_2(L3_2)
  end
end
L0_1._on_return_to_top = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.ID
  L3_2 = A0_2._mission_path_info
  L3_2 = L3_2.ID
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._hide_nodes
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_info
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_status
    L2_2(L3_2)
  end
end
L0_1._on_unlock_time_up = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._mission_path_info = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._hide_nodes
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_pos
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_mission_type
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_reddot
  L2_2(L3_2)
end
L0_1.setup_view = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_can_take_mission
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status_unknow
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_status_unknow
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mask
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_mask
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_to_be_continue_txt
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_to_be_continue_txt
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._hide_nodes = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._mission_path_info
  L3_2 = L3_2.Title
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._mission_path_info
  L1_2 = L1_2.NodeType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChronicleNodeType
  L2_2 = L2_2.ChapterToBeContinue
  if L1_2 == L2_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_path
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_unknown
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.WorldDataConfigExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._mission_path_info
    L2_2 = L2_2.WorldID
    L1_2 = L1_2(L2_2)
    if L1_2 == nil then
      L2_2 = G
      L2_2 = L2_2.SuperDebug
      L2_2 = L2_2.LogErrorFormat
      L3_2 = "MissionChronicleSingleBtnItem: \230\156\170\230\137\190\229\136\176WorldID\228\184\186"
      L4_2 = A0_2._mission_path_info
      L4_2 = L4_2.WorldID
      L5_2 = "\233\133\141\231\189\174\239\188\140\232\138\130\231\130\185ID\228\184\186"
      L6_2 = A0_2._mission_path_info
      L6_2 = L6_2.ID
      L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
      L2_2(L3_2)
    end
    L2_2 = A0_2._mission_path_info
    L2_2 = L2_2.NodeType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ChronicleNodeType
    L3_2 = L3_2.ChapterMain
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._mission_path_info
      L2_2 = L2_2.NodeType
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.ChronicleNodeType
      L3_2 = L3_2.ChapterGap
      if L2_2 ~= L3_2 then
        L2_2 = A0_2._mission_path_info
        L2_2 = L2_2.NodeType
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.ChronicleNodeType
        L3_2 = L3_2.ChapterSide
        if L2_2 ~= L3_2 then
          goto lbl_141
        end
      end
    end
    L2_2 = A0_2._mission_path_info
    L2_2 = L2_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ChronicleStatus
    L3_2 = L3_2.UnKnown
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._mission_path_info
      L2_2 = L2_2.Status
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.ChronicleStatus
      L3_2 = L3_2.Locked
      if L2_2 ~= L3_2 then
        L2_2 = A0_2._mission_path_info
        L2_2 = L2_2.Status
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.ChronicleStatus
        L3_2 = L3_2.Prediction
        if L2_2 ~= L3_2 then
          goto lbl_107
        end
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_path
    L5_2 = L1_2.ChronicleWorldPredictPath
    L2_2(L3_2, L4_2, L5_2)
    goto lbl_121
    ::lbl_107::
    L2_2 = A0_2._mission_path_info
    L2_2 = L2_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ChronicleStatus
    L3_2 = L3_2.Processing
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._async_load_sprite_to
      L4_2 = A0_2._binder
      L4_2 = L4_2.img_path
      L5_2 = L1_2.ChronicleWorldProcessingPath
      L2_2(L3_2, L4_2, L5_2)
    end
    ::lbl_121::
    L2_2 = A0_2._mission_path_info
    L3_2 = L2_2
    L2_2 = L2_2.IsConnectMissionFinish
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._mission_path_info
      L2_2 = L2_2.ImagePath
      if L2_2 ~= nil then
        L2_2 = A0_2._mission_path_info
        L2_2 = L2_2.ImagePath
        if L2_2 ~= "" then
          L3_2 = A0_2
          L2_2 = A0_2._async_load_sprite_to
          L4_2 = A0_2._binder
          L4_2 = L4_2.img_path
          L5_2 = A0_2._mission_path_info
          L5_2 = L5_2.ImagePath
          L2_2(L3_2, L4_2, L5_2)
        end
      end
    end
    do return end
    ::lbl_141::
    L2_2 = A0_2._mission_path_info
    L2_2 = L2_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ChronicleStatus
    L3_2 = L3_2.UnKnown
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._mission_path_info
      L2_2 = L2_2.Status
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.ChronicleStatus
      L3_2 = L3_2.Locked
      if L2_2 ~= L3_2 then
        L2_2 = A0_2._mission_path_info
        L2_2 = L2_2.Status
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.ChronicleStatus
        L3_2 = L3_2.Prediction
        if L2_2 ~= L3_2 then
          goto lbl_174
        end
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_path
    L5_2 = L1_2.ChronicleWorldPredictPath
    L2_2(L3_2, L4_2, L5_2)
    goto lbl_212
    ::lbl_174::
    L2_2 = A0_2._mission_path_info
    L2_2 = L2_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ChronicleStatus
    L3_2 = L3_2.Processing
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._async_load_sprite_to
      L4_2 = A0_2._binder
      L4_2 = L4_2.img_path
      L5_2 = L1_2.ChronicleWorldProcessingPath
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2._mission_path_info
      L2_2 = L2_2.Status
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.ChronicleStatus
      L3_2 = L3_2.Finished
      if L2_2 == L3_2 then
        L2_2 = A0_2._mission_path_info
        L2_2 = L2_2.ImagePath
        if L2_2 ~= nil then
          L2_2 = A0_2._mission_path_info
          L2_2 = L2_2.ImagePath
          if L2_2 ~= "" then
            L3_2 = A0_2
            L2_2 = A0_2._async_load_sprite_to
            L4_2 = A0_2._binder
            L4_2 = L4_2.img_path
            L5_2 = A0_2._mission_path_info
            L5_2 = L5_2.ImagePath
            L2_2(L3_2, L4_2, L5_2)
          end
        end
      end
    end
  end
  ::lbl_212::
end
L0_1._setup_info = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector2
  L3_2 = A0_2._mission_path_info
  L3_2 = L3_2.PosX
  L4_2 = A0_2._mission_path_info
  L4_2 = L4_2.PosY
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.anchoredPosition = L2_2
end
L0_1._setup_pos = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._mission_path_info
  L1_2 = L1_2.NodeType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChronicleNodeType
  L2_2 = L2_2.ChapterToBeContinue
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_btn_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_path
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.img_path
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_status_unknow
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_status_unknow
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_to_be_continue_txt
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_to_be_continue_txt
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_unknow_left_dot
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_unknow_left_dot
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
    return
  end
  L1_2 = A0_2._mission_path_info
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ChronicleStatus
  L2_2 = L2_2.Prediction
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_title_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_btn_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "TalkSentenceName_FemaleUnknown"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_title_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_status_unknow
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_status_unknow
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_mask
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_mask
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
    return
  end
  L1_2 = A0_2._mission_path_info
  L2_2 = L1_2
  L1_2 = L1_2.CheckIsCanTakeMission
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._mission_path_info
  L2_2 = L2_2.Status
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ChronicleStatus
  L3_2 = L3_2.Finished
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_status_complete
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._mission_path_info
    L2_2 = L2_2.Status
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ChronicleStatus
    L3_2 = L3_2.Locked
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_status_unknow
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_status_unknow
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_status_lock
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = not L1_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_mask
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.node_mask
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_can_take_mission
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._can_take_eff
    if L2_2 == nil then
      L3_2 = A0_2
      L2_2 = A0_2.instantiate_object
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_prefab_load_can_take_eff
      L4_2 = L4_2.Prefab
      L5_2 = A0_2._binder
      L5_2 = L5_2.node_prefab_load_can_take_eff
      L5_2 = L5_2.transform
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      A0_2._can_take_eff = L2_2
    end
  else
    L2_2 = A0_2._can_take_eff
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.destroy_object
      L4_2 = A0_2._can_take_eff
      L2_2(L3_2, L4_2)
      A0_2._can_take_eff = nil
    end
  end
end
L0_1._setup_status = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._mission_path_info
  L1_2 = L1_2.NodeType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChronicleNodeType
  L2_2 = L2_2.ChapterToBeContinue
  if L1_2 == L2_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_mission_type_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_mission_type_icon
  L4_2 = A0_2._mission_path_info
  L4_2 = L4_2.MissionTypeIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_mission_type_icon_bg
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = A0_2._mission_path_info
  L3_2 = L3_2.MissionTypeColor
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_mission_type_outline
  if L1_2 then
  end
end
L0_1._setup_mission_type = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = A0_2._mission_path_info
  L2_2 = L1_2
  L1_2 = L1_2.IsCanStepNextPath
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = {}
  L3_2 = A0_2._mission_path_info
  L3_2 = L3_2.PosX
  L2_2.x = L3_2
  L3_2 = A0_2._mission_path_info
  L3_2 = L3_2.PosY
  L2_2.y = L3_2
  L3_2 = 0
  L4_2 = A0_2._mission_path_info
  L4_2 = L4_2.ConnectionList
  L4_2 = L4_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._mission_path_info
    L7_2 = L7_2.ConnectionList
    L7_2 = L7_2[L6_2]
    L8_2 = G
    L8_2 = L8_2.MissionChronicleUtils
    L8_2 = L8_2.check_is_path_data_available
    L9_2 = L7_2.PathData
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = {}
      L9_2 = L7_2.PathData
      if L9_2 ~= nil then
        L9_2 = L7_2.PathData
        L9_2 = L9_2.PosX
        L8_2.x = L9_2
        L9_2 = L7_2.PathData
        L9_2 = L9_2.PosY
        L8_2.y = L9_2
      end
      L9_2 = nil
      L10_2 = L7_2.LineType
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.ChronicleLineType
      L11_2 = L11_2.Normal
      if L10_2 == L11_2 then
        L11_2 = A0_2
        L10_2 = A0_2._generate_single_line_table
        L12_2 = L2_2
        L13_2 = L8_2
        L14_2 = L7_2.FromPoint
        L15_2 = L7_2.ToPoint
        L16_2 = A0_2._mission_path_info
        L17_2 = L7_2.PathData
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        L9_2 = L10_2
      else
        L10_2 = L7_2.LineType
        L11_2 = CS
        L11_2 = L11_2.RPG
        L11_2 = L11_2.GameCore
        L11_2 = L11_2.ChronicleLineType
        L11_2 = L11_2.Extend
        if L10_2 == L11_2 then
          L11_2 = A0_2
          L10_2 = A0_2._generate_extend_line
          L12_2 = L7_2.FromPoint
          L10_2 = L10_2(L11_2, L12_2)
          L9_2 = L10_2
        else
          L10_2 = L7_2.LineType
          L11_2 = CS
          L11_2 = L11_2.RPG
          L11_2 = L11_2.GameCore
          L11_2 = L11_2.ChronicleLineType
          L11_2 = L11_2.Hide
          if L10_2 == L11_2 then
            L10_2 = {}
            L9_2 = L10_2
          end
        end
      end
      L10_2 = #L9_2
      if L10_2 ~= 0 then
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L1_2
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_prefab_load_line
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._mission_path_info
  L5_2 = L5_2.ConnectionList
  L5_2 = L5_2.Count
  L5_2 = 0 < L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._line_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_line = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.get_pt_pos
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChronicleConnectionPointType
  L4_2 = L4_2.Top
  if A1_2 == L4_2 then
    L4_2 = L2_2.x
    L3_2.x = L4_2
    L4_2 = L2_2.y
    L5_2 = L7_1
    L4_2 = L4_2 + L5_2
    L3_2.y = L4_2
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ChronicleConnectionPointType
    L4_2 = L4_2.Down
    if A1_2 == L4_2 then
      L4_2 = L2_2.x
      L3_2.x = L4_2
      L4_2 = L2_2.y
      L5_2 = L7_1
      L4_2 = L4_2 - L5_2
      L3_2.y = L4_2
    else
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.ChronicleConnectionPointType
      L4_2 = L4_2.Left
      if A1_2 == L4_2 then
        L4_2 = L2_2.x
        L5_2 = L7_1
        L4_2 = L4_2 - L5_2
        L3_2.x = L4_2
        L4_2 = L2_2.y
        L3_2.y = L4_2
      else
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.ChronicleConnectionPointType
        L4_2 = L4_2.Right
        if A1_2 == L4_2 then
          L4_2 = L2_2.x
          L5_2 = L7_1
          L4_2 = L4_2 + L5_2
          L3_2.x = L4_2
          L4_2 = L2_2.y
          L3_2.y = L4_2
        end
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_extend_line
  L6_2 = L2_2
  L7_2 = L3_2
  return L4_2(L5_2, L6_2, L7_2)
end
L0_1._generate_extend_line = L11_1
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = {}
  L3_2.p1 = A1_2
  L3_2.p2 = A2_2
  L3_2.IsBezier = false
  L4_2 = {}
  L5_2 = L3_2
  L4_2[1] = L5_2
  return L4_2
end
L0_1._setup_extend_line = L11_1
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L7_2 = A1_2.x
  L8_2 = A2_2.x
  if L7_2 ~= L8_2 then
    L7_2 = A1_2.y
    L8_2 = A2_2.y
    if L7_2 ~= L8_2 then
      goto lbl_19
    end
  end
  L8_2 = A0_2
  L7_2 = A0_2._setup_by_0_curve
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = A5_2
  L14_2 = A6_2
  do return L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2) end
  goto lbl_66
  ::lbl_19::
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.ChronicleConnectionPointType
  L7_2 = L7_2.Down
  if A3_2 ~= L7_2 then
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ChronicleConnectionPointType
    L7_2 = L7_2.Up
    if A3_2 ~= L7_2 then
      goto lbl_57
    end
  end
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.ChronicleConnectionPointType
  L7_2 = L7_2.Left
  if A4_2 ~= L7_2 then
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.ChronicleConnectionPointType
    L7_2 = L7_2.Right
    if A4_2 ~= L7_2 then
      goto lbl_57
    end
  end
  L8_2 = A0_2
  L7_2 = A0_2._setup_by_1_curve
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = A5_2
  L14_2 = A6_2
  do return L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2) end
  goto lbl_66
  ::lbl_57::
  L8_2 = A0_2
  L7_2 = A0_2._setup_by_2_curves
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L13_2 = A5_2
  L14_2 = A6_2
  do return L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2) end
  ::lbl_66::
end
L0_1._generate_single_line_table = L11_1
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L7_2 = {}
  L9_2 = A0_2
  L8_2 = A0_2._get_begin_end_pt
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L13_2 = A4_2
  L14_2 = A5_2
  L15_2 = A6_2
  L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  if L8_2 == nil or L9_2 == nil then
    L10_2 = {}
    return L10_2
  end
  L7_2.p1 = L8_2
  L7_2.p2 = L9_2
  L7_2.IsBezier = false
  L10_2 = {}
  L11_2 = L7_2
  L10_2[1] = L11_2
  return L10_2
end
L0_1._setup_by_0_curve = L11_1
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L7_2 = {}
  L8_2 = {}
  L9_2 = {}
  L11_2 = A0_2
  L10_2 = A0_2._get_begin_end_pt
  L12_2 = A1_2
  L13_2 = A2_2
  L14_2 = A3_2
  L15_2 = A4_2
  L16_2 = A5_2
  L17_2 = A6_2
  L10_2, L11_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  if L10_2 == nil or L11_2 == nil then
    L12_2 = {}
    return L12_2
  end
  L12_2 = {}
  L13_2 = L10_2.x
  L12_2.x = L13_2
  L13_2 = L1_1
  L14_2 = math
  L14_2 = L14_2.abs
  L15_2 = A2_2.y
  L16_2 = A1_2.y
  L15_2 = L15_2 - L16_2
  L14_2 = L14_2(L15_2)
  L15_2 = L1_1
  if L14_2 < L15_2 then
    L14_2 = math
    L14_2 = L14_2.abs
    L15_2 = A2_2.y
    L16_2 = A1_2.y
    L15_2 = L15_2 - L16_2
    L14_2 = L14_2(L15_2)
    L13_2 = L14_2
  end
  L14_2 = A2_2.y
  L15_2 = A1_2.y
  if L14_2 > L15_2 then
    L14_2 = L11_2.y
    L14_2 = L14_2 - L13_2
    L12_2.y = L14_2
  else
    L14_2 = L11_2.y
    L14_2 = L14_2 + L13_2
    L12_2.y = L14_2
  end
  L14_2 = {}
  L15_2 = A2_2.x
  L16_2 = A1_2.x
  if L15_2 > L16_2 then
    L15_2 = L12_2.x
    L16_2 = L1_1
    L15_2 = L15_2 + L16_2
    L14_2.x = L15_2
  else
    L15_2 = L12_2.x
    L16_2 = L1_1
    L15_2 = L15_2 - L16_2
    L14_2.x = L15_2
  end
  L15_2 = L11_2.y
  L14_2.y = L15_2
  L7_2.p1 = L10_2
  L7_2.p2 = L12_2
  L7_2.IsBezier = false
  L8_2.p1 = L12_2
  L8_2.p2 = L14_2
  L8_2.IsBezier = true
  L15_2 = L1_1
  L8_2.CurveLength = L15_2
  L9_2.p1 = L14_2
  L9_2.p2 = L11_2
  L9_2.IsBezier = false
  L15_2 = {}
  L16_2 = L7_2
  L17_2 = L8_2
  L18_2 = L9_2
  L15_2[1] = L16_2
  L15_2[2] = L17_2
  L15_2[3] = L18_2
  return L15_2
end
L0_1._setup_by_1_curve = L11_1
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L7_2 = {}
  L8_2 = {}
  L9_2 = {}
  L10_2 = {}
  L12_2 = A0_2
  L11_2 = A0_2._get_begin_end_pt
  L13_2 = A1_2
  L14_2 = A2_2
  L15_2 = A3_2
  L16_2 = A4_2
  L17_2 = A5_2
  L18_2 = A6_2
  L11_2, L12_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  if L11_2 == nil or L12_2 == nil then
    L13_2 = {}
    return L13_2
  end
  L13_2 = {}
  L14_2 = A5_2.BelongLine
  if L14_2 == 0 then
    L14_2 = A6_2.BelongLine
    if L14_2 ~= 0 then
      L14_2 = L11_2.x
      L15_2 = L4_1
      L14_2 = L14_2 + L15_2
      L13_2.x = L14_2
  end
  else
    L14_2 = A5_2.BelongLine
    if L14_2 ~= 0 then
      L14_2 = A6_2.BelongLine
      if L14_2 == 0 then
        L14_2 = L12_2.x
        L15_2 = L5_1
        L14_2 = L14_2 - L15_2
        L15_2 = L1_1
        L14_2 = L14_2 - L15_2
        L13_2.x = L14_2
    end
    else
      L14_2 = L12_2.x
      L15_2 = L11_2.x
      L14_2 = L14_2 - L15_2
      L15_2 = L2_1
      L14_2 = L14_2 * L15_2
      L15_2 = L2_1
      L16_2 = L3_1
      L15_2 = L15_2 + L16_2
      L14_2 = L14_2 / L15_2
      L15_2 = L11_2.x
      L14_2 = L14_2 + L15_2
      L13_2.x = L14_2
    end
  end
  L14_2 = L11_2.y
  L13_2.y = L14_2
  L14_2 = {}
  L15_2 = L13_2.x
  L14_2.x = L15_2
  L15_2 = L1_1
  L16_2 = math
  L16_2 = L16_2.abs
  L17_2 = A2_2.y
  L18_2 = A1_2.y
  L17_2 = L17_2 - L18_2
  L16_2 = L16_2(L17_2)
  L17_2 = L1_1
  if L16_2 < L17_2 then
    L16_2 = math
    L16_2 = L16_2.abs
    L17_2 = A2_2.y
    L18_2 = A1_2.y
    L17_2 = L17_2 - L18_2
    L16_2 = L16_2(L17_2)
    L15_2 = L16_2
  end
  L16_2 = A2_2.y
  L17_2 = A1_2.y
  if L16_2 > L17_2 then
    L16_2 = L12_2.y
    L16_2 = L16_2 - L15_2
    L14_2.y = L16_2
  else
    L16_2 = L12_2.y
    L16_2 = L16_2 + L15_2
    L14_2.y = L16_2
  end
  L16_2 = {}
  L17_2 = A2_2.x
  L18_2 = A1_2.x
  if L17_2 > L18_2 then
    L17_2 = L14_2.x
    L18_2 = L1_1
    L17_2 = L17_2 + L18_2
    L16_2.x = L17_2
  else
    L17_2 = L14_2.x
    L18_2 = L1_1
    L17_2 = L17_2 - L18_2
    L16_2.x = L17_2
  end
  L17_2 = L12_2.y
  L16_2.y = L17_2
  L7_2.p1 = L11_2
  L7_2.p2 = L13_2
  L7_2.IsBezier = false
  L8_2.p1 = L13_2
  L8_2.p2 = L14_2
  L8_2.IsBezier = false
  L9_2.p1 = L14_2
  L9_2.p2 = L16_2
  L9_2.IsBezier = true
  L17_2 = L1_1
  L9_2.CurveLength = L17_2
  L10_2.p1 = L16_2
  L10_2.p2 = L12_2
  L10_2.IsBezier = false
  L17_2 = {}
  L18_2 = L7_2
  L19_2 = L8_2
  L20_2 = L9_2
  L21_2 = L10_2
  L17_2[1] = L18_2
  L17_2[2] = L19_2
  L17_2[3] = L20_2
  L17_2[4] = L21_2
  return L17_2
end
L0_1._setup_by_2_curves = L11_1
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L8_2 = A0_2
  L7_2 = A0_2.get_pt_pos
  L9_2 = A3_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = A0_2._find_graph_panel_callback
  L9_2 = A0_2._find_graph_panel_callback_self
  L10_2 = A5_2.ID
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 == nil then
    L9_2 = nil
    L10_2 = nil
    return L9_2, L10_2
  end
  L9_2 = A0_2._find_graph_panel_callback
  L10_2 = A0_2._find_graph_panel_callback_self
  L11_2 = A6_2.ID
  L9_2 = L9_2(L10_2, L11_2)
  if L9_2 == nil then
    L10_2 = L7_2
    L11_2 = nil
    return L10_2, L11_2
  end
  L10_2 = {}
  L12_2 = L9_2
  L11_2 = L9_2.get_pt_pos
  L13_2 = A4_2
  L11_2 = L11_2(L12_2, L13_2)
  L12_2 = A2_2.x
  L13_2 = A1_2.x
  L12_2 = L12_2 - L13_2
  L13_2 = L11_2.x
  L12_2 = L12_2 + L13_2
  L10_2.x = L12_2
  L12_2 = A2_2.y
  L13_2 = A1_2.y
  L12_2 = L12_2 - L13_2
  L13_2 = L11_2.y
  L12_2 = L12_2 + L13_2
  L10_2.y = L12_2
  L13_2 = A0_2
  L12_2 = A0_2.check_is_small_size
  L12_2 = L12_2(L13_2)
  if not L12_2 then
    L13_2 = L9_2
    L12_2 = L9_2.check_is_small_size
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L12_2 = L10_2.x
      L13_2 = L6_1
      L12_2 = L12_2 - L13_2
      L10_2.x = L12_2
    end
  end
  L12_2 = L7_2
  L13_2 = L10_2
  return L12_2, L13_2
end
L0_1._get_begin_end_pt = L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ChronicleConnectionPointType
  L3_2 = L3_2.Top
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_title
    L3_2 = L3_2.transform
    L3_2 = L3_2.anchoredPosition
    L3_2 = L3_2.x
    L2_2.x = L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_title
    L3_2 = L3_2.transform
    L3_2 = L3_2.anchoredPosition
    L3_2 = L3_2.y
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_title
    L4_2 = L4_2.transform
    L4_2 = L4_2.rect
    L4_2 = L4_2.height
    L4_2 = L4_2 / 2
    L3_2 = L3_2 + L4_2
    L2_2.y = L3_2
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ChronicleConnectionPointType
    L3_2 = L3_2.Down
    if A1_2 == L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_title
      L3_2 = L3_2.transform
      L3_2 = L3_2.anchoredPosition
      L3_2 = L3_2.x
      L2_2.x = L3_2
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_title
      L3_2 = L3_2.transform
      L3_2 = L3_2.anchoredPosition
      L3_2 = L3_2.y
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_title
      L4_2 = L4_2.transform
      L4_2 = L4_2.rect
      L4_2 = L4_2.height
      L4_2 = L4_2 / 2
      L3_2 = L3_2 - L4_2
      L2_2.y = L3_2
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.ChronicleConnectionPointType
      L3_2 = L3_2.Left
      if A1_2 == L3_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_title
        L3_2 = L3_2.transform
        L3_2 = L3_2.anchoredPosition
        L3_2 = L3_2.x
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_left_dot
        L4_2 = L4_2.transform
        L4_2 = L4_2.anchoredPosition
        L4_2 = L4_2.x
        L5_2 = A0_2._binder
        L5_2 = L5_2.node_title
        L5_2 = L5_2.transform
        L5_2 = L5_2.rect
        L5_2 = L5_2.width
        L5_2 = L5_2 / 2
        L4_2 = L4_2 - L5_2
        L3_2 = L3_2 + L4_2
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_left_dot
        L4_2 = L4_2.transform
        L4_2 = L4_2.rect
        L4_2 = L4_2.width
        L4_2 = L4_2 / 2
        L3_2 = L3_2 - L4_2
        L2_2.x = L3_2
        L3_2 = A0_2._binder
        L3_2 = L3_2.node_title
        L3_2 = L3_2.transform
        L3_2 = L3_2.anchoredPosition
        L3_2 = L3_2.y
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_right_dot
        L4_2 = L4_2.transform
        L4_2 = L4_2.anchoredPosition
        L4_2 = L4_2.y
        L5_2 = A0_2._binder
        L5_2 = L5_2.node_title
        L5_2 = L5_2.transform
        L5_2 = L5_2.rect
        L5_2 = L5_2.height
        L5_2 = L5_2 / 2
        L4_2 = L4_2 - L5_2
        L3_2 = L3_2 + L4_2
        L2_2.y = L3_2
        L3_2 = A0_2._binder
        L3_2 = L3_2.canvas_group_left_dot
        L3_2.alpha = 1
      else
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.ChronicleConnectionPointType
        L3_2 = L3_2.Right
        if A1_2 == L3_2 then
          L3_2 = A0_2._binder
          L3_2 = L3_2.node_title
          L3_2 = L3_2.transform
          L3_2 = L3_2.anchoredPosition
          L3_2 = L3_2.x
          L4_2 = A0_2._binder
          L4_2 = L4_2.node_right_dot
          L4_2 = L4_2.transform
          L4_2 = L4_2.anchoredPosition
          L4_2 = L4_2.x
          L5_2 = A0_2._binder
          L5_2 = L5_2.node_title
          L5_2 = L5_2.transform
          L5_2 = L5_2.rect
          L5_2 = L5_2.width
          L5_2 = L5_2 / 2
          L4_2 = L4_2 - L5_2
          L3_2 = L3_2 + L4_2
          L4_2 = A0_2._binder
          L4_2 = L4_2.node_right_dot
          L4_2 = L4_2.transform
          L4_2 = L4_2.rect
          L4_2 = L4_2.width
          L4_2 = L4_2 / 2
          L3_2 = L3_2 + L4_2
          L2_2.x = L3_2
          L3_2 = A0_2._binder
          L3_2 = L3_2.node_title
          L3_2 = L3_2.transform
          L3_2 = L3_2.anchoredPosition
          L3_2 = L3_2.y
          L4_2 = A0_2._binder
          L4_2 = L4_2.node_right_dot
          L4_2 = L4_2.transform
          L4_2 = L4_2.anchoredPosition
          L4_2 = L4_2.y
          L5_2 = A0_2._binder
          L5_2 = L5_2.node_title
          L5_2 = L5_2.transform
          L5_2 = L5_2.rect
          L5_2 = L5_2.height
          L5_2 = L5_2 / 2
          L4_2 = L4_2 - L5_2
          L3_2 = L3_2 + L4_2
          L2_2.y = L3_2
          L3_2 = A0_2._binder
          L3_2 = L3_2.canvas_group_right_dot
          L3_2.alpha = 1
        end
      end
    end
  end
  return L2_2
end
L0_1.get_pt_pos = L11_1
function L11_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_path
  L1_2 = L1_2 == nil
  return L1_2
end
L0_1.check_is_small_size = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._mission_path_info
  L1_2 = L1_2.NodeType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ChronicleNodeType
  L2_2 = L2_2.ChapterToBeContinue
  if L1_2 == L2_2 then
    return
  end
  L1_2 = A0_2._mission_path_info
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ChronicleStatus
  L2_2 = L2_2.Prediction
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._mission_path_info
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ChronicleStatus
    L2_2 = L2_2.Finished
    if L1_2 ~= L2_2 then
      goto lbl_30
    end
  end
  do return end
  ::lbl_30::
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "MissionChronicleIsNew"
  L4_2 = A0_2._mission_path_info
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._mission_path_info
  L1_2 = L1_2.Status
  A0_2._last_status = L1_2
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._callback_self
    if L1_2 then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_click_btn = L11_1
return L0_1
