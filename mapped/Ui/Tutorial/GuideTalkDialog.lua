local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Tutorial.GuideTalkDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GuideTalkDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.5
L2_1 = 0.5
L3_1 = {}
L3_1.None = 0
L3_1.WaitingTextMotion = 1
L3_1.WaitingNextPage = 2
L3_1.Finish = 3
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.ImportCsToLua
  L2_2 = L2_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L2_2
  A0_2.guide_res_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._create_binder
  L4_2 = G
  L4_2 = L4_2.GuideTalkDialogBinder
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._binder = L2_2
  A0_2._pause_game = false
  A0_2._is_resp_esc = false
  A0_2._is_special_above_dialog = true
  A0_2._is_follow = false
  L2_2 = L3_1.None
  A0_2._step = L2_2
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L0_1.init = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.TutorialModule
  L3_2 = L2_2
  L2_2 = L2_2.try_get_tutorial_node
  L4_2 = A1_2.NodeID
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._content_root = L2_2
  L2_2 = A0_2._content_root
  if L2_2 == nil then
    L2_2 = CS
    L2_2 = L2_2.System
    L2_2 = L2_2.String
    L2_2 = L2_2.IsNullOrEmpty
    L3_2 = A1_2.NodeID
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_ModuleManager
      L2_2 = L2_2.TutorialSupportModule
      L3_2 = L2_2
      L2_2 = L2_2.ForceFinishCurrentTutorial
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = "find node %s fail"
      L6_2 = A1_2.NodeID
      L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  end
  L2_2 = A1_2.OffsetX
  A0_2._offset_x = L2_2
  L2_2 = A1_2.OffsetY
  A0_2._offset_y = L2_2
  L2_2 = A1_2.Follow
  A0_2._is_follow = L2_2
  L2_2 = A1_2.Is3DObject
  A0_2._is_3d_node = L2_2
end
L0_1.set_content_root = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg
  L4_2 = A0_2._on_btn_bg
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.add_tick
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._accumulate_time
  L2_2 = L2_2 + A1_2
  A0_2._accumulate_time = L2_2
  L2_2 = A0_2._step
  L3_2 = L3_1.WaitingTextMotion
  if L2_2 == L3_2 then
    L2_2 = A0_2._accumulate_time
    L3_2 = L1_1
    if L2_2 >= L3_2 then
      A0_2._allow_immediate_finish = true
  end
  else
    L2_2 = A0_2._step
    L3_2 = L3_1.WaitingNextPage
    if L2_2 ~= L3_2 then
      L2_2 = A0_2._step
      L3_2 = L3_1.Finish
      if L2_2 ~= L3_2 then
        goto lbl_27
      end
      L2_2 = A0_2._accumulate_time
      L3_2 = L2_1
      if not (L2_2 >= L3_2) then
        goto lbl_27
      end
    end
    A0_2._allow_next_page = true
  end
  ::lbl_27::
  L2_2 = A0_2._is_follow
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_content_pos
    L2_2(L3_2)
  end
