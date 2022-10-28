.class public Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BluetoothPrimarySwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

.field private mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mBtPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

.field private mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field private mSummaryUpdater:Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/settings/bluetooth/RestrictionUtils;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/RestrictionUtils;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/RestrictionUtils;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/RestrictionUtils;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 42
    new-instance p1, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;->mSummaryUpdater:Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;

    .line 43
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 44
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1, p2}, Lcom/android/settings/overlay/FeatureFactory;->getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "bluetooth_settings"

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/PrimarySwitchPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;->mBtPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    .line 52
    new-instance v6, Lcom/android/settings/widget/PrimarySwitchController;

    invoke-direct {v6, p1}, Lcom/android/settings/widget/PrimarySwitchController;-><init>(Lcom/android/settings/widget/PrimarySwitchPreference;)V

    .line 53
    new-instance p1, Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    const/16 v4, 0x366

    move-object v0, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;ILcom/android/settings/bluetooth/RestrictionUtils;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 58
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->bluetooth_settings:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/PrimarySwitchController;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_settings"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;->mSummaryUpdater:Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 74
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;->mSummaryUpdater:Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->register(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onSummaryChanged(Ljava/lang/String;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPrimarySwitchPreferenceController;->mBtPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
