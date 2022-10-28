.class public Lcom/android/settings/display/LedPulsePreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LedPulsePreferenceFragment.java"

# interfaces
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;
    }
.end annotation


# instance fields
.field private mLEDSettingObserver:Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/LedPulsePreferenceFragment;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/display/LedPulsePreferenceFragment;->getSwitchState()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/LedPulsePreferenceFragment;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/display/LedPulsePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v1, Lcom/android/settings/display/AsusLedIndicatorChargingController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/AsusLedIndicatorChargingController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/android/settings/display/AsusLedNotiComeController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/AsusLedNotiComeController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getSwitchState()Z
    .locals 4

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_charging_light_up"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "notification_light_pulse"

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :cond_3
    :goto_2
    return v2
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/display/LedPulsePreferenceFragment;->buildPreferenceControllers(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LedPausePreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 58
    sget p0, Lcom/android/settings/R$xml;->ledindicator_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 66
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/LedPulsePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->led_indicator:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/asus/commonresx/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/display/LedPulsePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/display/LedPulsePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Lcom/asus/commonresx/widget/MainSwitchBar;->show()V

    .line 71
    iget-object p1, p0, Lcom/android/settings/display/LedPulsePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {p0}, Lcom/android/settings/display/LedPulsePreferenceFragment;->getSwitchState()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    .line 73
    new-instance p1, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;-><init>(Lcom/android/settings/display/LedPulsePreferenceFragment;)V

    iput-object p1, p0, Lcom/android/settings/display/LedPulsePreferenceFragment;->mLEDSettingObserver:Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/display/LedPulsePreferenceFragment;->mLEDSettingObserver:Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/display/LedPulsePreferenceFragment;->mLEDSettingObserver:Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/display/LedPulsePreferenceFragment$LEDSettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Landroid/widget/Switch;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "asus_charging_light_up"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "notification_light_pulse"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    iget-object p0, p0, Lcom/android/settings/display/LedPulsePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
