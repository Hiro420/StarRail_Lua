local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SilverWolfLightConeIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.interactable = false
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  A0_2._quest_id = A1_2
end
L0_1.setup_quest_id = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.reward_available = false
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
  L1_2 = A0_2._quest_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.BLHLCHNAJKK
  L2_2 = L2_2.BMEAGBEFNFK
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_lock_view
    L1_2(L2_2)
  else
    L1_2 = A0_2._quest_data
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.BLHLCHNAJKK
    L2_2 = L2_2.FMLBEGJJHMJ
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_close_view
      L1_2(L2_2)
    else
      L1_2 = A0_2._quest_data
      L1_2 = L1_2.Status
      L2_2 = CS
      L2_2 = L2_2.BLHLCHNAJKK
      L2_2 = L2_2.CDJHHIHBNMN
      if L1_2 == L2_2 then
        L2_2 = A0_2
        L1_2 = A0_2._setup_finish_view
        L1_2(L2_2)
        A0_2.reward_available = true
      end
    end
  end
end
L0_1.refresh = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._setup_lock_view = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._setup_finish_view = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._setup_close_view = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_click = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "UnlockedHint"
  L1_2(L2_2, L3_2)
end
L0_1.setup_unlock_trigger = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "ActivedHint"
  L1_2(L2_2, L3_2)
end
L0_1.setup_active_trigger = L1_1
function L1_1(A0_2)
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
L0_1.init_animation_state = L1_1
return L0_1
