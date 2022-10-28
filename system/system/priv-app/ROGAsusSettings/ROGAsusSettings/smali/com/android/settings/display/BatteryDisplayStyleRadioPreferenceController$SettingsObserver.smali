.class public Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryDisplayStyleRadioPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final KEY_SHOW_BATTERY_PERCENT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;->this$0:Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;

    .line 162
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "asus_status_bar_show_battery_percent"

    .line 159
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;->KEY_SHOW_BATTERY_PERCENT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 175
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 176
    iget-object p1, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;->KEY_SHOW_BATTERY_PERCENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p0, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;->this$0:Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->access$000(Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;)Lcom/android/settingslib/widget/RadioButtonPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 167
    iget-object p2, p0, Lcom/android/settings/display/BatteryDisplayStyleRadioPreferenceController$SettingsObserver;->KEY_SHOW_BATTERY_PERCENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
