// Firefox user.js — privacy hardening and UI preferences

// --- Telemetry & Data Collection ---
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("browser.ping-centre.telemetry", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);

// --- Privacy ---
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.socialtracking.enabled", true);
user_pref("network.cookie.cookieBehavior", 1); // Block third-party cookies
user_pref("dom.security.https_only_mode", true);
user_pref("browser.contentblocking.category", "strict");

// --- UI Preferences ---
user_pref("browser.tabs.closeWindowWithLastTab", false);
user_pref("browser.urlbar.suggest.searches", true);
user_pref("browser.urlbar.showSearchSuggestionsFirst", false);
user_pref("browser.aboutConfig.showWarning", false);
user_pref("browser.shell.checkDefaultBrowser", false);

// --- Performance ---
user_pref("gfx.webrender.all", true);
user_pref("layers.acceleration.force-enabled", true);

// --- Disable Pocket ---
user_pref("extensions.pocket.enabled", false);

// --- Disable Sponsored Content ---
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
