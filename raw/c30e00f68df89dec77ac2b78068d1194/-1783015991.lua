local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousDiceEditPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceEditPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "9324"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousDiceEditPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._branch_data = A1_2
  A0_2._is_aeon_selected = A2_2
  A0_2._aeon_id = A3_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._on_exit_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.overview_btn
  L4_2 = A0_2._on_overview_surface_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.reset_btn
  L4_2 = A0_2._on_reset_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.set_to_recommend_btn
  L4_2 = A0_2._on_set_to_recommend_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.branch_detail_btn
  L4_2 = A0_2._on_branch_detail_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.genre_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_slot_btn_clicked
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.surface_edit_panel
  L2_2 = L1_2
  L1_2 = L1_2.register_confirm_callback
  L3_2 = A0_2._on_confirm_edit
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reset_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.ShouldShowRecommendBtn
  L3_2 = L3_2()
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.set_to_recommend_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueNousUtils
  L3_2 = L3_2.ShouldShowRecommendBtn
  L3_2, L4_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueBranchUpdated
  L4_2 = A0_2._refresh_page
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_page
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._trigger_first_enter_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_branch_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_branch_gamepad_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_extra_rarity_unlock_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.genre_panel
  L2_2 = L1_2
  L1_2 = L1_2.trigger_first_enter_view
  L1_2(L2_2)
end
L0_1._trigger_first_enter_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.genre_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._branch_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._cur_data
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.surface_edit_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = A0_2._cur_data
    L4_2 = A0_2._branch_data
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2.set_navigation_target
    L3_2 = nil
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._on_enter_zoom
      L3_2 = NavigationZoneType
      L3_2 = L3_2.Zone1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.branch_gamepad_hint_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._refresh_page = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._is_aeon_selected
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = A0_2._branch_data
    L2_2 = L2_2.EffectDescParam2
    L4_2 = A0_2
    L3_2 = A0_2._unpack_cs_array_params
    L5_2 = A0_2._branch_data
    L5_2 = L5_2.DescParamValue2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = G
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = A0_2._branch_data
    L3_2 = L3_2.EffectDescParam3
    L5_2 = A0_2
    L4_2 = A0_2._unpack_cs_array_params
    L6_2 = A0_2._branch_data
    L6_2 = L6_2.DescParamValue3
    L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2, L6_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.branch_content_txt
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A0_2._branch_data
    L5_2 = L5_2.PassiveEffectDesc
    L6_2 = L1_2
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = A0_2._branch_data
    L2_2 = L2_2.EffectDescParam2
    L4_2 = A0_2
    L3_2 = A0_2._unpack_cs_array_params
    L5_2 = A0_2._branch_data
    L5_2 = L5_2.DescParamValue2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2, L5_2)
    L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.RogueNousDiceBranchValueExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2._branch_data
    L3_2 = L3_2.BranchID
    L4_2 = A0_2._aeon_id
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = nil
    if L2_2 then
      L4_2 = G
      L4_2 = L4_2.TextmapStatic
      L4_2 = L4_2.GetText
      L5_2 = L2_2.BranchEffectDesc
      L7_2 = A0_2
      L6_2 = A0_2._unpack_cs_array_params
      L8_2 = L2_2.ParamList
      L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L3_2 = L4_2
    end
    L4_2 = A0_2._binder
    L4_2 = L4_2.branch_content_txt
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A0_2._branch_data
    L6_2 = L6_2.PassiveEffectDesc
    L7_2 = L1_2
    L8_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1._setup_branch_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_extra_info
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = L1_2.Length
  if 0 < L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = "ActionGroup_BuffDetail_LT"
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.branch_scroll_rect
  L4_2 = L3_2
  L3_2 = L3_2.CanScroll
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = "ActionGroup_Scroll"
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.MazeShortCutHintPanel
  L6_2 = G
  L6_2 = L6_2.MazeShortCutHintPanelBinder
  L7_2 = L2_2
  L8_2 = nil
  L9_2 = false
  L10_2 = nil
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  A0_2._gamepad_hint_panel = L3_2
  L3_2 = A0_2._gamepad_hint_panel
  L4_2 = L3_2
  L3_2 = L3_2.bind
  L5_2 = A0_2._binder
  L5_2 = L5_2.gamepad_hint_root
  L3_2(L4_2, L5_2)
end
L0_1._setup_branch_gamepad_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._branch_data
  L1_2 = L1_2.SlotList
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L6_2 = L6_2.ExtraRarityUnlocked
    if L6_2 then
      L6_2 = G
      L6_2 = L6_2.NotifyManager
      L6_2 = L6_2.notify
      L7_2 = G
      L7_2 = L7_2.CS
      L7_2 = L7_2.NotifyType
      L7_2 = L7_2.TutorialTaskUnlock
      L8_2 = L1_1
      L6_2(L7_2, L8_2)
      break
    end
  end
