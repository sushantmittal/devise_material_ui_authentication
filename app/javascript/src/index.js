import { define } from 'remount'

import NewRegistration from "./components/Registrations/New"
import NewSession from "./components/Sessions/New"
import AppHeader from "./components/AppHeader"

define({ 'new-registration': NewRegistration })
define({ 'new-session': NewSession })
define({ 'app-header': AppHeader })