end
L0_1._on_tick = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._cur_index = 0
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.TutorialGuideTalkDataExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L3_2 = A0_2._cur_index
  L2_2 = L2_2[L3_2]
  L1_2 = L1_2(L2_2)
  A0_2._cur_content = L1_2
  A0_2._allow_immediate_finish = false
  A0_2._allow_next_page = false
  A0_2._accumulate_time = 0
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_guide_talk
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_content
  L4_2 = nil
  L5_2 = A0_2._try_end_protection
  L6_2 = A0_2
  L8_2 = A0_2
  L7_2 = A0_2._is_last_content
  L7_2 = L7_2(L8_2)
  L7_2 = not L7_2
  L8_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2 = L3_1.WaitingTextMotion
  A0_2._step = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_content_pos
  L1_2(L2_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._content_root
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._is_3d_node
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.GuideUtils
    L1_2 = L1_2.copy_3d_node_position
    L2_2 = A0_2._content_root
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_content
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._copy_node_position
    L3_2 = A0_2._content_root
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_content
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._adjust_position
  L1_2(L2_2)
end
L0_1._setup_content_pos = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = G
  L3_2 = L3_2.UtilEngineWrap
  L3_2 = L3_2.IsCsObjectNull
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = A1_2.position
  A2_2.position = L3_2
  L4_2 = A2_2.localPosition
  L5_2 = L4_2.x
  L6_2 = A0_2._offset_x
  L5_2 = L5_2 + L6_2
  L4_2.x = L5_2
  L5_2 = L4_2.y
  L6_2 = A0_2._offset_y
  L5_2 = L5_2 + L6_2
  L4_2.y = L5_2
  A2_2.localPosition = L4_2
end
L0_1._copy_node_position = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_content
  L2_2 = L1_2
  L1_2 = L1_2.LuaGetWorldCorners
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L3_2 = L2_2
  L2_2 = L2_2.LuaGetLocalCorners
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L4_2 = L3_2
  L3_2 = L3_2.InverseTransformPoint
  L5_2 = L1_2[0]
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L5_2 = L4_2
  L4_2 = L4_2.InverseTransformPoint
  L6_2 = L1_2[2]
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L2_2[0]
  L6_2 = L2_2[2]
  L7_2 = 0
  L8_2 = 0
  L9_2 = 10
  L10_2 = L3_2.x
  L11_2 = L5_2.x
  L11_2 = L11_2 + L9_2
  if L10_2 < L11_2 then
    L10_2 = L5_2.x
    L10_2 = L7_2 + L10_2
    L10_2 = L10_2 + L9_2
    L11_2 = L3_2.x
    L7_2 = L10_2 - L11_2
  end
  L10_2 = L4_2.x
  L11_2 = L6_2.x
  L11_2 = L11_2 - L9_2
  if L10_2 > L11_2 then
    L10_2 = L4_2.x
    L11_2 = L6_2.x
    L10_2 = L10_2 - L11_2
    L10_2 = L10_2 + L9_2
    L7_2 = L7_2 - L10_2
  end
  L10_2 = L3_2.y
  L11_2 = L5_2.y
  L11_2 = L11_2 + L9_2
  if L10_2 < L11_2 then
    L10_2 = L5_2.y
    L10_2 = L10_2 + L9_2
    L11_2 = L3_2.y
    L10_2 = L10_2 - L11_2
    L8_2 = L8_2 + L10_2
  end
  L10_2 = L4_2.y
  L11_2 = L6_2.y
  L11_2 = L11_2 - L9_2
  if L10_2 > L11_2 then
    L10_2 = L4_2.y
    L11_2 = L6_2.y
    L10_2 = L10_2 - L11_2
    L10_2 = L10_2 + L9_2
    L8_2 = L8_2 - L10_2
  end
  L10_2 = A0_2._binder
  L10_2 = L10_2.node_content
  L10_2 = L10_2.localPosition
  L11_2 = L10_2.x
  L11_2 = L11_2 + L7_2
  L10_2.x = L11_2
  L11_2 = L10_2.y
  L11_2 = L11_2 + L8_2
  L10_2.y = L11_2
  L11_2 = A0_2._binder
  L11_2 = L11_2.node_content
  L11_2.localPosition = L10_2
end
L0_1._adjust_position = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  A0_2._accumulate_time = 0
  L2_2 = A0_2
  L1_2 = A0_2._is_last_content
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L3_1.Finish
    A0_2._step = L1_2
  else
    L1_2 = L3_1.WaitingNextPage
    A0_2._step = L1_2
  end
end
L0_1._try_end_protection = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._cur_index
  L2_2 = A0_2._data
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1._is_last_content = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._step
  L2_2 = L3_1.WaitingTextMotion
  if L1_2 == L2_2 then
    L1_2 = A0_2._allow_immediate_finish
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_guide_talk
      L2_2 = L1_2
      L1_2 = L1_2.finish_all_motions
      L1_2(L2_2)
  end
  else
    L1_2 = A0_2._step
    L2_2 = L3_1.WaitingNextPage
    if L1_2 == L2_2 then
      L1_2 = A0_2._allow_next_page
      if L1_2 then
        L1_2 = A0_2._cur_index
        L1_2 = L1_2 + 1
        A0_2._cur_index = L1_2
        L2_2 = A0_2
        L1_2 = A0_2._refresh
        L1_2(L2_2)
    end
    else
      L1_2 = A0_2._step
      L2_2 = L3_1.Finish
      if L1_2 == L2_2 then
        L1_2 = A0_2._allow_next_page
        if L1_2 then
          L1_2 = G
          L1_2 = L1_2.NotifyManager
          L1_2 = L1_2.notify
          L2_2 = G
          L2_2 = L2_2.CS
          L2_2 = L2_2.NotifyType
          L2_2 = L2_2.TutorialGuideTalkFinish
          L1_2(L2_2)
          L2_2 = A0_2
          L1_2 = A0_2.exit
          L1_2(L2_2)
        end
      end
    end
  end
end
L0_1._on_btn_bg = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._in_control_exit_click = L4_1
return L0_1
