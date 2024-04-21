local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityMonsterResearchEnterItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityMonsterResearchModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
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
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._research_data = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._bind_reddot
  L3_2(L4_2)
  L3_2 = "0"
  L4_2 = A2_2
  L3_2 = L3_2 .. L4_2
  A0_2._index = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_index
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._index
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_index_small
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._index
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_selected
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_research_info
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_research_info
  L1_2(L2_2)
end
L0_1._on_return_to_top = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_nodes
  L1_2(L2_2)
  L1_2 = A0_2._research_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ActivityMonsterResearchDataStatus
  L2_2 = L2_2.Completed
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_completed_info
    L1_2(L2_2)
  else
    L1_2 = A0_2._research_data
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.ActivityMonsterResearchDataStatus
    L2_2 = L2_2.IsStart
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_is_start_info
      L1_2(L2_2)
    else
      L1_2 = A0_2._research_data
      L1_2 = L1_2.Status
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ActivityMonsterResearchDataStatus
      L2_2 = L2_2.NotStart
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._setup_not_start_info
        L1_2(L2_2)
      end
    end
  end
end
L0_1._setup_research_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg_disable
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_research_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_monster
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_monster_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_index
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_completed
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_remain_time
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_in_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unknow_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_question_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._hide_nodes = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_research_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_monster
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_monster_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_completed
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._research_data
  L3_2 = L3_2.IsRewardTaken
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_index
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._research_data
  L3_2 = L3_2.IsRewardTaken
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._research_data
  L1_2 = L1_2.ResearchRow
  L1_2 = L1_2.QuestionID
  L1_2 = L1_2.Length
  if 1 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_question_selected
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_monster_info
  L1_2(L2_2)
end
L0_1._setup_completed_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_index
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._research_data
  L1_2 = L1_2.ResearchRow
  L1_2 = L1_2.QuestionID
  L1_2 = L1_2.Length
  L1_2 = 1 < L1_2
  L2_2 = A0_2._research_data
  L2_2 = L2_2.ResearchRow
  L2_2 = L2_2.QuestionID
  L2_2 = L2_2.Length
  if L2_2 == 1 or L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_bg
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_research_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_monster_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_monster
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._setup_monster_info
    L2_2(L3_2)
    L2_2 = A0_2._research_data
    L2_2 = L2_2.ID
    L3_2 = L1_1.CurrentInProgressResearchId
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_in_progress
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
    if L1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_question_selected
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_bg_disable
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_monster_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_monster_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Achievement_HideDescription"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_research_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_research_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Achievement_HideDescription"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_unknow_mark
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMonsterResearch_Tip_4"
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_is_start_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg_disable
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_index
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._research_data
  L1_2 = L1_2.ResearchRow
  L1_2 = L1_2.QuestionID
  L1_2 = L1_2.Length
  if L1_2 == 1 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_lock
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_monster
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_monster
    L4_2 = A0_2._research_data
    L4_2 = L4_2.QuestionDataRow
    L4_2 = L4_2.ImgPath
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_unknow_mark
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_monster_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_monster_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Achievement_HideDescription"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_research_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_research_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Achievement_HideDescription"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._research_data
  L2_2 = L1_2
  L1_2 = L1_2.IsInSchedule
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_remain_time
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.remain_timer
    L2_2 = L1_2
    L1_2 = L1_2.SetTargetTimeByTimeStamp
    L3_2 = A0_2._research_data
    L3_2 = L3_2.BeginTimeStamp
    L4_2 = A0_2._expire_call_back
    L5_2 = A0_2
    L6_2 = 2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_timer_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityRaid_Countdown"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityMonsterResearch_Tip_13"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_not_start_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._research_data
  L1_2 = L1_2.SelectedQuestionId
  if L1_2 == 0 then
    L2_2 = A0_2._research_data
    L2_2 = L2_2.QuestionID
    L1_2 = L2_2[0]
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogWarningFormat
    L3_2 = "ActivityMonsterResearchEnterItem : \231\160\148\231\169\182ID"
    L4_2 = A0_2._research_data
    L4_2 = L4_2.ID
    L5_2 = "\231\148\159\230\136\144\230\128\170\231\137\169\228\191\161\230\129\175\230\151\182\231\155\174\230\160\135Question\228\184\1860"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ActivityMonsterResearchQuestionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MonsterTemplateExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2.MonsterID
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_research_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_2.Name
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_monster
  L7_2 = L3_2.ImagePath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_monster_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.MonsterName
  L4_2(L5_2, L6_2)
end
L0_1._setup_monster_info = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._expire_call_back = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "ActivityMonsterResearchSingleItem"
  L4_2 = A0_2._research_data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._research_data
      L4_2 = A0_2._index
      L5_2 = A0_2
      L1_2(L2_2, L3_2, L4_2, L5_2)
      L2_2 = A0_2
      L1_2 = A0_2.save_navigation_target
      L3_2 = A0_2._binder
      L3_2 = L3_2.btn_root
      L3_2 = L3_2.gameObject
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._research_data
      L1_2 = L1_2.Status
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ActivityMonsterResearchDataStatus
      L2_2 = L2_2.NotStart
      if L1_2 ~= L2_2 then
        L1_2 = A0_2._research_data
        L1_2 = L1_2.SelectedQuestionId
        if L1_2 ~= 0 then
          L1_2 = CS
          L1_2 = L1_2.RPG
          L1_2 = L1_2.Client
          L1_2 = L1_2.SDKLuaReportAdapter
          L1_2 = L1_2.ReportUIButtonClick
          L2_2 = A0_2._owner
          L2_2 = L2_2.__name
          L3_2 = "ActivityMonsterResearchEnterItem"
          L4_2 = A0_2._research_data
          L4_2 = L4_2.ID
          L5_2 = A0_2._owner
          L5_2 = L5_2.guid
          L1_2(L2_2, L3_2, L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_click = L2_1
return L0_1
