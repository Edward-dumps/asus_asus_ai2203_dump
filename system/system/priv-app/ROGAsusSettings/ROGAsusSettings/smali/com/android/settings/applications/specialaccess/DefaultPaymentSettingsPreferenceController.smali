.class public Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DefaultPaymentSettingsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPaymentSettingsEnabler:Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 49
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 51
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Get NfcAdapter failed, err: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultPaymentSettingsPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentSettingsEnabler:Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 66
    new-instance v0, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;-><init>(Landroid/content/Context;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentSettingsEnabler:Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.nfc.hce"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x4

    return p0

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez p0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 96
    :cond_2
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentSettingsEnabler:Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/DefaultPaymentSettingsPreferenceController;->mPaymentSettingsEnabler:Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/PaymentSettingsEnabler;->resume()V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
