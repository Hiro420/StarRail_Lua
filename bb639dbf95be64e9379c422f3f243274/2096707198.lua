local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityCompanion.SilverWolfDecalDetailDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivitySilverWolf.ActivityCompanion.SilverWolfDecalDetailDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfDecalIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "GraffitiItem_UnLockedHint"
function L2_1(A0_2)
  local L1_2
  A0_2._quest_finish = false
  A0_2._decal_id = 0
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_used
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  A0_2._decal_id = A1_2
end
L0_1.setup_decal_id = L2_1
function L2_1(A0_2, A1_2)
  A0_2._quest_id = A1_2
end
L0_1.setup_quest_id = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.QuestModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._quest_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._quest_data = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.Status
  L3_2 = CS
  L3_2 = L3_2.BLHLCHNAJKK
  L3_2 = L3_2.BMEAGBEFNFK
  if L2_2 ~= L3_2 then
    L2_2 = L1_2.SilverWolfNewFinishQuest
    L3_2 = L2_2
    L2_2 = L2_2.Contains
    L4_2 = A0_2._quest_id
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      goto lbl_36
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator
  L3_2 = L2_2
  L2_2 = L2_2.SetInteger
  L4_2 = "Status"
  L5_2 = 1
  L2_2(L3_2, L4_2, L5_2)
  goto lbl_63
  ::lbl_36::
  L2_2 = A0_2._quest_data
  L2_2 = L2_2.Status
  L3_2 = CS
  L3_2 = L3_2.BLHLCHNAJKK
  L3_2 = L3_2.FMLBEGJJHMJ
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetInteger
    L4_2 = "Status"
    L5_2 = 3
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._quest_data
    L2_2 = L2_2.Status
    L3_2 = CS
    L3_2 = L3_2.BLHLCHNAJKK
    L3_2 = L3_2.CDJHHIHBNMN
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator
      L3_2 = L2_2
      L2_2 = L2_2.SetInteger
      L4_2 = "Status"
      L5_2 = 2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  ::lbl_63::
end
L0_1.init_animation_state = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.rpg_animation_event
  L3_2 = L2_2
  L2_2 = L2_2.AddAnimationEvent
  L4_2 = L1_1
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.add_unlock_animation_event = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "ClickDecal"
  L5_2 = A0_2._decal_id
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.BLHLCHNAJKK
  L2_2 = L2_2.FMLBEGJJHMJ
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Activity.ActivitySilverWolf.ActivityCompanion.SilverWolfDecalDetailDialog"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.setup_view
    L4_2 = A0_2._decal_id
    L2_2(L3_2, L4_2)
  else
    L1_2 = A0_2._quest_data
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.BLHLCHNAJKK
    L2_2 = L2_2.CDJHHIHBNMN
    if L1_2 == L2_2 then
      L1_2 = CS
      L1_2 = L1_2.System
      L1_2 = L1_2.Collections
      L1_2 = L1_2.Generic
      L1_2 = L1_2.List
      L2_2 = CS
      L2_2 = L2_2.System
      L2_2 = L2_2.UInt32
      L1_2 = L1_2(L2_2)
      L1_2 = L1_2()
      L3_2 = L1_2
      L2_2 = L1_2.Add
      L4_2 = A0_2._quest_id
      L2_2(L3_2, L4_2)
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_NetworkManager
      L3_2 = L2_2
      L2_2 = L2_2.AMFNHGKACLB
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._callback
      if L2_2 then
        L2_2 = A0_2._callback
        L3_2 = A0_2._callback_self
        L2_2(L3_2)
      end
    else
      L1_2 = {}
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = L1_2
      L4_2 = "UIText_SilverWolf_Decal_GetTips"
      L2_2(L3_2, L4_2)
      L2_2 = {}
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_2
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      L3_2 = G
      L3_2 = L3_2.NotifyManager
      L3_2 = L3_2.notify
      L4_2 = G
      L4_2 = L4_2.CS
      L4_2 = L4_2.NotifyType
      L4_2 = L4_2.UIPileToastMessage
      L5_2 = L1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1._on_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "ActivedHint"
  L1_2(L2_2, L3_2)
end
L0_1.setup_active_trigger = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "UnlockedHint"
  L1_2(L2_2, L3_2)
end
L0_1.setup_unlock_trigger = L2_1
return L0_1
