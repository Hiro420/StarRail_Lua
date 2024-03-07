local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MailData"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_TimeManager
function L2_1(A0_2)
  local L1_2
  A0_2.ID = nil
  A0_2.RecieveTime = nil
  A0_2.ExpireTime = nil
  A0_2.IsRead = nil
  A0_2.Sender = nil
  A0_2.Title = nil
  A0_2.Content = nil
  A0_2.MailItems = nil
  A0_2.IsNewAfterLogin = false
  A0_2.MailType = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2.ID = nil
  A0_2.RecieveTime = nil
  A0_2.ExpireTime = nil
  A0_2.IsRead = nil
  A0_2.Sender = nil
  A0_2.Title = nil
  A0_2.Content = nil
  A0_2.MailItems = nil
end
L0_1.dtor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.MailType
  L2_2 = CS
  L2_2 = L2_2.LLFDMMAJOFA
  L2_2 = L2_2.BOLCLMPFBME
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.is_star = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.IsRead
  L1_2 = not L1_2
  return L1_2
end
L0_1.has_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.has_reward
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.MailItems
  L1_2 = L1_2[1]
  if L1_2 then
    L1_2 = A0_2.MailItems
    L1_2 = L1_2[1]
    L1_2 = L1_2.ItemSubType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemSubType
    L2_2 = L2_2.ForceOpitonalGift
    L1_2 = L1_2 == L2_2
  end
  return L1_2
end
L0_1.has_optional_reward = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = NG_HSOD_DEBUG
  if not L1_2 then
    L1_2 = NG_HSOD_PROFILE
    if not L1_2 then
      goto lbl_17
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SystemOpenModule
  L1_2 = L1_2.SkipMailExpireCheck
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = false
    return L1_2
  end
  ::lbl_17::
  L1_2 = A0_2.ExpireTime
  L2_2 = L1_1.NowTimeStamp
  L1_2 = L1_2 < L2_2
  return L1_2
end
L0_1.get_is_expired = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2.IsRead
  if not L1_2 then
    L1_2 = 0
    return L1_2
  end
  L1_2 = 100
  return L1_2
end
L0_1.get_sort_code = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.IsNewAfterLogin
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = A0_2.IsRead
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    if L1_2 then
      L2_2 = L1_2.SeenMailIDs
      L3_2 = L2_2
      L2_2 = L2_2.Contains
      L4_2 = A0_2.ID
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L2_2 = true
        return L2_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1.is_new = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2.IsNewAfterLogin = false
  L1_2 = A0_2.IsRead
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  if L1_2 then
    L2_2 = L1_2.SeenMailIDs
    L3_2 = L2_2
    L2_2 = L2_2.Contains
    L4_2 = A0_2.ID
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = L1_2.SeenMailIDs
      L3_2 = L2_2
      L2_2 = L2_2.Add
      L4_2 = A0_2.ID
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.delete_new = L2_1
return L0_1
