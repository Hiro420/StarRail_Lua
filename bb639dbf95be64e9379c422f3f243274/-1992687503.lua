local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.BattlePass.BattlePassPurchasePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.BattlePass.BattlePassPurchaseUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.ShopUtils"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.BattlePassRewardDisplayExcelTable
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.PayModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.SDKPlatform
L3_1 = L3_1.Instance
L3_1 = L3_1()
L4_1 = "BattlePass_First_in"
L5_1 = "BattlePass_Fade_out"
L6_1 = "BattlePass_Card_First_in"
L7_1 = "BattlePass_Card_Fade_in"
L8_1 = G
L8_1 = L8_1.Class
L9_1 = "BattlePassPurchasePage"
L10_1 = G
L10_1 = L10_1.UIController
L8_1 = L8_1(L9_1, L10_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BattlePassPurchasePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_save_by_click = false
  A0_2._pause_game = true
  A0_2._bp_row = nil
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.BattlePassPurchaseUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._ui3d = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L8_1.ctor = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._is_first = A1_2
  L2_2 = A0_2._is_first
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.ImportCsToLua
    L2_2 = L2_2.TransitionStyle_OpenWithCut
    A0_2._transition_style = L2_2
  else
    L2_2 = G
    L2_2 = L2_2.ImportCsToLua
    L2_2 = L2_2.TransitionStyle_AboveBlack
    A0_2._transition_style = L2_2
  end
  L2_2 = L0_1.BattlePassData
  L2_2 = L2_2.Row
  L2_2 = L2_2.GroupID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.BattlePassLevelRewardExcelTable
  L3_2 = L3_2.GetBPPaidRewardIDs
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.BattlePassLevelRewardExcelTable
  L4_2 = L4_2.GetBPOptionItemIDs
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.get_item_dict
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._paid_item_dict = L5_2
end
L8_1.init = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 105
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassChanged
  L4_2 = A0_2._on_bp_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassPurchased
  L4_2 = A0_2._on_purchased
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRewardDialogClose
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ProductUpdated
  L4_2 = A0_2._on_product_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_lightcone
  L4_2 = A0_2._on_btn_lightcone
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_lightcone
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_btn_lightcone
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_update_loading
    L0_3(L1_3)
  end
  L4_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._update_timer = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_detect_block
  L2_2 = L1_2
  L1_2 = L1_2.AddActiveListener
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_block_input
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_detect_block
  L2_2 = L1_2
  L1_2 = L1_2.AddDeactiveListener
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._try_block_input
      L2_3 = false
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._init_ui_navigation
      L0_3(L1_3)
    end
  end
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L5_1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_PSManager
  L2_2 = L1_2
  L1_2 = L1_2.TryShowPSStoreIcon
  L1_2(L2_2)
end
L8_1._on_load = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_block_input
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_PSManager
  L2_2 = L1_2
  L1_2 = L1_2.TryHidePSStoreIcon
  L1_2(L2_2)
end
L8_1._on_dispose = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A0_2._block_id
    if L2_2 ~= nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_UIManager
      L3_2 = L2_2
      L2_2 = L2_2.TryUnblockFixedTime
      L4_2 = A0_2._block_id
      L2_2(L3_2, L4_2)
      A0_2._block_id = nil
    end
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UIManager
    L3_2 = L2_2
    L2_2 = L2_2.BlockFixedTime
    L4_2 = 3
    L5_2 = 3
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._block_id = L2_2
  else
    L2_2 = A0_2._block_id
    if L2_2 ~= nil then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_UIManager
      L3_2 = L2_2
      L2_2 = L2_2.TryUnblockFixedTime
      L4_2 = A0_2._block_id
      L2_2(L3_2, L4_2)
      A0_2._block_id = nil
    end
  end
end
L8_1._try_block_input = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_PSManager
  L2_2 = L1_2
  L1_2 = L1_2.TryShowPSStoreIcon
  L1_2(L2_2)
end
L8_1._on_return_to_top = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.BattlePassData
  L1_2 = L1_2.Row
  A0_2._bp_row = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_level_reward
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_lightcone
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._record_seen
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_product
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_3d_in
  L1_2(L2_2)
end
L8_1._setup_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_type1
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_type2
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.RequestProductItems
  L1_2(L2_2)
  L1_2 = A0_2._update_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._update_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L8_1._update_product = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._update_timer
  if L1_2 ~= nil then
    L1_2 = A0_2._update_timer
    L2_2 = L1_2
    L1_2 = L1_2.stop
    L1_2(L2_2)
    L1_2 = A0_2._update_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._show_product_loading
  L3_2 = L2_1.IsProductDataReady
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L8_1._refresh_update_loading = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_type1
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_type2
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_product_loading
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L8_1._show_product_loading = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L2_1.IsProductDataReady
  L4_2 = A0_2
  L3_2 = A0_2._refresh_update_loading
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_pay_view
  L3_2(L4_2)
  if not L2_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.AppUtils
    L3_2 = L3_2.IsPSPlatform
    if L3_2 then
      L3_2 = L3_1
      L4_2 = L3_2
      L3_2 = L3_2.ShowPSEmptyStoreDialog
      function L5_2()
        local L0_3, L1_3
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.exit
        L0_3(L1_3)
      end
      L3_2(L4_2, L5_2)
      return
    end
  end
end
L8_1._on_product_updated = L9_1
function L9_1(A0_2)
  local L1_2
end
L8_1._try_play_3d_in = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2._bp_row
  L2_2 = L2_2.LevelUpShow
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_1.GetData
    L8_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2)
    if L7_2 ~= nil then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_type1
  L4_2 = L3_2
  L3_2 = L3_2.setup_level_reward
  L5_2 = L1_2
  L6_2 = A0_2._paid_item_dict
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_type2
  L4_2 = L3_2
  L3_2 = L3_2.setup_level_reward
  L5_2 = L1_2
  L6_2 = A0_2._paid_item_dict
  L3_2(L4_2, L5_2, L6_2)
