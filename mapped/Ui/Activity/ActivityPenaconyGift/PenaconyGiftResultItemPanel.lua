local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityMonsterResearchModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ActivityMonsterResearchConstExcelTable
L1_1 = L1_1.GetData
L2_1 = "PenaconyGift_ContentID"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "PenaconyGiftResultItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2, A1_2, A2_2)
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._research_data = A1_2
  L2_2 = A0_2._research_data
  L2_2 = L2_2.ResearchRow
  A0_2._research_row = L2_2
  L2_2 = A0_2._research_data
  L2_2 = L2_2.QuestionDataRow
  A0_2._question_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_gift_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_state
  L2_2(L3_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_gift
  L4_2 = A0_2._question_row
  L4_2 = L4_2.ImgPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._question_row
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L2_1._setup_gift_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_PenaconyGift_Finished"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_PenaconyGift_Current"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_last_day_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_PenaconyGift_Current"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._research_data
  L3_2 = L3_2.IsComplete
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._research_data
  L1_2 = L1_2.ID
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetContentData
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2.LastResearchID
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_last_day_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._research_data
    L3_2 = L3_2.IsUnlock
    if L3_2 then
      L3_2 = A0_2._research_data
      L3_2 = L3_2.IsComplete
      L3_2 = not L3_2
    end
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._research_data
    L3_2 = L3_2.IsUnlock
    if L3_2 then
      L3_2 = A0_2._research_data
      L3_2 = L3_2.IsComplete
      L3_2 = not L3_2
    end
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_last_day_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L2_1._setup_state = L3_1
return L2_1
