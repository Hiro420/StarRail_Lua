local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.RecommendLineupBuffDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RecommendLineupBuffDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RecommendLineupBuffDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = G
  L5_2 = L5_2.BuffUtils
  L5_2 = L5_2.GetMazeBuffData
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._maze_buff_row = L5_2
  A0_2._attach_root = A3_2
  L5_2 = A4_2 or L5_2
  if not A4_2 then
    L5_2 = 0
  end
  A0_2._x_delta = L5_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_buff_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._maze_buff_row
  L3_2 = L3_2.BuffName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_buff_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._maze_buff_row
  L3_2 = L3_2.BuffDesc
  L4_2 = G
  L4_2 = L4_2.UITextUtils
  L4_2 = L4_2.GetSkillParams
  L5_2 = A0_2._maze_buff_row
  L5_2 = L5_2.ParamList
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._adjust_position
  L3_2 = A0_2._attach_root
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.IsCsObjectNull
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_content
    L3_2 = A1_2.position
    L2_2.position = L3_2
  end
  L2_2 = A1_2.pivot
  L3_2 = A1_2.rect
  L4_2 = L3_2.height
  L5_2 = L2_2.y
  L5_2 = 1 - L5_2
  L4_2 = L4_2 * L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_content
  L5_2 = L5_2.localPosition
  L6_2 = L5_2.y
  L6_2 = L6_2 + L4_2
  L5_2.y = L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_content
  L6_2.localPosition = L5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_content_root
  L6_2 = L6_2.localPosition
  L7_2 = L6_2.x
  L8_2 = A0_2._x_delta
  L7_2 = L7_2 + L8_2
  L6_2.x = L7_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_content_root
  L7_2.localPosition = L6_2
end
L0_1._adjust_position = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
return L0_1
