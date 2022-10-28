.class public Lcom/android/settings/display/AsusLedIndicatorChargingController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AsusLedIndicatorChargingController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AsusLedIndicatorChargingController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_ASUS_LED_CHARGING_PREFERENCE:Ljava/lang/String; = "asus_led_indicate_charging"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private mSettingObserver:Lcom/android/settings/display/AsusLedIndicatorChargingController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "asus_led_indicate_charging"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 41
    iput p1, p0, Lcom/android/settings/display/AsusLedIndicatorChargingController;->ON:I

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/android/settings/display/AsusLedIndicatorChargingController;->OFF:I

    .line 50
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "asus_led_indicate_charging"

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/display/AsusLedIndicatorChargingController;->mSettingObserver:Lcom/android/settings/display/AsusLedIndicatorChargingController$SettingObserver;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/settings/display/AsusLedIndicatorChargingController$SettingObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/display/AsusLedIndicatorChargingController$SettingObserver;-><init>(Lcom/android/settings/display/AsusLedIndicatorChargingController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/display/AsusLedIndicatorChargingController;->mSettingObserver:Lcom/android/settings/display/AsusLedIndicatorChargingController$SettingObserver;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "asus_led_indicate_charging"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 2

    .line 85
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_charging_light_up"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 69
    sget-object p1, Lcom/android/settings/display/AsusLedIndicatorChargingController$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/AsusLedIndicatorChargingController;->mSettingObserver:Lcom/android/settings/display/AsusLedIndicatorChargingController$SettingObserver;

    if-eqz p1, :cond_2

    .line 77
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/display/AsusLedIndicatorChargingController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/AsusLedIndicatorChargingController;->mSettingObserver:Lcom/android/settings/display/AsusLedIndicatorChargingController$SettingObserver;

    if-eqz p1, :cond_2

    .line 72
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/display/AsusLedIndicatorChargingController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_charging_light_up"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
