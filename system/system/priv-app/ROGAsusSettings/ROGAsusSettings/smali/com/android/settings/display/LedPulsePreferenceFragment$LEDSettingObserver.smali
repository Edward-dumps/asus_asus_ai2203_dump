.class Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;
.super Landroid/database/ContentObserver;
.source "LedPulsePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/LedPulsePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LEDSettingObserver"
.end annotation


# instance fields
.field private final LED_CHARGING_URI:Landroid/net/Uri;

.field private final LED_NOTIFICATION_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/display/LedPulsePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/LedPulsePreferenceFragment;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;->this$0:Lcom/android/settings/display/LedPulsePreferenceFragment;

    .line 150
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "asus_charging_light_up"

    .line 143
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;->LED_CHARGING_URI:Landroid/net/Uri;

    const-string p1, "notification_light_pulse"

    .line 145
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;->LED_NOTIFICATION_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 166
    iget-object p1, p0, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;->LED_CHARGING_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;->LED_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;->this$0:Lcom/android/settings/display/LedPulsePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/display/LedPulsePreferenceFragment;->access$100(Lcom/android/settings/display/LedPulsePreferenceFragment;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;->this$0:Lcom/android/settings/display/LedPulsePreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/display/LedPulsePreferenceFragment;->access$000(Lcom/android/settings/display/LedPulsePreferenceFragment;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 156
    iget-object p2, p0, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;->LED_CHARGING_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    iget-object p2, p0, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;->LED_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
