local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubResonanceBuffSelectDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.BoxingClubBuffPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BoxingClub.Components.BoxingClubResonanceTrialPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BoxingClubResonanceBuffSelectDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = {}
L3_1 = "UIText_BoxingClub_ResonanceActivity_SelectBuff_Title_1"
L4_1 = "UIText_BoxingClub_ResonanceActivity_SelectBuff_Tip_1"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1[1] = L2_1
L2_1 = {}
L3_1 = "UIText_BoxingClub_ResonanceActivity_SelectBuff_Title_2"
L4_1 = "UIText_BoxingClub_ResonanceActivity_SelectBuff_Tip_2"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1[2] = L2_1
L2_1 = {}
L3_1 = "UIText_BoxingClub_ResonanceActivity_SelectBuff_Title_3"
L4_1 = "UIText_BoxingClub_ResonanceActivity_SelectBuff_Tip_3"
L2_1[1] = L3_1
L2_1[2] = L4_1
L1_1[3] = L2_1
L2_1 = {}
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AttackDamageType
L3_1 = L3_1.Fire
L2_1[L3_1] = 0
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AttackDamageType
L3_1 = L3_1.Ice
L2_1[L3_1] = 1
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AttackDamageType
L3_1 = L3_1.Imaginary
L2_1[L3_1] = 2
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AttackDamageType
L3_1 = L3_1.Physical
L2_1[L3_1] = 3
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AttackDamageType
L3_1 = L3_1.Quantum
L2_1[L3_1] = 4
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AttackDamageType
L3_1 = L3_1.Thunder
L2_1[L3_1] = 5
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.AttackDamageType
L3_1 = L3_1.Wind
L2_1[L3_1] = 6
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.BoxingClubResonanceBuffSelectDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_resp_esc = false
  L1_2 = {}
  A0_2._buff_panels = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._level_instance = A1_2
  L2_2 = A0_2._level_instance
  L2_2 = L2_2.BattleRecord
  if L2_2 == nil then
    L2_2 = 1
    if L2_2 then
      goto lbl_13
    end
  end
  L2_2 = A0_2._level_instance
  L2_2 = L2_2.BattleRecord
  L2_2 = L2_2.CurrentStageIndex
  L2_2 = L2_2 + 1
  ::lbl_13::
  A0_2._select_idx = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2 = A1_2.GetOptionalBuffID
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._buff_table = L2_2
  L2_2 = G
  L2_2 = L2_2.BoxingClubUtils
  L2_2 = L2_2.get_trial_avatar_table
  L3_2 = A0_2._level_instance
  L3_2 = L3_2.Row
  L3_2 = L3_2.SpecialAvatarIDList
  L2_2 = L2_2(L3_2)
  A0_2._trial_table = L2_2
end
L0_1.init = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_short_desc
  L4_2 = A0_2._on_btn_buff_simple
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.BoxingClubResonanceTrialPanel
  L4_2 = G
  L4_2 = L4_2.BoxingClubResonanceTrialPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._trial_panel = L1_2
  L1_2 = A0_2._trial_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_trial_panel
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.EJDJMJEGCAO
  L4_2 = A0_2._on_choose_boxing_club_buff_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.PNDLLKGAMKI
  L4_2 = A0_2._on_choose_boxing_club_buff_sc_rsp
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L1_2.interactable = false
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_panels
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatars
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_check_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L4_2 = A0_2
  L3_2 = A0_2.fade_in_duration
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_short_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.BoxingClubResonanceShowBuffShortDesc
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._select_idx
  L3_2 = L1_1[L3_2]
  L3_2 = L3_2[1]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._select_idx
  L1_2 = L1_1[L1_2]
  L1_2 = #L1_2
  if 1 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title_tips
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._select_idx
    L3_2 = L1_1[L3_2]
    L3_2 = L3_2[2]
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_title_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._select_idx
  L3_2 = L1_1[L3_2]
  L3_2 = #L3_2
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_text = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_short_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.BoxingClubResonanceShowBuffShortDesc
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buff_desc
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._buff_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.BoxingBreakBuffSelectConfigExcelTable
    L6_2 = L6_2.GetData
    L7_2 = A0_2._buff_table
    L7_2 = L7_2[L5_2]
    L6_2 = L6_2(L7_2)
    L8_2 = A0_2
    L7_2 = A0_2.instantiate_object
    L9_2 = A0_2._binder
    L9_2 = L9_2.prefab_load_meta_buff_content
    L9_2 = L9_2.MultiPrefabList
    L10_2 = L6_2.BoxingClubNatureType
    L10_2 = L2_1[L10_2]
    L9_2 = L9_2[L10_2]
    L10_2 = A0_2._binder
    L10_2 = L10_2.node_buff_content
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.BoxingClubBuffPanel
    L11_2 = G
    L11_2 = L11_2.BoxingClubBuffPanelBinder
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L10_2 = L8_2
    L9_2 = L8_2.register_btn_root_callback
    L11_2 = A0_2._on_buff_panel_click
    L12_2 = A0_2
    L9_2(L10_2, L11_2, L12_2)
    L10_2 = L8_2
    L9_2 = L8_2.setup_view
    L11_2 = A0_2._buff_table
    L11_2 = L11_2[L5_2]
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._buff_panels
    L9_2[L5_2] = L8_2
    L5_2 = L5_2 + 1
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L12_2 = L8_2
    L11_2 = L8_2.get_navigation_btn
    L11_2, L12_2 = L11_2(L12_2)
    L9_2(L10_2, L11_2, L12_2)
  end
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_navigation
  L3_2 = L1_2
  L4_2 = NavigationType
  L4_2 = L4_2.Horizontal
  L2_2(L3_2, L4_2)
