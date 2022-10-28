.class public Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;
.super Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;
.source "FacelockSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceLockSettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;
    }
.end annotation


# static fields
.field private static mService:Lcom/asus/faceunlockservice/IFaceUnlockService;

.field private static final sSUPPORT_WAKEUP_LUNLOCK:Z


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mHasSavedInstanceState:Z

.field private mIsBound:Z

.field private mLaunchedConfirm:Z

.field private mLaunchedIntroduction:Z

.field private mRevealNotification:Landroidx/preference/SwitchPreference;

.field private mSecureIdleCheck:Landroidx/preference/SwitchPreference;

.field private mTime:J

.field private mToken:[B

.field private mUnlockDevice:Landroidx/preference/SwitchPreference;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.asus.fp.wakeup_support"

    const/4 v1, 0x0

    .line 131
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->sSUPPORT_WAKEUP_LUNLOCK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mIsBound:Z

    .line 161
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;)J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;J)J
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mTime:J

    return-wide p1
.end method

.method static synthetic access$100()Lcom/asus/faceunlockservice/IFaceUnlockService;
    .locals 1

    .line 113
    sget-object v0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mService:Lcom/asus/faceunlockservice/IFaceUnlockService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/asus/faceunlockservice/IFaceUnlockService;)Lcom/asus/faceunlockservice/IFaceUnlockService;
    .locals 0

    .line 113
    sput-object p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mService:Lcom/asus/faceunlockservice/IFaceUnlockService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;Z)Z
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mIsBound:Z

    return p1
.end method

.method private addFacelockItemPreferences(Landroidx/preference/PreferenceGroup;)V
    .locals 4

    .line 340
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 342
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->getFaceCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 344
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x101008d

    invoke-direct {v0, v1, v2, v3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, "face_data_remove"

    .line 345
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 346
    sget v1, Lcom/android/settings/R$string;->face_data_remove_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v1, 0x1

    .line 347
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 348
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 349
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private bindService()V
    .locals 3

    .line 211
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mIsBound:Z

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mTime:J

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.asus.faceunlockservice"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "service.remote"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 3

    .line 310
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 314
    :cond_0
    sget v0, Lcom/android/settings/R$xml;->security_settings_facelock:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 315
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "facelock_management"

    .line 321
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    .line 324
    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->addFacelockItemPreferences(Landroidx/preference/PreferenceGroup;)V

    const-string v1, "secure_with_facelock"

    .line 326
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_1

    const-string v2, "unlock_device_with_facelock"

    .line 328
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mUnlockDevice:Landroidx/preference/SwitchPreference;

    const-string v2, "reveal_notify_with_facelock"

    .line 329
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mRevealNotification:Landroidx/preference/SwitchPreference;

    const-string v2, "secure_check_with_facelock"

    .line 330
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mSecureIdleCheck:Landroidx/preference/SwitchPreference;

    .line 331
    invoke-static {}, Lcom/android/settings/Utils;->isSupportFlipCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mRevealNotification:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-object v0
.end method

.method private getFaceCount()I
    .locals 0

    .line 375
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->getFaceTempCount()I

    move-result p0

    return p0
.end method

.method private getFaceTempCount()I
    .locals 2

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "temp_face_count"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private isToggled(Landroidx/preference/Preference;)Z
    .locals 0

    .line 298
    instance-of p0, p1, Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_0

    .line 299
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private launchChooseOrConfirmLock()V
    .locals 4

    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 413
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 414
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v2, 0x65

    .line 415
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->security_settings_facelock_preference_title:I

    .line 416
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 417
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mUserId:I

    .line 418
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 419
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 420
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    const-class v1, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hide_insecure_options"

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "request_gk_pw_handle"

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x67

    .line 431
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private maybeLauncheIntroduction()Z
    .locals 3

    .line 397
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->getFaceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 400
    const-class v1, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 403
    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x67

    .line 404
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mLaunchedIntroduction:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showRemoveDialog()V
    .locals 2

    .line 442
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;-><init>()V

    .line 444
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateFacelockUseFor()V
    .locals 5

    .line 379
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mUnlockDevice:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "facelock_unlock_device"

    .line 380
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mUnlockDevice:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->getFaceCount()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mRevealNotification:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_5

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "facelock_reveal_notify"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mRevealNotification:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->getFaceCount()I

    move-result v3

    if-lez v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 390
    :cond_5
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mSecureIdleCheck:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_8

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "facelock_secure_idle_check"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_4

    :cond_6
    move v3, v2

    :goto_4
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mRevealNotification:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->getFaceCount()I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 305
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->updateFacelockUseFor()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 222
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v0, 0x67

    if-ne p1, v0, :cond_4

    :cond_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    .line 234
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->finish()V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    const-string p1, "hw_auth_token"

    .line 229
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mToken:[B

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 185
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "hw_auth_token"

    .line 187
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mToken:[B

    const-string v1, "launched_confirm"

    .line 189
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mLaunchedConfirm:Z

    const-string v1, "launched_introduction"

    .line 191
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mLaunchedIntroduction:Z

    .line 194
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 195
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    .line 194
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mUserId:I

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move v0, v1

    .line 199
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mHasSavedInstanceState:Z

    if-eqz v0, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->maybeLauncheIntroduction()Z

    move-result p1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mLaunchedIntroduction:Z

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mToken:[B

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mLaunchedConfirm:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    .line 205
    iput-boolean v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mLaunchedConfirm:Z

    .line 206
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->launchChooseOrConfirmLock()V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 257
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 258
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mIsBound:Z

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 275
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unlock_device_with_facelock"

    .line 278
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->isToggled(Landroidx/preference/Preference;)Z

    move-result p0

    const-string p1, "facelock_unlock_device"

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string v1, "reveal_notify_with_facelock"

    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->isToggled(Landroidx/preference/Preference;)Z

    move-result p0

    const-string p1, "facelock_reveal_notify"

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string v1, "secure_check_with_facelock"

    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->isToggled(Landroidx/preference/Preference;)Z

    move-result p0

    const-string p1, "facelock_secure_idle_check"

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const-string p1, "face_data_remove"

    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 288
    iget-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mIsBound:Z

    if-eqz p1, :cond_3

    .line 289
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->showRemoveDialog()V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 246
    invoke-super {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->onResume()V

    .line 249
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mIsBound:Z

    if-nez v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->bindService()V

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->updatePreferences()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 268
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mLaunchedConfirm:Z

    const-string v1, "launched_confirm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    iget-boolean p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->mLaunchedIntroduction:Z

    const-string v0, "launched_introduction"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
