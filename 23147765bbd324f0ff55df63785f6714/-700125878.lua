local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Component.NodeListView"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.NodeListViewBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonsterResearchSubmitSelectQuestionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitSelectQuestionItem"
  L6_2 = "Ui.Activity.ActivityMonsterResearch.ActivityMonsterResearchSubmit.ActivityMonsterResearchSubmitSelectQuestionItemBinder"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._question_panel = L1_2
  L1_2 = A0_2._question_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_question_list
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_click_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2._question_table = L1_2
  A0_2._selected_question_id = 0
  A0_2._last_question_panel = nil
  L2_2 = A0_2
  L1_2 = A0_2._update_confirm_btn_state
  L1_2(L2_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_select_question_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._generate_question_table
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._question_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._question_table
  L5_2 = A0_2._on_click_question_callback
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._question_panel
  L3_2 = L2_2
  L2_2 = L2_2.update_navigation
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._question_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._last_question_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._last_question_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_selected
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_return_to_top = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  A0_2._question_table = L2_2
  L2_2 = 0
  L3_2 = A1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._question_table
    L8_2 = A1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
end
L0_1._generate_question_table = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._last_question_panel
  if L3_2 == A2_2 then
    return
  end
  A0_2._selected_question_id = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._update_confirm_btn_state
  L3_2(L4_2)
  L3_2 = A0_2._last_question_panel
  if L3_2 ~= nil then
    L3_2 = A0_2._last_question_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_selected
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L4_2 = A2_2
  L3_2 = A2_2.set_selected
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2._last_question_panel = A2_2
end
L0_1._on_click_question_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._selected_question_id
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
end
L0_1._update_confirm_btn_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowConfirmDialog
  function L2_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._confirm_use
      L1_3(L2_3)
    end
  end
  L1_2 = L1_2(L2_2)
  L2_2 = DialogBtnMode
  L2_2 = L2_2.eOkCancel
  L1_2.Mode = L2_2
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = "UIText_ActivityMonsterResearch_Tip_8"
  L2_2 = L2_2(L3_2)
  L4_2 = L1_2
  L3_2 = L1_2.GetComponentContent
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_click_confirm = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._selected_question_id
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._confirm_use = L1_1
return L0_1