end
L0_1._setup_buff_panels = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._select_idx
  if L1_2 == 1 then
    L1_2 = A0_2._trial_table
    if L1_2 then
      L1_2 = A0_2._trial_panel
      L2_2 = L1_2
      L1_2 = L1_2.setup_view
      L3_2 = A0_2._trial_table
      L1_2(L2_2, L3_2)
  end
  else
    L1_2 = A0_2._trial_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = G
    L3_2 = L3_2.BoxingClubUtils
    L3_2 = L3_2.get_avatar_table
    L4_2 = A0_2._level_instance
    L4_2 = L4_2.AvatarIDList
    L5_2 = L4_2
    L4_2 = L4_2.ToArray
    L4_2, L5_2 = L4_2(L5_2)
    L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_avatar_tips
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._select_idx
  if L3_2 == 1 then
    L3_2 = "UIText_TreasureDungeon_Prepare_TrialAvatar"
    if L3_2 then
      goto lbl_33
    end
  end
  L3_2 = "UIText_CurrentTeam"
  ::lbl_33::
  L1_2(L2_2, L3_2)
end
L0_1._setup_avatars = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_check_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._select_idx
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._select_idx
  if 1 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_check_buff
    L4_2 = A0_2._on_btn_check_buff
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_btn_check_buff = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_confirm_callback = A1_2
  A0_2._on_btn_confirm_callback_self = A2_2
end
L0_1.register_on_btn_confirm_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._on_btn_confirm_callback
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._on_btn_confirm_callback
    L3_2 = A0_2._on_btn_confirm_callback_self
    L4_2 = A0_2._selected_buff_id
    L5_2 = A0_2._select_idx
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L0_1._on_btn_confirm = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.BoxingClub.BoxingClubResonanceBuffCheckDialog"
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._level_instance
  L4_2 = L4_2.BattleRecord
  L4_2 = L4_2.SelectedBuffList
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_check_buff = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L2_2 = L2_2.interactable
  if not L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_confirm
    L2_2.interactable = true
  end
  L2_2 = A0_2._selected_buff_panel
  if L2_2 then
    L2_2 = A0_2._selected_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.set_checked
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._selected_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.enable_mono_in_control_move
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  A0_2._selected_buff_panel = A1_2
  L2_2 = A0_2._selected_buff_panel
  L3_2 = L2_2
  L2_2 = L2_2.set_checked
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._selected_buff_panel
  L3_2 = L2_2
  L2_2 = L2_2.enable_mono_in_control_move
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.buff_id
  A0_2._selected_buff_id = L2_2
end
L0_1._on_buff_panel_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L2_2 = L2_2.BoxingClubResonanceShowBuffShortDesc
  L2_2 = not L2_2
  L1_2.BoxingClubResonanceShowBuffShortDesc = L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.ForceSave
  L1_2()
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_short_desc
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.BoxingClubResonanceShowBuffShortDesc
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_buff_desc
  L1_2(L2_2)
end
L0_1._on_btn_buff_simple = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._buff_panels
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._buff_panels
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.setup_buff_desc
    L5_2(L6_2)
  end
end
L0_1._refresh_buff_desc = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_choose_boxing_club_buff_sc_rsp = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  if A1_2 == L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L6_2 = A0_2
    L5_2 = A0_2.get_navigation_target
    L5_2, L6_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._buff_panels
  L1_2 = L1_2[1]
  if L1_2 then
    L1_2 = A0_2._buff_panels
    L1_2 = L1_2[1]
    L2_2 = L1_2
    L1_2 = L1_2.get_navigation_btn_gameobject
    return L1_2(L2_2)
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = true
    return L2_2
  end
end
L0_1._is_can_to_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
return L0_1
