local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherChallenge.AetherChallengeNpcInfoDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonSubStarInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonSubStarInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherTeamUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherChallengeNpcInfoDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MonsterRank
L1_1 = L1_1.Elite
L1_1 = #L1_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AetherChallengeNpcInfoDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  A0_2._challenge_data_items = A1_2
  L3_2 = A2_2 or L3_2
  if not A2_2 then
    L3_2 = A0_2._challenge_data_items
    L3_2 = L3_2[1]
  end
  A0_2._cur_challenge_data_item = L3_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_pre
  L4_2 = A0_2._on_btn_pre
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_btn_next
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_challenge
  L4_2 = A0_2._on_btn_challenge
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.IADPLACFLMF
  L4_2 = A0_2._on_mission_taken
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.page_num_list
  L2_2 = L1_2
  L1_2 = L1_2.register_panel_setup_callback
  L3_2 = A0_2._on_setup_page_num_panel
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_monster_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_navi_out_callback
  L3_2 = A0_2._on_panel_reward_navi_out
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_scroll_rect
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_monster
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_force
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btns
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_page_num_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scroll_hint
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._cur_challenge_data_item
  L3_2 = L3_2.Row
  L3_2 = L3_2.OpponentName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_npc
  L4_2 = A0_2._cur_challenge_data_item
  L4_2 = L4_2.Row
  L4_2 = L4_2.OpponentImageIconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_challenge_data_item
  L1_2(L2_2, L3_2)
end
L0_1._refresh_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._cur_challenge_data_item
  L3_2 = L2_2
  L2_2 = L2_2.GetDisplayMonsterDatas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._monster_data_list = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._monster_data_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_monster = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_force
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._cur_challenge_data_item
  L3_2 = L3_2.HardLevel
  L1_2(L2_2, L3_2)
