import { define } from 'remount'

import AppHeader from "./components/AppHeader"
import NewRegistration from "./components/Registrations/New"
import NewSession from "./components/Sessions/New"
import NewReferral from "./components/Referrals/New"

define({ 'app-header': AppHeader })
define({ 'new-registration': NewRegistration })
define({ 'new-session': NewSession })
define({ 'new-referral': NewReferral })
