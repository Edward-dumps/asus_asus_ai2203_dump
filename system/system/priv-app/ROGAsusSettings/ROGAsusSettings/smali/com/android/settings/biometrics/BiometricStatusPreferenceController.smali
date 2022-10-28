.class public abstract Lcom/android/settings/biometrics/BiometricStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BiometricStatusPreferenceController.java"


# instance fields
.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected final mProfileChallengeUserId:I

.field protected final mUm:Landroid/os/UserManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mUserId:I

    const-string v0, "user"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mUm:Landroid/os/UserManager;

    .line 78
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v1

    .line 80
    invoke-interface {v1, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 81
    invoke-static {v0, p2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mProfileChallengeUserId:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->isDeviceSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->isUserSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x4

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

.method protected abstract getEnrollClassName()Ljava/lang/String;
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getSettingsClassName()Ljava/lang/String;
.end method

.method protected abstract getSummaryTextEnrolled()Ljava/lang/String;
.end method

.method protected abstract getSummaryTextNoneEnrolled()Ljava/lang/String;
.end method

.method protected getUserId()I
    .locals 0

    .line 141
    iget p0, p0, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->mUserId:I

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 113
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getUserId()I

    move-result v2

    .line 120
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 124
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getSettingsClassName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "com.android.settings"

    .line 128
    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 130
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const-string p0, "android.intent.extra.USER_ID"

    .line 132
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "from_settings_summary"

    const/4 p1, 0x1

    .line 133
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "page_transition_type"

    .line 134
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return p1
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method protected abstract hasEnrolledBiometrics()Z
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method protected abstract isDeviceSupported()Z
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

.method protected isUserSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 100
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 104
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->hasEnrolledBiometrics()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getSummaryTextEnrolled()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getSummaryTextNoneEnrolled()Ljava/lang/String;

    move-result-object v1

    .line 106
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
