local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.ChronicleUtilities.MissionChronicleUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.StoryLine.StoryLineUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleSingleBtnItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChronicleSingleBtnLineNodeItem"
L2_1 = G
L2_1 = L2_1.MissionChronicleSingleBtnItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "Chronicle_StoryLine_DefaultLineIconPath"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.StringValue
L2_1 = 6
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  L1_2 = L1_2.canvas_group_left_dot
  L1_2.alpha = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_right_dot
  L1_2.alpha = 0
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._mission_path_info = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_pos
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.MissionChronicleUtils
  L1_2 = L1_2.check_is_line_node_unlock
  L2_2 = A0_2._mission_path_info
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.StoryLineUtils
    L2_2 = L2_2.get_story_line_ui_row
    L3_2 = A0_2._mission_path_info
    L3_2 = L3_2.NodeNameParam
    L2_2 = L2_2(L3_2)
    if L2_2 == nil then
      L3_2 = G
      L3_2 = L3_2.SuperDebug
      L3_2 = L3_2.LogErrorFormat
      L4_2 = "MissionChronicleSingleBtnLineNodeItem: \230\156\170\230\137\190\229\136\176ID\228\184\186"
      L5_2 = A0_2._mission_path_info
      L5_2 = L5_2.NodeNameParam
      L6_2 = "StoryLineUI\233\133\141\231\189\174\239\188\140\232\138\130\231\130\185ID\228\184\186"
      L7_2 = A0_2._mission_path_info
      L7_2 = L7_2.ID
      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
      L3_2(L4_2)
      return
    end
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_line_icon
    L6_2 = L2_2.ChronicleIconPath
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_btn_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2.Name
    L3_2(L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_btn_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "MessageContactsConfig_Name_102"
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_line_icon
    L5_2 = L1_1
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = A0_2._binder
  L3_2 = L3_2.vertical_layout_group
  L3_2 = L3_2.spacing
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChronicleConnectionPointType
  L4_2 = L4_2.Top
  if A1_2 == L4_2 then
    L2_2.x = 0
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_root
    L4_2 = L4_2.transform
    L4_2 = L4_2.rect
    L4_2 = L4_2.height
    L4_2 = L4_2 / 2
    L2_2.y = L4_2
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ChronicleConnectionPointType
    L4_2 = L4_2.Down
    if A1_2 == L4_2 then
      L2_2.x = 0
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_root
      L4_2 = L4_2.transform
      L4_2 = L4_2.rect
      L4_2 = L4_2.height
      L4_2 = -L4_2
      L4_2 = L4_2 / 2
      L2_2.y = L4_2
    else
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.ChronicleConnectionPointType
      L4_2 = L4_2.Left
      if A1_2 == L4_2 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_dot
        L4_2 = L4_2.anchoredPosition
        L4_2 = L4_2.x
        L5_2 = A0_2._binder
        L5_2 = L5_2.node_left_dot
        L5_2 = L5_2.anchoredPosition
        L5_2 = L5_2.x
        L4_2 = L4_2 + L5_2
        L5_2 = L2_1
        L4_2 = L4_2 - L5_2
        L2_2.x = L4_2
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_dot
        L4_2 = L4_2.anchoredPosition
        L4_2 = L4_2.y
        L5_2 = A0_2._binder
        L5_2 = L5_2.node_left_dot
        L5_2 = L5_2.anchoredPosition
        L5_2 = L5_2.y
        L4_2 = L4_2 + L5_2
        L2_2.y = L4_2
        L4_2 = A0_2._binder
        L4_2 = L4_2.canvas_group_left_dot
        L4_2.alpha = 1
      else
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.ChronicleConnectionPointType
        L4_2 = L4_2.Right
        if A1_2 == L4_2 then
          L4_2 = A0_2._binder
          L4_2 = L4_2.node_dot
          L4_2 = L4_2.anchoredPosition
          L4_2 = L4_2.x
          L5_2 = A0_2._binder
          L5_2 = L5_2.node_right_dot
          L5_2 = L5_2.anchoredPosition
          L5_2 = L5_2.x
          L4_2 = L4_2 + L5_2
          L5_2 = L2_1
          L4_2 = L4_2 + L5_2
          L2_2.x = L4_2
          L4_2 = A0_2._binder
          L4_2 = L4_2.node_dot
          L4_2 = L4_2.anchoredPosition
          L4_2 = L4_2.y
          L5_2 = A0_2._binder
          L5_2 = L5_2.node_right_dot
          L5_2 = L5_2.anchoredPosition
          L5_2 = L5_2.y
          L4_2 = L4_2 + L5_2
          L2_2.y = L4_2
          L4_2 = A0_2._binder
          L4_2 = L4_2.canvas_group_right_dot
          L4_2.alpha = 1
        end
      end
    end
  end
  return L2_2
end
L0_1.get_pt_pos = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1.check_is_small_size = L3_1
return L0_1
