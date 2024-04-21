local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.ActivityClockParkScriptDetailPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "ActivityClockParkScriptDetailPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ActivityClockParkScriptDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  A0_2._pause_game = true
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetClockParkScriptData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._data = L2_2
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.EMFDLJLGGGH
  L4_2 = A0_2._on_data_ready
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ScriptTitle
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_sub_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ScriptTitle
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ScriptDesc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._data
  L2_2 = L2_2.HasScriptCharacteristic
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_logo
  L6_2 = L1_2.IconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.smooth_mask_logo
  L4_2 = G
  L4_2 = L4_2.AssetLoader
  L4_2 = L4_2.SyncLoadAsset
  L5_2 = L1_2.ScriptResultLogoMaskPath
  L6_2 = typeof
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.Sprite
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L3_2.sprite = L4_2
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_tip_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ClockPark_Script_Special_Title"
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_tip
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L1_2.ScriptCharacteristic
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_tip_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ClockPark_Script_Special_None"
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._data
  L3_2 = L3_2.IsPlaying
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_btn_confirm
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_ClockPark_Script_Continue"
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_infinite
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._data
  L5_2 = L5_2.IsInfinite
  L3_2(L4_2, L5_2)
  L3_2 = L1_2.ScriptPostPrefabPath
  L4_2 = G
  L4_2 = L4_2.StrExt
  L4_2 = L4_2.IsNullOrEmpty
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.sync_load_prefab
    L6_2 = L3_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_img
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L5_2 = L4_2.name
    L6_2 = string
    L6_2 = L6_2.sub
    L7_2 = L5_2
    L8_2 = 1
    L9_2 = string
    L9_2 = L9_2.len
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    L10_2 = string
    L10_2 = L10_2.len
    L11_2 = "(Clone)"
    L10_2 = L10_2(L11_2)
    L9_2 = L9_2 - L10_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L4_2.name = L6_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._refresh_gameplay_desc
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_pad_hint
  L4_2(L5_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.HasScriptGamePlayDesc
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_gameplay_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._data
  L4_2 = L4_2.Row
  L4_2 = L4_2.ScriptGamePlayDesc
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_intro
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.ScriptGamePlayGuideGroupID
  L2_2.GuideID = L3_2
end
L1_1._refresh_gameplay_desc = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_after_transition
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.ActivityClockPark.InSideGame.ActivityClockParkGamePlayMainPage"
  L1_2(L2_2)
end
L1_1._on_data_ready = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.scroll_rect
      L1_3 = L0_3
      L0_3 = L0_3.CanScroll
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.setup_short_cut_hint_panel
        L2_3 = {}
        L3_3 = "ActionGroup_Scroll"
        L4_3 = "ActionGroup_Return"
        L2_3[1] = L3_3
        L2_3[2] = L4_3
        L0_3(L1_3, L2_3)
      else
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.setup_short_cut_hint_panel
        L2_3 = {}
        L3_3 = "ActionGroup_Return"
        L2_3[1] = L3_3
        L0_3(L1_3, L2_3)
      end
    end
  end
  L1_2(L2_2, L3_2)
end
L1_1._set_pad_hint = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.PlayingScriptID
  if L1_2 == 0 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.NetworkManager
    L2_2 = L2_2.FFOMLPONIFB
    L3_2 = L2_2
    L2_2 = L2_2.PBCMAMHDAKN
    L4_2 = A0_2._data
    L4_2 = L4_2.ID
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._data
    L2_2 = L2_2.ID
    if L1_2 == L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.NetworkManager
      L2_2 = L2_2.FFOMLPONIFB
      L3_2 = L2_2
      L2_2 = L2_2.PGDHPPGBLKD
      L2_2(L3_2)
    end
  end
end
L1_1._on_btn_confirm = L2_1
return L1_1
