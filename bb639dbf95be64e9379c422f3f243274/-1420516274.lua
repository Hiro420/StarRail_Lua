local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PhoneMessageGroupItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._contact_data = nil
  A0_2._group_data = nil
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageItemWritten
  L4_2 = A0_2._refresh_preview
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PhoneMessageWritingEnd
  L4_2 = A0_2._refresh_status
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_callback
    L2_3 = A0_2._select_handler
    L3_3 = A0_2._group_data
    L3_3 = L3_3.GroupID
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._group_data = A1_2
  A0_2._contact_data = A2_2
  A0_2._is_selected = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_view
  L4_2(L5_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._group_data
  L1_2 = L1_2.GroupID
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetGroupCurrentSection
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._section_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_preview
  L4_2 = A0_2._section_data
  L4_2 = L4_2.Preview
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "PhoneMessageGroup"
  L5_2 = A0_2._group_data
  L5_2 = L5_2.GroupID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reddot
  L7_2 = L7_2.transform
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._section_data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_preview
  L3_2 = L2_2
  L2_2 = L2_2.SetSingleLineEllipsis
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_preview
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._setup_preview = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MessageUtils
  L1_2 = L1_2.GetGroupState
  L2_2 = A0_2._group_data
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MessageStateType
  L2_2 = L2_2.WaitingReply
  L2_2 = L1_2 ~= L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_state
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reply
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.MessageStateIconExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_state
    L7_2 = L3_2.IconPath
    L4_2(L5_2, L6_2, L7_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_battle
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._group_data
  L5_2 = L5_2.ShowBattle
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_normal
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._group_data
  L5_2 = L5_2.ShowBattle
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = L3_2
  L3_2 = L3_2.SetChecked
  L5_2 = A0_2._is_selected
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.canvas_group_preview
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MessageStateType
  L4_2 = L4_2.Finished
  if L1_2 == L4_2 then
    L4_2 = A0_2._is_selected
    if not L4_2 then
      L4_2 = 0.6
      if L4_2 then
        goto lbl_75
      end
    end
  end
  L4_2 = 1
  ::lbl_75::
  L3_2.alpha = L4_2
end
L1_1._setup_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MessageGroupExcelTable
  L2_2 = L2_2.GetGroupBySection
  L3_2 = A1_2.SectionID
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._group_data
  L3_2 = L3_2.GroupID
  if L3_2 ~= L2_2 then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_preview
  L5_2 = A1_2.Preview
  L3_2(L4_2, L5_2)
end
L1_1._refresh_preview = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._group_data
  L2_2 = L2_2.GroupID
  if L2_2 ~= A1_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_status
  L2_2(L3_2)
end
L1_1._refresh_status = L2_1
function L2_1(A0_2, A1_2, A2_2)
end
L1_1.setup_order_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L1_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._select_callback = A1_2
  A0_2._select_handler = A2_2
end
L1_1.register_select_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_on_btn_click
    L0_3(L1_3)
  end
  L4_2 = 0.3
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._contact_data
  L5_2 = A0_2._group_data
  L5_2 = L5_2.GroupID
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._do_on_btn_click = L2_1
return L1_1