end
L0_1._show_extra_rarity_unlock_hint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = table
  L2_2 = L2_2.unpack
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  return L2_2(L3_2, L4_2)
end
L0_1._unpack_cs_array_params = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousConfirmResetDiceDialog"
  L3_2 = "UIText_RogueNous_SurfaceEditor_ResetComfirm"
  L4_2 = nil
  L5_2 = A0_2._reset_rogue_dice_branch_surface
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_reset_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L2_2 = L1_2
  L1_2 = L1_2.SendResetChessRogueDiceBranchSurfaceCsReq
  L3_2 = A0_2._branch_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.OJPLKJOFDED
  L1_2(L2_2, L3_2)
end
L0_1._reset_rogue_dice_branch_surface = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.IsAnyMissionRewardUnTaken
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousConfirmResetDiceDialog"
    L3_2 = "UIText_RogueNous_SurfaceEditor_RecommendComfirm"
    L4_2 = "UIText_RogueNous_SurfaceEditor_AutoClaimDiceSurface"
    L5_2 = A0_2._take_all_surface_and_reset_surface
    L6_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousConfirmResetDiceDialog"
    L3_2 = "UIText_RogueNous_SurfaceEditor_RecommendComfirm"
    L4_2 = nil
    L5_2 = A0_2._reset_to_suggestive
    L6_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_set_to_recommend_btn_clicked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.TakeAllFinishedMissionReward
  L1_2()
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.AFHFGKECOFG
  L4_2 = A0_2._on_quest_get_reward
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.AFHFGKECOFG
  L1_2(L2_2, L3_2)
end
L0_1._take_all_surface_and_reset_surface = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "TakeQuestRewardScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.SuccQuestIdList
    if L3_2 ~= nil then
      L3_2 = L2_2.SuccQuestIdList
      L3_2 = L3_2.Length
      if L3_2 ~= 0 then
        goto lbl_17
      end
    end
  end
  do return end
  ::lbl_17::
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ItemFactory
  L3_2 = L3_2.GetRewardItemDisplayListByQuestRsp
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = G
  L4_2 = L4_2.UIManager
  L4_2 = L4_2.load_and_async_show
  L5_2 = "Ui.Common.RewardDialog"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_NetworkManager
  L5_2 = L4_2
  L4_2 = L4_2.ODJMBGECJDK
  L6_2 = A0_2._branch_data
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._remove_packet_handler
  L6_2 = CS
  L6_2 = L6_2.PBIBDHBOIGI
  L6_2 = L6_2.AFHFGKECOFG
  L7_2 = A0_2._on_quest_get_reward
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._on_quest_get_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.ODJMBGECJDK
  L3_2 = A0_2._branch_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.OJPLKJOFDED
  L1_2(L2_2, L3_2)
end
L0_1._reset_to_suggestive = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = nil
  L2_2 = A0_2._is_aeon_selected
  if L2_2 then
    L2_2 = A0_2._branch_data
    L1_2 = L2_2.PassiveExtraDesc
  else
    L2_2 = A0_2._branch_data
    L1_2 = L2_2.PassiveEffectExtraDesc
  end
  return L1_2
end
L0_1._get_extra_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_extra_info
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.ChessRogueUtils
  L2_2 = L2_2.show_extra_info
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._show_extra_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._show_extra_info
  L1_2(L2_2)
end
L0_1._on_branch_detail_btn_clicked = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._cur_genre_panel
  if L3_2 then
    L3_2 = A0_2._cur_genre_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_checked
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  A0_2._cur_genre_panel = A1_2
  L3_2 = A0_2._cur_genre_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_checked
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.surface_edit_panel
  L4_2 = L3_2
  L3_2 = L3_2.clear_cached_data
  L3_2(L4_2)
  A0_2._cur_data = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.surface_edit_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._cur_data
  L6_2 = A0_2._branch_data
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = nil
  L3_2(L4_2, L5_2)
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_enter_zoom
    L5_2 = NavigationZoneType
    L5_2 = L5_2.Zone1
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.branch_gamepad_hint_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_slot_btn_clicked = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.show_full_screen_block_for_packet
  L5_2 = CS
  L5_2 = L5_2.PBIBDHBOIGI
  L5_2 = L5_2.OJPLKJOFDED
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.ChessRogueModule
  L4_2 = L3_2
  L3_2 = L3_2.SendEditChessRogueNousBranchSurfaceCsReq
  L5_2 = A0_2._branch_data
  L5_2 = L5_2.BranchID
  L6_2 = A2_2.SlotID
  L7_2 = A1_2.SurfaceID
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_confirm_edit = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueNous.DiceBuild.RogueNousDiceEffectDisplayDialog"
  L3_2 = A0_2._branch_data
  L1_2(L2_2, L3_2)
end
L0_1._on_overview_surface_btn_clicked = L2_1
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.surface_edit_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
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
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftTrigger" then
    L3_2 = A0_2
    L2_2 = A0_2._get_extra_info
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.Length
    if 0 < L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._show_extra_info
      L2_2(L3_2)
    end
  end
end
L0_1._on_in_control_action_click = L2_1
return L0_1
