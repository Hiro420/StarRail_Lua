local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryActivityFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  A0_2._fantastic_module = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.FantasticStoryActivityUtils
  A0_2._fantastic_utils = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_native_filter
  L1_2(L2_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._native_filter
  if L1_2 ~= nil then
    L1_2 = A0_2._native_filter
    L2_2 = L1_2
    L1_2 = L1_2.Dispose
    L1_2(L2_2)
    A0_2._native_filter = nil
  end
end
L0_1.dtor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "FantasticStoryRewardBtn"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.register_events = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1.unregister_events = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_reward_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_story_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_buff_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_new_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_go_reddot
  L1_2(L2_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = false
  L2_2 = A0_2._static_filter
  L2_2 = L2_2.GetParagraphDataWithAvailReward
  L2_2 = L2_2()
  L3_2 = 0
  L4_2 = L2_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L1_2 = true
    L7_2 = G
    L7_2 = L7_2.RedDotModule
    L7_2 = L7_2.Instance
    L8_2 = L7_2
    L7_2 = L7_2.update_reddot
    L9_2 = "FantasticStoryParagraphRewardNormal"
    L10_2 = L2_2[L6_2]
    L10_2 = L10_2.ParagraphID
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L4_2 = L3_2.FantasticStoryNewUnlockParagraphReward
  L5_2 = L4_2
  L4_2 = L4_2.GetEnumerator
  L4_2 = L4_2(L5_2)
  while true do
    L6_2 = L4_2
    L5_2 = L4_2.MoveNext
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      break
    end
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "FantasticStoryParagraphRewardNew"
    L8_2 = L4_2.Current
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._static_filter
  L5_2 = L5_2.IsFinalQuestRewardAvail
  L5_2 = L5_2()
  if L5_2 then
    L1_2 = true
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "FantasticStoryFinalReward"
    L8_2 = nil
    L5_2(L6_2, L7_2, L8_2)
  end
  if L1_2 then
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "FantasticStoryRewardBtn"
    L8_2 = nil
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._refresh_btn_reward_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.FantasticStoryBookNewParagraph
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "FantasticStoryMyStoryNew"
    L4_2 = nil
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._static_filter
  L1_2 = L1_2.IsMyStoryBookAvail
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.update_reddot
    L3_2 = "FantasticStoryMyStoryReward"
    L4_2 = nil
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._refresh_btn_story_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.GetNewUnlockBuff
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = G
    L6_2 = L6_2.RedDotModule
    L6_2 = L6_2.Instance
    L7_2 = L6_2
    L6_2 = L6_2.update_reddot
    L8_2 = "FantasticStoryBuffNew"
    L9_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = A0_2._fantastic_module
    L7_2 = L6_2
    L6_2 = L6_2.GetBuffData
    L8_2 = L1_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = A0_2._fantastic_module
      L8_2 = L7_2
      L7_2 = L7_2.GetSlotData
      L9_2 = L6_2.BuffSlot
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L8_2 = G
        L8_2 = L8_2.RedDotModule
        L8_2 = L8_2.Instance
        L9_2 = L8_2
        L8_2 = L8_2.update_reddot
        L10_2 = "FantasticStorySlot"
        L11_2 = L7_2.SlotID
        L8_2(L9_2, L10_2, L11_2)
        L8_2 = 0
        L9_2 = L6_2.ParagraphID
        L9_2 = L9_2.Length
        L9_2 = L9_2 - 1
        L10_2 = 1
        for L11_2 = L8_2, L9_2, L10_2 do
          L12_2 = CS
          L12_2 = L12_2.RPG
          L12_2 = L12_2.Client
          L12_2 = L12_2.FantasticStoryActivityUtils
          L12_2 = L12_2.GetBuffIconRedDotSubKey
          L13_2 = L7_2.SlotID
          L14_2 = L6_2.ParagraphID
          L14_2 = L14_2[L11_2]
          L12_2 = L12_2(L13_2, L14_2)
          L13_2 = G
          L13_2 = L13_2.RedDotModule
          L13_2 = L13_2.Instance
          L14_2 = L13_2
          L13_2 = L13_2.update_reddot
          L15_2 = "FantasticStorySlot"
          L16_2 = L12_2
          L13_2(L14_2, L15_2, L16_2)
        end
      end
    end
  end
end
L0_1._refresh_btn_buff_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_new_chapter_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_new_paragraph_reddot
  L1_2(L2_2)
end
L0_1._refresh_new_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.FantasticStoryNewUnlockParagraphCard
  L3_2 = L2_2
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.update_reddot
    L5_2 = "FantasticStoryParagraphNew"
    L6_2 = L2_2.Current
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._refresh_new_paragraph_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = L1_2.FantasticStoryNewUnlockChapter
  L3_2 = L2_2
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = G
    L3_2 = L3_2.RedDotModule
    L3_2 = L3_2.Instance
    L4_2 = L3_2
    L3_2 = L3_2.update_reddot
    L5_2 = "FantasticChapterNew"
    L6_2 = L2_2.Current
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._refresh_new_chapter_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.FantasticStoryBookNewParagraph
  L3_2 = L1_2.FantasticStoryNewUnlockParagraphCard
  L3_2 = L3_2.Count
  L3_2 = 0 < L3_2
  L4_2 = L1_2.FantasticStoryNewUnlockChapter
  L4_2 = L4_2.Count
  L4_2 = 0 < L4_2
  if L2_2 or L3_2 or L4_2 then
    L5_2 = G
    L5_2 = L5_2.RedDotModule
    L5_2 = L5_2.Instance
    L6_2 = L5_2
    L5_2 = L5_2.update_reddot
    L7_2 = "FantasticStoryGoAttendBtn"
    L8_2 = 0
    L5_2(L6_2, L7_2, L8_2)
  end
end
L0_1._refresh_btn_go_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.FantasticStoryActivityRedDotFilter
  L1_2 = L1_2()
  A0_2._native_filter = L1_2
  L1_2 = A0_2._native_filter
  L2_2 = L1_2
  L1_2 = L1_2.Init
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.FantasticStoryActivityRedDotFilter
  A0_2._static_filter = L1_2
end
L0_1._init_native_filter = L1_1
return L0_1
