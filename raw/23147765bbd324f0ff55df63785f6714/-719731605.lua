local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityTelevisionQuestLevelPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = "UIText_BoxingClub_Activity_Record"
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._callback_listener = nil
  A0_2._callback_event = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = A0_2.data
  L3_2 = L3_2.QuestList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2.data
    L6_2 = L6_2.QuestList
    L6_2 = L6_2[L5_2]
    L7_2 = L1_1
    L8_2 = L7_2
    L7_2 = L7_2.TryGetQuestData
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.Status
    L9_2 = CS
    L9_2 = L9_2.LEOGBBOPKKO
    L9_2 = L9_2.JKFPIINHGPD
    if L8_2 ~= L9_2 then
      L8_2 = L7_2.Status
      L9_2 = CS
      L9_2 = L9_2.LEOGBBOPKKO
      L9_2 = L9_2.CMOFEAFMGAK
      if L8_2 ~= L9_2 then
        goto lbl_29
      end
    end
    L1_2 = L1_2 + 1
    ::lbl_29::
  end
  L2_2 = A0_2.data
  L2_2 = L2_2.QuestList
  L2_2 = L2_2.Length
  L3_2 = L1_2 >= L2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_finish
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_current
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_total
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_count = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._callback_event = A1_2
  A0_2._callback_listener = A2_2
  A0_2._callback_param = A3_2
end
L0_1.register_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.data = A1_2
  L2_2 = A0_2.data
  L3_2 = L2_2
  L2_2 = L2_2.IsRevealed
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.QuestRow
    L4_2 = L4_2.TabName
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A1_2.QuestRow
    L4_2 = L4_2.OriginalTabName
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_count
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "ActivityTelevisionQuestRewardTab"
  L5_2 = A1_2.ID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_red_dot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._callback_listener
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_event
    L2_2 = A0_2._callback_listener
    L3_2 = A0_2._callback_param
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_click = L3_1
return L0_1
