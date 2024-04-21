local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PerformanceRollingSubtitlesSubTitlePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._content = A1_2
  L2_2 = A0_2._content
  L2_2 = L2_2.pageType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RollingSubtitlesPageType
  L3_2 = L3_2.SubTitle
  if L2_2 ~= L3_2 then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogErrorFormat
    L3_2 = "[UI] The PageType in sub title panel is not SubTitle."
    L2_2(L3_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_sub_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._content
  L4_2 = L4_2.pageText
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.destroy_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L1_2(L2_2, L3_2)
end
L0_1.on_performance_finish = L1_1
return L0_1
