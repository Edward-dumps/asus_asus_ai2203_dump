.class public Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FacelockStatusPreferenceController.java"


# static fields
.field private static final KEY_FACELOCK_SETTINGS:Ljava/lang/String; = "facelock_settings"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$11OmR0mlFt7otZUzdOtbDKCkM5c(ILjava/lang/String;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController;->lambda$updateState$0(ILjava/lang/String;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "facelock_settings"

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController;->mUserId:I

    .line 41
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static synthetic lambda$updateState$0(ILjava/lang/String;Landroidx/preference/Preference;)Z
    .locals 2

    .line 77
    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 78
    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 79
    invoke-static {p2, v0, p0}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    .line 84
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.USER_ID"

    .line 85
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.asus.faceunlockservice"

    invoke-static {v0, v1}, Lcom/android/settings/biometrics/asusfacelock/FaceUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController;->isUserSupported()Z

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

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method protected getUserId()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController;->mUserId:I

    return p0
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

.method protected isUserSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController;->getUserId()I

    move-result v2

    .line 68
    iget-object v3, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "temp_face_count"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    .line 72
    sget v1, Lcom/android/settings/R$string;->security_settings_facelock_preference_summary:I

    goto :goto_0

    .line 73
    :cond_2
    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_preference_summary_none:I

    .line 72
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 74
    const-class v1, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v3, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v1}, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockStatusPreferenceController;->mContext:Landroid/content/Context;

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
