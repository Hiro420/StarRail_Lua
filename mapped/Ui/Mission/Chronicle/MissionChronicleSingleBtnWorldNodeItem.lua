local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Mission.Chronicle.MissionChronicleSingleBtnItem"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MissionChronicleSingleBtnWorldNodeItem"
L2_1 = G
L2_1 = L2_1.MissionChronicleSingleBtnItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 6
function L2_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._mission_path_info = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_pos
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_btn_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._mission_path_info
  L3_2 = L3_2.Title
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
    L3_2 = "MissionChronicleSingleBtnWorldNodeItem: \230\156\170\230\137\190\229\136\176WorldID\228\184\186"
    L4_2 = A0_2._mission_path_info
    L4_2 = L4_2.WorldID
    L5_2 = "\233\133\141\231\189\174\239\188\140\232\138\130\231\130\185ID\228\184\186"
    L6_2 = A0_2._mission_path_info
    L6_2 = L6_2.ID
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_world_icon
  L5_2 = L1_2.SmallWorldIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_world_language_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.WorldLanguageName
  L2_2(L3_2, L4_2)
end
L0_1._setup_info = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_world_icon
  L3_2 = L3_2.transform
  L3_2 = L3_2.rect
  L3_2 = L3_2.width
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_txt_panel
  L4_2 = L4_2.rect
  L4_2 = L4_2.width
  L3_2 = L3_2 + L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.horizontal_layout_group
  L4_2 = L4_2.spacing
  L3_2 = L3_2 + L4_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ChronicleConnectionPointType
  L4_2 = L4_2.Top
  if A1_2 == L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_title
    L4_2 = L4_2.transform
    L4_2 = L4_2.anchoredPosition
    L4_2 = L4_2.x
    L2_2.x = L4_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_title
    L4_2 = L4_2.transform
    L4_2 = L4_2.anchoredPosition
    L4_2 = L4_2.y
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_title
    L5_2 = L5_2.transform
    L5_2 = L5_2.rect
    L5_2 = L5_2.height
    L5_2 = L5_2 / 2
    L4_2 = L4_2 + L5_2
    L2_2.y = L4_2
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ChronicleConnectionPointType
    L4_2 = L4_2.Down
    if A1_2 == L4_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_title
      L4_2 = L4_2.transform
      L4_2 = L4_2.anchoredPosition
      L4_2 = L4_2.x
      L2_2.x = L4_2
      L4_2 = A0_2._binder
      L4_2 = L4_2.node_title
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
      L2_2.y = L4_2
    else
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.GameCore
      L4_2 = L4_2.ChronicleConnectionPointType
      L4_2 = L4_2.Left
      if A1_2 == L4_2 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_title
        L4_2 = L4_2.anchoredPosition
        L4_2 = L4_2.x
        L5_2 = L3_2 / 2
        L4_2 = L4_2 - L5_2
        L5_2 = A0_2._binder
        L5_2 = L5_2.node_left_dot
        L5_2 = L5_2.rect
        L5_2 = L5_2.width
        L4_2 = L4_2 - L5_2
        L5_2 = L1_1
        L4_2 = L4_2 - L5_2
        L2_2.x = L4_2
        L4_2 = A0_2._binder
        L4_2 = L4_2.node_title
        L4_2 = L4_2.transform
        L4_2 = L4_2.anchoredPosition
        L4_2 = L4_2.y
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
          L4_2 = L4_2.node_title
          L4_2 = L4_2.anchoredPosition
          L4_2 = L4_2.x
          L5_2 = L3_2 / 2
          L4_2 = L4_2 + L5_2
          L5_2 = A0_2._binder
          L5_2 = L5_2.node_right_dot
          L5_2 = L5_2.rect
          L5_2 = L5_2.width
          L4_2 = L4_2 + L5_2
          L5_2 = L1_1
          L4_2 = L4_2 + L5_2
          L2_2.x = L4_2
          L4_2 = A0_2._binder
          L4_2 = L4_2.node_title
          L4_2 = L4_2.transform
          L4_2 = L4_2.anchoredPosition
          L4_2 = L4_2.y
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
L0_1.get_pt_pos = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = false
  return L1_2
end
L0_1.check_is_small_size = L2_1
return L0_1
