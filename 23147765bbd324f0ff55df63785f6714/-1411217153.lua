local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Challenge.AutoSettle.ChallengeAutoSettleResultDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.AutoSettle.ChallengeAutoSettleInfoRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.AutoSettle.ChallengeAutoSettleInfoRowPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ChallengeModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ChallengeAutoSettleResultDialog"
L3_1 = G
L3_1 = L3_1.BaseDialog
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeAutoSettleResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._auto_settle_result = A1_2
  L2_2 = {}
  A0_2._challenge_data_table = L2_2
  L2_2 = A1_2.CurSettledChallengeID
  A0_2._cur_settled_challenge_id = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2.AutoFinishedChallengeIDList
  L2_2 = L2_2(L3_2)
  A0_2._auto_finished_challenge_ids = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A1_2.AlreadyFinishedChallengeIDList
  L2_2 = L2_2(L3_2)
  A0_2._already_finished_challenge_ids = L2_2
  L2_2 = A0_2._auto_finished_challenge_ids
  if L2_2 ~= nil then
    L2_2 = A0_2._auto_finished_challenge_ids
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = pairs
      L3_2 = A0_2._auto_finished_challenge_ids
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._challenge_data_table
        L9_2 = L0_1
        L10_2 = L9_2
        L9_2 = L9_2.GetChallengeData
        L11_2 = L6_2
        L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
        L7_2(L8_2, L9_2, L10_2, L11_2)
      end
      L2_2 = pairs
      L3_2 = A0_2._already_finished_challenge_ids
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = table
        L7_2 = L7_2.insert
        L8_2 = A0_2._challenge_data_table
        L9_2 = L0_1
        L10_2 = L9_2
        L9_2 = L9_2.GetChallengeData
        L11_2 = L6_2
        L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
        L7_2(L8_2, L9_2, L10_2, L11_2)
      end
    end
  end
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_challenge_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_scroll_challenge_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._auto_settle_result
  L2_2 = L1_2
  L1_2 = L1_2.Clear
  L1_2(L2_2)
  A0_2._auto_settle_result = nil
  A0_2._cur_settled_challenge_id = nil
  A0_2._challenge_data_table = nil
  A0_2._auto_finished_challenge_ids = nil
  A0_2._already_finished_challenge_ids = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_challenge_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetChallengeData
  L3_2 = A0_2._cur_settled_challenge_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._challenge_data_table
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = L1_2.GroupType
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.ChallengeGroupType
      L3_2 = L3_2.Memory
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_desc
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_Challenge_FastReward_Description"
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.TextmapStatic
        L5_2 = L5_2.GetText
        L6_2 = L1_2.Name
        L5_2, L6_2 = L5_2(L6_2)
        L2_2(L3_2, L4_2, L5_2, L6_2)
      else
        L2_2 = L1_2.GroupType
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.ChallengeGroupType
        L3_2 = L3_2.Story
        if L2_2 == L3_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.text_desc
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetTextID
          L4_2 = "UIText_ChallengeStory_FastReward_Description"
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.Client
          L5_2 = L5_2.TextmapStatic
          L5_2 = L5_2.GetText
          L6_2 = L1_2.Name
          L5_2, L6_2 = L5_2(L6_2)
          L2_2(L3_2, L4_2, L5_2, L6_2)
        end
      end
    else
      L2_2 = L1_2.GroupType
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.ChallengeGroupType
      L3_2 = L3_2.Memory
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.text_desc
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = "UIText_Challenge_FastReward_Description_2"
        L5_2 = CS
        L5_2 = L5_2.RPG
        L5_2 = L5_2.Client
        L5_2 = L5_2.TextmapStatic
        L5_2 = L5_2.GetText
        L6_2 = L1_2.Name
        L5_2, L6_2 = L5_2(L6_2)
        L2_2(L3_2, L4_2, L5_2, L6_2)
      else
        L2_2 = L1_2.GroupType
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.ChallengeGroupType
        L3_2 = L3_2.Story
        if L2_2 == L3_2 then
          L2_2 = A0_2._binder
          L2_2 = L2_2.text_desc
          L3_2 = L2_2
          L2_2 = L2_2.SafeSetTextID
          L4_2 = "UIText_ChallengeStory_FastReward_Description_2"
          L5_2 = CS
          L5_2 = L5_2.RPG
          L5_2 = L5_2.Client
          L5_2 = L5_2.TextmapStatic
          L5_2 = L5_2.GetText
          L6_2 = L1_2.Name
          L5_2, L6_2 = L5_2(L6_2)
          L2_2(L3_2, L4_2, L5_2, L6_2)
        end
      end
    end
  end
end
L1_1._setup_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._challenge_data_table
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_reward_list
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_challenge_list
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._challenge_data_table
    L4_2 = #L4_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_challenge_list
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_challenge_list
    L3_2 = L2_2
    L2_2 = L2_2.PlayFadeIn
    L2_2(L3_2)
  end
end
L1_1._setup_challenge_list = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChallengeAutoSettleInfoRowPanel
    L8_2 = G
    L8_2 = L8_2.ChallengeAutoSettleInfoRowPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._challenge_data_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L10_2 = A0_2
  L9_2 = A0_2._is_already_finish
  L11_2 = L5_2
  L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return L3_2
end
L1_1._on_scroll_challenge_change = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = A0_2._already_finished_challenge_ids
  L4_2 = A1_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = L2_2 ~= nil
  return L2_2
end
L1_1._is_already_finish = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L1_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_challenge_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L1_1._on_in_control_input_switch = L2_1
return L1_1