end
L0_1._refresh_force = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MazeBuffExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cur_challenge_data_item
  L2_2 = L2_2.MazeBuffID
  L3_2 = 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_buff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2 ~= nil
  L2_2(L3_2, L4_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_buff_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.BuffDesc
    L5_2 = G
    L5_2 = L5_2.UITextUtils
    L5_2 = L5_2.GetSkillParams
    L6_2 = L1_2.ParamList
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._refresh_buff = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_data_items
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_pre
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_next
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.index_of_item
    L2_2 = A0_2._challenge_data_items
    L3_2 = A0_2._cur_challenge_data_item
    L1_2 = L1_2(L2_2, L3_2)
    A0_2._cur_index = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_pre
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = A0_2._cur_index
    L3_2 = L3_2 ~= 1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_next
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = A0_2._cur_index
    L4_2 = A0_2._challenge_data_items
    L4_2 = #L4_2
    L3_2 = L3_2 ~= L4_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_challenge
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_challenge_data_item
  L3_2 = L3_2.IsFinished
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finished
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._cur_challenge_data_item
  L3_2 = L3_2.IsFinished
  L1_2(L2_2, L3_2)
end
L0_1._refresh_btns = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.page_num_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._challenge_data_items
  L1_2(L2_2, L3_2)
end
L0_1._refresh_page_num_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._setup_scroll_hint
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_scroll_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_scroll_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._binder
  L3_2 = L3_2.scroll_rect
  L4_2 = L3_2
  L3_2 = L3_2.CanScroll
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_scroll_hint = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.CommonBossIconPanel
    L8_2 = G
    L8_2 = L8_2.CommonBossIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.enable_aether_mode
    L7_2 = true
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.bind_click
    L7_2 = A0_2
    L8_2 = A0_2._on_click_monster
    L5_2(L6_2, L7_2, L8_2)
    L6_2 = L4_2
    L5_2 = L4_2.get_navi_btn
    L5_2 = L5_2(L6_2)
    function L6_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3
      if A2_3 then
        return
      end
      L3_3 = A0_3.moveDir
      L4_3 = CS
      L4_3 = L4_3.UnityEngine
      L4_3 = L4_3.EventSystems
      L4_3 = L4_3.MoveDirection
      L4_3 = L4_3.Down
      if L3_3 == L4_3 then
        L3_3 = A0_2
        L4_3 = L3_3
        L3_3 = L3_3.set_navigation_target
        L5_3 = A0_2._binder
        L5_3 = L5_3.reward_panel
        L6_3 = L5_3
        L5_3 = L5_3.get_first_selected_object
        L5_3, L6_3 = L5_3(L6_3)
        L3_3(L4_3, L5_3, L6_3)
      end
    end
    L5_2.OnNaviHandler = L6_2
  end
  L5_2 = A0_2._monster_data_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = L5_2.MonsterID
  L7_2 = L5_2.Level
  L8_2 = L5_2.TemplateRow
  L8_2 = L8_2.Rank
  L8_2 = #L8_2
  L9_2 = L1_1
  L8_2 = L8_2 >= L9_2
  L10_2 = L4_2
  L9_2 = L4_2.setup_view
  L11_2 = L6_2
  L12_2 = L7_2
  L13_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  L10_2 = L4_2
  L9_2 = L4_2.rebuild_info_layout
  L9_2(L10_2)
  return L3_2
end
L0_1._on_monster_item_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = 1
  L3_2 = ipairs
  L4_2 = A0_2._monster_data_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.MonsterID
    if L8_2 == A1_2 then
      L2_2 = L6_2
      break
    end
  end
  L3_2 = G
  L3_2 = L3_2.AetherTeamUtils
  L3_2 = L3_2.show_monster_tips_dialog
  L4_2 = A0_2._monster_data_list
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_click_monster = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view
  L5_2 = A0_2._cur_index
  L5_2 = A2_2 == L5_2
  L3_2(L4_2, L5_2)
end
L0_1._on_setup_page_num_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_data_items
  L2_2 = A0_2._cur_index
  L2_2 = L2_2 - 1
  L1_2 = L1_2[L2_2]
  A0_2._cur_challenge_data_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_pre = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._challenge_data_items
  L2_2 = A0_2._cur_index
  L2_2 = L2_2 + 1
  L1_2 = L1_2[L2_2]
  A0_2._cur_challenge_data_item = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_next = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_challenge_data_item
  if L1_2 ~= nil then
    L1_2 = A0_2._cur_challenge_data_item
    L1_2 = L1_2.IsFinished
    if not L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.MissionModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetMainMissionData
  L3_2 = A0_2._cur_challenge_data_item
  L3_2 = L3_2.MissionID
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.IsStart
    if L2_2 then
      goto lbl_39
    end
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.OOGONDGGKMI
  L3_2 = L2_2
  L2_2 = L2_2.FMFLDFEJIIP
  L4_2 = A0_2._cur_challenge_data_item
  L4_2 = L4_2.MissionID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.NIJNBICAPPA
  L4_2 = L4_2.IADPLACFLMF
  L2_2(L3_2, L4_2)
  goto lbl_54
  ::lbl_39::
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.MissionModule
  L3_2 = L2_2
  L2_2 = L2_2.SetTrackingMission
  L4_2 = A0_2._cur_challenge_data_item
  L4_2 = L4_2.MissionID
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.MissionUtils
  L2_2 = L2_2.open_map_with_locate_target_main_mission
  L3_2 = L1_2
  L2_2(L3_2)
  ::lbl_54::
end
L0_1._on_btn_challenge = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_challenge
  L1_2(L2_2)
end
L0_1._on_mission_taken = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    return L2_2(L3_2)
  end
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_navigation_target
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.moveDir
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.EventSystems
  L3_2 = L3_2.MoveDirection
  L3_2 = L3_2.Up
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.monster_list
    L3_2 = L2_2
    L2_2 = L2_2.GetShownItemByItemIndex
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2.set_navigation_target
      L5_2 = L2_2.UserObjectData
      L6_2 = L5_2
      L5_2 = L5_2.get_first_selected_object
      L5_2, L6_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_panel_reward_navi_out = L2_1
return L0_1