end
L8_1._setup_level_reward = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PayModule
  L2_2 = L1_2
  L1_2 = L1_2.ContainsBattlePassProduct
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = L0_1.BattlePassData
  L1_2 = L1_2.PurchaseType
  L2_2 = CS
  L2_2 = L2_2.NCPMPNBOJBP
  L2_2 = L2_2.OKMAJOCLCAB
  L2_2 = L1_2 ~= L2_2
  A0_2._can_pay2 = L2_2
  L2_2 = CS
  L2_2 = L2_2.NCPMPNBOJBP
  L2_2 = L2_2.FAOCNDACICE
  L2_2 = L1_2 ~= L2_2
  A0_2._can_pay1 = L2_2
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetProductByType
  L4_2 = CS
  L4_2 = L4_2.LAOBFFHNOCF
  L4_2 = L4_2.GNIDLIICKGH
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetProductByType
  L5_2 = CS
  L5_2 = L5_2.LAOBFFHNOCF
  L5_2 = L5_2.NJHHIGAEBGL
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L2_1
  L5_2 = L4_2
  L4_2 = L4_2.TryGetProductByType
  L6_2 = CS
  L6_2 = L6_2.LAOBFFHNOCF
  L6_2 = L6_2.LGLPKINCHFD
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L2_2.Price
  L6_2 = L4_2.Price
  L5_2 = L5_2 + L6_2
  L5_2 = L5_2 / 100
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "%s%0.2f"
  L8_2 = L2_2.CurrencySymbol
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_type1
  L8_2 = L7_2
  L7_2 = L7_2.register_click_callback
  L9_2 = A0_2._on_btn_pay
  L10_2 = A0_2
  L11_2 = CS
  L11_2 = L11_2.NCPMPNBOJBP
  L11_2 = L11_2.FAOCNDACICE
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_type2
  L8_2 = L7_2
  L7_2 = L7_2.register_click_callback
  L9_2 = A0_2._on_btn_pay
  L10_2 = A0_2
  L11_2 = CS
  L11_2 = L11_2.NCPMPNBOJBP
  L11_2 = L11_2.OKMAJOCLCAB
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_type1
  L8_2 = L7_2
  L7_2 = L7_2.setup_btn_view
  L9_2 = L2_2.ShowPrice
  L10_2 = A0_2._can_pay1
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_type1
  L8_2 = L7_2
  L7_2 = L7_2.setup_pay_reward
  L9_2 = A0_2._bp_row
  L9_2 = L9_2.Purchase68
  L10_2 = nil
  L11_2 = A0_2._can_pay1
  L11_2 = not L11_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L7_2 = A0_2._can_pay1
  if L7_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_type2
    L8_2 = L7_2
    L7_2 = L7_2.setup_btn_view
    L9_2 = L3_2.ShowPrice
    L10_2 = A0_2._can_pay2
    L11_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
  else
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_type2
    L8_2 = L7_2
    L7_2 = L7_2.setup_btn_view
    L9_2 = L4_2.ShowPrice
    L10_2 = A0_2._can_pay2
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.panel_type2
  L8_2 = L7_2
  L7_2 = L7_2.setup_pay_reward
  L9_2 = A0_2._bp_row
  L9_2 = L9_2.Purchase68
  L10_2 = A0_2._bp_row
  L10_2 = L10_2.Purchase128
  L11_2 = A0_2._can_pay1
  L11_2 = not L11_2
  L12_2 = A0_2._can_pay2
  L12_2 = not L12_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
