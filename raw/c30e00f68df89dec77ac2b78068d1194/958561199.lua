local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Buff.BuffIconNode"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Buff.BuffIconNodeBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "CommonBuffRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2.buff_data = A1_2
  L3_2 = G
  L3_2 = L3_2.BuffUtils
  L3_2 = L3_2.GetMazeBuffData
  L4_2 = A1_2.BuffID
  L5_2 = A1_2.Level
  L3_2 = L3_2(L4_2, L5_2)
  A0_2.maze_buff_row = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_buff_name
  if L3_2 ~= nil then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_buff_name
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A0_2.maze_buff_row
    L5_2 = L5_2.BuffName
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_buff_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2.maze_buff_row
  L5_2 = L5_2.BuffDesc
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetSkillParams
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.AdventureStatic
  L7_2 = L7_2.EvaluateMazeBuffDescParam
  L8_2 = A1_2
  L7_2, L8_2 = L7_2(L8_2)
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = A0_2._buff_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L6_2 = nil
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_buff_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.buff_data
  L1_2 = L1_2.Count
  A0_2.left_num = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemUseBuffDataExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2.buff_data
  L2_2 = L2_2.BuffID
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.ActivityCount
  A0_2.total_num = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_left_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2.left_num
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_total_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2.total_num
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_left_num_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.total_num
  L4_2 = 1 < L4_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_left_count = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BuffIconNode
  L4_2 = G
  L4_2 = L4_2.BuffIconNodeBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._buff_icon_panel = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buff_icon
  if L1_2 ~= nil then
    L1_2 = A0_2._buff_icon_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_buff_icon
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._buff_icon_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_env_buff_icon
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_timer
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_unload = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
