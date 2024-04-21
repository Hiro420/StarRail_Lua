local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryParagraphInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryParagraphInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._paragraph_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.IsFinish
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unlock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.IsFinish
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._paragraph_data
  L4_2 = L4_2.BookTitle
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogFormat
  L3_2 = "[hwx] CS.RPG.Client.Prefs.User.FantasicStoryBookInRewriting:%d"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L4_2 = L4_2.FantasicStoryBookInRewriting
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._paragraph_data
  L2_2 = L2_2.IsFinish
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_paragraph_info
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.Prefs
    L4_2 = L4_2.User
    L4_2 = L4_2.FantasicStoryBookInRewriting
    if L4_2 == 1 then
      L4_2 = A0_2._paragraph_data
      L4_2 = L4_2.BookContextInRewritting
      if L4_2 then
        goto lbl_53
      end
    end
    L4_2 = A0_2._paragraph_data
    L4_2 = L4_2.BookContext
    ::lbl_53::
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_lock_tips
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityFanaticStory_UnlockTip_6"
    L5_2 = A0_2._paragraph_data
    L5_2 = L5_2.ParagraphID
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1.setup_view = L1_1
return L0_1
