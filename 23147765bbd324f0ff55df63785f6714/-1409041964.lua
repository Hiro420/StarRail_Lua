local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Component.CommonFilter"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FriendModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "FriendAvatarFilter"
L3_1 = G
L3_1 = L3_1.CommonFilter
L1_1 = L1_1(L2_1, L3_1)
L2_1 = {}
L2_1.Friend = 1
L2_1.Stranger = 2
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = L2_1.Friend
  L4_2 = A0_2
  L3_2 = A0_2._create_filter_data
  L5_2 = L2_1.Friend
  L6_2 = "UIText_Assist_Filter_Content_Friend"
  L7_2 = nil
  L8_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2[L2_2] = L3_2
  L2_2 = L2_1.Stranger
  L4_2 = A0_2
  L3_2 = A0_2._create_filter_data
  L5_2 = L2_1.Stranger
  L6_2 = "UIText_Assist_Filter_Content_Stranger"
  L7_2 = nil
  L8_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L1_2[L2_2] = L3_2
  return L1_2
end
L1_1._get_all_filter_data = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = "UIText_Assist_Filter_Label_Friend"
  return L1_2
end
L1_1.get_title_text_id = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.IsFriend
  L5_2 = A1_2.PlayerDisplayData
  L5_2 = L5_2.UID
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L2_1.Friend
    if L4_2 then
      goto lbl_12
    end
  end
  L4_2 = L2_1.Stranger
  ::lbl_12::
  L4_2 = A2_2[L4_2]
  return L4_2
end
L1_1._filter = L3_1
return L1_1