end
L8_1._setup_pay_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RecordCurrentBattlePass
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BattlePassUtils
  L1_2 = L1_2.RecordPurchaseSeen
  L1_2()
end
L8_1._record_seen = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 ~= nil
  if not L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.exit
    L3_2(L4_2)
  end
end
L8_1._on_purchased = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L8_1._on_receive_reward = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_view
    L2_2(L3_2)
  end
end
L8_1._on_bp_changed = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.IsPayEnd
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_Battlepass_Errorcode04"
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.NCPMPNBOJBP
  L2_2 = L2_2.FAOCNDACICE
  if A1_2 ~= L2_2 then
    L2_2 = CS
    L2_2 = L2_2.NCPMPNBOJBP
    L2_2 = L2_2.OKMAJOCLCAB
    if A1_2 ~= L2_2 then
      return
    end
  end
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.PurchaseBattlePass
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L8_1._on_btn_pay = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L8_1._on_btn_close = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == false then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_PSManager
    L3_2 = L2_2
    L2_2 = L2_2.TryHidePSStoreIcon
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_PSManager
    L3_2 = L2_2
    L2_2 = L2_2.TryShowPSStoreIcon
    L2_2(L3_2)
  end
end
L8_1._on_view_active_change = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.BattlePass.BattlePassDisplayPage"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L8_1._on_btn_lightcone = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_navigation
  L3_2 = {}
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_type1
  L5_2 = L4_2
  L4_2 = L4_2.get_select_btn
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_type2
  L6_2 = L5_2
  L5_2 = L5_2.get_select_btn
  L5_2, L6_2 = L5_2(L6_2)
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L4_2 = NavigationType
  L4_2 = L4_2.Vertical
  L1_2(L2_2, L3_2, L4_2)
end
L8_1._setup_btn_navigation = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L8_1._init_ui_navigation = L9_1
function L9_1(A0_2, A1_2)
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
L8_1._on_enter_zoom = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._can_pay1
  if not L1_2 then
    L1_2 = A0_2._can_pay2
    if L1_2 then
      goto lbl_14
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_type1
  L2_2 = L1_2
  L1_2 = L1_2.get_select_btn
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  ::lbl_14::
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_type2
    L2_2 = L1_2
    L1_2 = L1_2.get_select_btn
    L1_2 = L1_2(L2_2)
    L1_2 = L1_2.gameObject
  end
  return L1_2
end
L8_1.get_first_selected_object = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftBumper
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_control_prev_button_click
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.RightBumper
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_control_next_button_click
      L2_2(L3_2)
    end
  end
end
L8_1._on_in_control_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_lightcone
      L2_2 = L1_2
      L1_2 = L1_2.switch_to_left
      L1_2(L2_2)
    end
  end
end
L8_1._on_control_prev_button_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_lightcone
      L2_2 = L1_2
      L1_2 = L1_2.switch_to_right
      L1_2(L2_2)
    end
  end
end
L8_1._on_control_next_button_click = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = 31
  L2_2(L3_2, L4_2)
end
L8_1._on_enter_special_zoom = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.reset_short_cut_hint_panel
  L1_2(L2_2)
end
L8_1._on_leave_special_zoom = L9_1
return L8_1
