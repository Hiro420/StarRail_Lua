local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Reward.FantasticStoryParagraphRewardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryParagraphRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
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
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.trigger_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_btn_root_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2.paragraph_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_text
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "FantasticStoryParagraphReward"
  L5_2 = A0_2.paragraph_data
  L5_2 = L5_2.ParagraphID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.red_dot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.paragraph_data
  L3_2 = L3_2.IsUnlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.paragraph_data
  L3_2 = L3_2.IsQuestAllClose
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.paragraph_data
  L3_2 = L3_2.IsUnlock
  if L3_2 then
    L3_2 = A0_2.paragraph_data
    L3_2 = L3_2.IsQuestAllClose
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.paragraph_data
  L1_2 = L1_2.IsUnlock
  if L1_2 then
    L1_2 = A0_2.paragraph_data
    L1_2 = L1_2.IsQuestAllClose
    if not L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_ModuleManager
      L1_2 = L1_2.QuestModule
      L2_2 = L1_2
      L1_2 = L1_2.TryGetQuestData
      L3_2 = A0_2.paragraph_data
      L3_2 = L3_2.FinishQuestID
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_cur_num
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetText
      L4_2 = L1_2.Progress
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_total_num
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetText
      L4_2 = L1_2.TotalProgress
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.refresh_state = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_navigation_btn_gameobject = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_paragraph_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.paragraph_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L0_1._setup_text = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_root
  L1_2(L2_2)
end
L0_1.trigger_click = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.FantasticStoryNewUnlockParagraphReward
  L3_2 = L2_2
  L2_2 = L2_2.Contains
  L4_2 = A0_2.paragraph_data
  L4_2 = L4_2.ParagraphID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = L1_2.FantasticStoryNewUnlockParagraphReward
    L3_2 = L2_2
    L2_2 = L2_2.Remove
    L4_2 = A0_2.paragraph_data
    L4_2 = L4_2.ParagraphID
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.Prefs
    L2_2 = L2_2.ForceSave
    L2_2()
  end
  L2_2 = A0_2._callback
  if L2_2 then
    L2_2 = A0_2._callback
    L3_2 = A0_2._callback_self
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_root = L1_1
return L0_1
