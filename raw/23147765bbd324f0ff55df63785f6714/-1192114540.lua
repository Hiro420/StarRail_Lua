local L0_1, L1_1, L2_1, L3_1
L0_1 = "CommonActivityReward_WaitingTakeQuestRewardID"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "CommonActivityRewardTakeRewardHandlerPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._quest_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.update
  L4_2 = L0_1
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.PBIBDHBOIGI
  L4_2 = L4_2.AFHFGKECOFG
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.JCCHEMBPEEE
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.send_take_quest_reward_req = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.get_blackboard
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.query
  L4_2 = L0_1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil and L2_2 ~= 0 then
    L3_2 = A0_2._quest_id
    if L3_2 ~= nil then
      L3_2 = A0_2._quest_id
      if L3_2 ~= 0 then
        L3_2 = A0_2._quest_id
        if L2_2 == L3_2 then
          goto lbl_20
        end
      end
    end
  end
  do return end
  ::lbl_20::
  A0_2._quest_id = nil
  L4_2 = A0_2
  L3_2 = A0_2.get_blackboard
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.update
  L5_2 = L0_1
  L6_2 = nil
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_show
  L5_2 = "Ui.Common.RewardDialog"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L1_1._on_quest_get_reward = L2_1
return L1_1
