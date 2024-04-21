local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueScoreRewardRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "#DCC491"
L2_1 = "#FFFFFF"
function L3_1(A0_2)
  local L1_2
  A0_2._can_take = false
  A0_2._reward_pool_id = nil
  A0_2._score_row_id = nil
  A0_2._display_data = nil
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._can_take = nil
  A0_2._reward_pool_id = nil
  A0_2._score_row_id = nil
  A0_2._display_data = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.refresh_short_curt_hint
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_status
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_progress
  L6_2 = A1_2.Score
  L7_2 = A3_2
  L8_2 = A2_2.Score
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_item
  L6_2 = A1_2.Reward
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._can_take
  if L1_2 then
    L1_2 = A0_2._binder
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_reward_item
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.panel_reward_item
        L2_2 = L1_2
        L1_2 = L1_2.play_effect
        L3_2 = 1
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1.try_play_effect = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_score
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A1_2.Score
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_tag
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A1_2.ScoreRow
  L3_2(L4_2, L5_2)
  L4_2 = A2_2
  L3_2 = A2_2.IsRewardRowTaken
  L5_2 = A1_2.ScoreRow
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_get_mark
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L5_2 = A2_2
  L4_2 = A2_2.IsRewardRowCanTake
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_can_get
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.loader_reddot
  if L5_2 then
    if L4_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.loader_reddot
      L5_2 = L5_2.transform
      L5_2 = L5_2.childCount
      if L5_2 then
        L6_2 = A0_2
        L5_2 = A0_2.instantiate_object
        L7_2 = A0_2._binder
        L7_2 = L7_2.loader_reddot
        L7_2 = L7_2.Prefab
        L8_2 = A0_2._binder
        L8_2 = L8_2.loader_reddot
        L8_2 = L8_2.transform
        L5_2(L6_2, L7_2, L8_2)
      end
    end
    L5_2 = A0_2._binder
    L5_2 = L5_2.loader_reddot
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_score
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextColor
  if L3_2 or L4_2 then
    L7_2 = L1_1
    if L7_2 then
      goto lbl_63
    end
  end
  L7_2 = L2_1
  ::lbl_63::
  L5_2(L6_2, L7_2)
  A0_2._can_take = L4_2
  L5_2 = A1_2.ScoreRow
  A0_2._score_row_id = L5_2
  L5_2 = A2_2.PoolID
  A0_2._reward_pool_id = L5_2
end
L0_1._setup_status = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2 <= A3_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_completed
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_uncompleted
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A2_2 ~= nil and 0 < A2_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_progress_bg
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.slider_progress
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if not L5_2 then
    return
  end
  L6_2 = 0
  if A3_2 <= A1_2 then
    L6_2 = 0
  elseif A2_2 <= A3_2 then
    L6_2 = 1
  else
    L7_2 = A3_2 - A1_2
    L8_2 = A2_2 - A1_2
    L6_2 = L7_2 / L8_2
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.slider_progress
  L8_2 = L7_2
  L7_2 = L7_2.SetValueWithoutNotify
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L0_1._setup_progress = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == 0 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ItemFactory
  L2_2 = L2_2.CreateDisplayItemDataFromReward
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.Count
  if 1 <= L3_2 then
    L4_2 = L2_2[0]
    if L4_2 then
      goto lbl_18
    end
  end
  L4_2 = nil
  ::lbl_18::
  L5_2 = L4_2 ~= nil
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_reward_item
  L7_2 = L6_2
  L6_2 = L6_2.safe_set_active
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if L5_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_reward_item
    L7_2 = L6_2
    L6_2 = L6_2.setup_view_by_display_data
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
    A0_2._display_data = L4_2
  end
end
L0_1._setup_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_short_curt_hint
  L1_2(L2_2)
  L1_2 = A0_2._can_take
  if L1_2 == true then
    L1_2 = A0_2._score_row_id
    if L1_2 ~= nil then
      L2_2 = A0_2
      L1_2 = A0_2.show_full_screen_block_for_packet
      L3_2 = CS
      L3_2 = L3_2.PBIBDHBOIGI
      L3_2 = L3_2.PCJIOAHACDP
      L1_2(L2_2, L3_2)
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.NetworkManager
      L1_2 = L1_2.FFOMLPONIFB
      L2_2 = L1_2
      L1_2 = L1_2.IKCEEDBKFFM
      L3_2 = A0_2._reward_pool_id
      L4_2 = A0_2._score_row_id
      L1_2(L2_2, L3_2, L4_2)
      return
    end
  end
  L1_2 = A0_2._display_data
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.InventoryModule
  L2_2 = L1_2
  L1_2 = L1_2.GetRelicDataByUID
  L3_2 = A0_2._display_data
  L3_2 = L3_2.UID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.ItemDetailDialog"
  L2_2 = L2_2(L3_2)
  if L1_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.setup_view_by_item
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = A0_2._display_data
    L5_2 = L5_2.ConfigID
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_btn_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._can_take
  if L1_2 == true then
    L1_2 = A0_2._score_row_id
    if L1_2 ~= nil then
      L2_2 = A0_2
      L1_2 = A0_2.setup_short_cut_hint_panel
      L3_2 = {}
      L4_2 = "ReceiveReward"
      L5_2 = "ActionGroup_Return"
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L1_2(L2_2, L3_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L4_2 = "ActionGroup_Select"
    L5_2 = "ActionGroup_Return"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L1_2(L2_2, L3_2)
  end
end
L0_1.refresh_short_curt_hint = L3_1
return L0_1
