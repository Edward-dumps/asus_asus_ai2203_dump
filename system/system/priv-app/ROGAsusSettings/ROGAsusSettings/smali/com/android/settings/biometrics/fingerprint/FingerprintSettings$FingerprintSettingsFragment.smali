.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintSettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;
    }
.end annotation


# static fields
.field private static sSUPPORT_WAKEUP_LUNLOCK:Z = false


# instance fields
.field private mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field mAuthenticateListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;

.field private mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

.field private mChallenge:J

.field private mDensity:I

.field private mEnrollClicked:Z

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintsRenaming:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFodAnimation:Landroidx/preference/Preference;

.field private mFodIndicator:Landroidx/preference/Preference;

.field private mFooterTitle:Ljava/lang/CharSequence;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mInFingerprintLockout:Z

.field private mLaunchedConfirm:Z

.field mRemovalListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

.field private mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

.field private mSensorId:J

.field private final mSensorPosition:Ljava/lang/String;

.field private mSensorProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:[B

.field private mUnlockDevice:Lcom/android/settings/widget/PrimarySwitchPreference;

.field private mUnlockDeviceCN:Landroidx/preference/Preference;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$5BBqFOeyAgoG-zuMJ1FvFGvWwYU(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->lambda$onCreate$0(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GkH7WMJ0pjS9JPonb9zQqRik75Q(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->lambda$onActivityResult$2(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$dg1NLFntRkgPZi0oeXQsFU0NrFk(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->lambda$showRenameDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDevice:Lcom/android/settings/widget/PrimarySwitchPreference;

    .line 145
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDeviceCN:Landroidx/preference/Preference;

    .line 146
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFodAnimation:Landroidx/preference/Preference;

    .line 147
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFodIndicator:Landroidx/preference/Preference;

    const-string v0, "ro.hardware.fp_position"

    .line 158
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mSensorPosition:Ljava/lang/String;

    const/4 v0, -0x1

    .line 159
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mDensity:I

    .line 204
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;

    .line 231
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    .line 257
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 951
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$6;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;ILjava/lang/String;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->renameFingerPrint(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400()[Landroid/text/InputFilter;
    .locals 1

    .line 131
    invoke-static {}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateFingerprintUseFor()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->highlightFingerprintItem(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)I
    .locals 0

    .line 131
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)J
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mChallenge:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    return p1
.end method

.method private addFingerprintItemPreferences(Landroidx/preference/PreferenceGroup;)V
    .locals 9

    .line 507
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 508
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    .line 511
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    .line 512
    new-instance v6, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;)V

    .line 514
    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    invoke-static {v7}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 516
    invoke-virtual {v6, v5}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 517
    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 518
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$drawable;->asus_ic_fingerprint_ic:I

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 519
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 520
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->isRemovingFingerprint(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 521
    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 523
    :cond_0
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 524
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 526
    :cond_1
    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 527
    invoke-virtual {v6, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 529
    :cond_2
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v1, "key_fingerprint_add"

    .line 530
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 531
    sget v1, Lcom/android/settings/R$string;->fingerprint_add_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 532
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->asus_ic_fingerprint_add:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 533
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 534
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 535
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 536
    new-instance v0, Lcom/android/settings/widget/ButtonPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/ButtonPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "key_fingerprint_confirm"

    .line 537
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 538
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 539
    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_confirm_title:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ButtonPreference;->setButtonText(I)Lcom/android/settings/widget/ButtonPreference;

    .line 540
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ButtonPreference;->setButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ButtonPreference;

    .line 553
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 554
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 6

    .line 460
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 464
    :cond_0
    sget v0, Lcom/android/settings/R$xml;->security_settings_fingerprint:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 465
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/asus/commonresx/AsusResxUtils;->updateLayoutForPreferenceFragmentCompat(Landroidx/preference/PreferenceFragmentCompat;Landroid/view/View;Z)V

    .line 466
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "fingerprint_management"

    .line 467
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    .line 469
    invoke-direct {p0, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->addFingerprintItemPreferences(Landroidx/preference/PreferenceGroup;)V

    const-string v2, "unlock_device_with_fingerprint"

    .line 471
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/PrimarySwitchPreference;

    iput-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDevice:Lcom/android/settings/widget/PrimarySwitchPreference;

    const-string v3, "secure_with_fingerprint"

    .line 473
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 474
    sget-boolean v4, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->sSUPPORT_WAKEUP_LUNLOCK:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isCNSKU()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 475
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDevice:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v4, 0x0

    .line 476
    iput-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDevice:Lcom/android/settings/widget/PrimarySwitchPreference;

    .line 477
    new-instance v4, Landroidx/preference/Preference;

    .line 478
    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDeviceCN:Landroidx/preference/Preference;

    .line 479
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDeviceCN:Landroidx/preference/Preference;

    sget v4, Lcom/android/settings/R$string;->secure_unlock_with_fingerprint_item:I

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 481
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDeviceCN:Landroidx/preference/Preference;

    sget v4, Lcom/android/settings/R$string;->secure_unlock_with_fingerprint_summary:I

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 482
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDeviceCN:Landroidx/preference/Preference;

    const/16 v4, -0x64

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 483
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDeviceCN:Landroidx/preference/Preference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 484
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDeviceCN:Landroidx/preference/Preference;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    const-string v1, "fingerprint_animation"

    .line 486
    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFodAnimation:Landroidx/preference/Preference;

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->getSelectStringId(Landroid/content/ContentResolver;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    const-string v1, "fingerprint_indicator"

    .line 488
    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFodIndicator:Landroidx/preference/Preference;

    const-string v1, "security_indicator"

    .line 489
    invoke-static {v1}, Lcom/android/settings/Utils;->getPreloadIndonesiaStyle(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 490
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFodIndicator:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->getSelectStringId(Landroid/content/ContentResolver;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 493
    :cond_2
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFodIndicator:Landroidx/preference/Preference;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 496
    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v1, :cond_3

    const-string v1, "fingerprint_disable_notice"

    .line 497
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    const-string v1, "fingerprint_notice"

    .line 499
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 502
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-object v0
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFilters()[Landroid/text/InputFilter;
    .locals 3

    .line 1016
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$7;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$7;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .line 929
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 849
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 851
    sget v1, Lcom/android/settings/R$drawable;->preference_highlight:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 854
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private highlightFingerprintItem(I)V
    .locals 3

    .line 858
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 859
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 860
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 862
    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 867
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 868
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v1

    int-to-float v2, v2

    .line 869
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 870
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 871
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x0

    .line 872
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 873
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$5;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/view/View;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private isFingerprintDisabled()Z
    .locals 1

    const-string v0, "device_policy"

    .line 425
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUdfps()Z
    .locals 1

    .line 431
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mSensorProperties:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 432
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onActivityResult$2(Landroid/content/Intent;IIJ)V
    .locals 1

    .line 803
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-static {p3, p1, v0, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 805
    iput-wide p4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mChallenge:J

    int-to-long p2, p2

    .line 806
    iput-wide p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mSensorId:J

    .line 807
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 809
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method private synthetic lambda$showRenameDialog$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 759
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    return-void
.end method

.method private launchChooseOrConfirmLock()V
    .locals 4

    .line 883
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 884
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 885
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v2, 0x65

    .line 886
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->security_settings_fingerprint_preference_title:I

    .line 887
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 888
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 889
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 890
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 891
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 892
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_0

    .line 897
    const-class v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hide_insecure_options"

    .line 898
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 900
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "request_gk_pw_handle"

    .line 901
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x67

    .line 902
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private launchFindSensor(Landroid/content/Intent;)V
    .locals 5

    .line 907
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 908
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v1

    const-string v2, "gk_pw_handle"

    if-eqz v1, :cond_0

    .line 910
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v3

    .line 909
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 912
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 914
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v3

    .line 913
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 919
    :cond_1
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_2

    const-string v1, "android.intent.extra.USER_ID"

    .line 920
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 922
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/BiometricUtils;->copyMultiBiometricExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 923
    iget-wide v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mChallenge:J

    const-string p1, "challenge"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 924
    iget-wide v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mSensorId:J

    const-string p1, "sensor_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p1, 0x68

    .line 925
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private renameFingerPrint(ILjava/lang/String;)V
    .locals 2

    .line 944
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    .line 945
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    return-void
.end method

.method private retryFingerprint()V
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isUdfps()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 325
    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    :cond_1
    return-void
.end method

.method private showRenameDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 10

    .line 748
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;-><init>()V

    .line 749
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 750
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "fingerprint"

    if-eqz v2, :cond_0

    .line 751
    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    .line 752
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    .line 753
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v8

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 754
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 756
    :cond_0
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 758
    :goto_0
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V

    invoke-virtual {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 761
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setDeleteInProgress(Z)V

    .line 762
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 763
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 764
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 765
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->stopAuthentication()V

    return-void
.end method

.method private updateAddPreference()V
    .locals 9

    .line 559
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "key_fingerprint_add"

    .line 561
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 565
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_fingerprintMaxTemplatesPerUser"

    const-string v4, "integer"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 564
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 566
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v2, v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 569
    :goto_0
    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v6, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    const-string v6, "key_fingerprint_confirm"

    .line 570
    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/widget/ButtonPreference;

    if-eqz v6, :cond_3

    .line 571
    invoke-virtual {v6, v5}, Lcom/android/settings/widget/ButtonPreference;->setButtonEnabled(Z)Lcom/android/settings/widget/ButtonPreference;

    :cond_3
    if-nez v5, :cond_4

    .line 572
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->disableWakeUp(Landroid/content/Context;)V

    .line 573
    :cond_4
    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v5}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v5

    if-eqz v2, :cond_5

    .line 575
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->fingerprint_add_max:I

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const-string v1, ""

    .line 576
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_6

    if-nez v5, :cond_6

    .line 577
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private updateFingerprintUseFor()V
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 625
    :goto_0
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDevice:Lcom/android/settings/widget/PrimarySwitchPreference;

    if-eqz v2, :cond_2

    .line 626
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isFingerprintDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDevice:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 628
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDevice:Lcom/android/settings/widget/PrimarySwitchPreference;

    sget v0, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_disabled_on_lockscreen:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 630
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateUnlockDeviceSwitchState()V

    goto :goto_1

    .line 633
    :cond_2
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDeviceCN:Landroidx/preference/Preference;

    if-eqz v2, :cond_4

    .line 634
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->isFingerprintDisabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 635
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDeviceCN:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 636
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDeviceCN:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_disabled_on_lockscreen:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 638
    :cond_3
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDeviceCN:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .line 611
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 612
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    .line 613
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateFingerprintUseFor()V

    return-void
.end method

.method private updateUnlockDeviceSwitchState()V
    .locals 3

    .line 617
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unlock_device_with_fingerprint"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 619
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDevice:Lcom/android/settings/widget/PrimarySwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    .line 620
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-static {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateWakeUpSystemProperty(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2

    .line 934
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->startRemove(Landroid/hardware/fingerprint/Fingerprint;I)V

    .line 935
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 936
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 938
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 940
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateAddPreference()V

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 786
    sget p0, Lcom/android/settings/R$string;->help_url_fingerprint:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x31

    return p0
.end method

.method protected handleError(ILjava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    goto :goto_0

    .line 304
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    goto :goto_0

    .line 296
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 298
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 299
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    if-eqz p1, :cond_3

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 312
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 315
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->retryFingerprint()V

    :cond_4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 791
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x65

    if-eq p1, v2, :cond_3

    const/16 v3, 0x66

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    .line 824
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mEnrollClicked:Z

    const/4 p1, 0x3

    if-ne p2, p1, :cond_8

    .line 826
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 827
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 828
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    :cond_1
    const/16 p2, 0x68

    if-eq p1, p2, :cond_2

    const/16 p2, 0x67

    if-ne p1, p2, :cond_8

    .line 831
    :cond_2
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez p1, :cond_8

    if-eqz p3, :cond_8

    const-string p1, "hw_auth_token"

    .line 832
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-wide/16 p1, -0x1

    const-string v1, "challenge"

    .line 833
    invoke-virtual {p3, v1, p1, p2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mChallenge:J

    const-string p1, "sensor_id"

    .line 834
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mSensorId:J

    goto :goto_2

    .line 793
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    const/4 v1, 0x1

    const-string v3, "FingerprintSettings"

    if-eq p2, v1, :cond_5

    if-ne p2, v0, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "Password not confirmed"

    .line 820
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_2

    :cond_5
    :goto_1
    if-eqz p3, :cond_7

    .line 795
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 796
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p2, :cond_8

    if-ne p1, v2, :cond_8

    .line 797
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {p2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 799
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->launchFindSensor(Landroid/content/Intent;)V

    goto :goto_2

    .line 801
    :cond_6
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_2

    :cond_7
    const-string p1, "Data null or GK PW missing"

    .line 816
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_8
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 348
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 350
    sput-boolean v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->sSUPPORT_WAKEUP_LUNLOCK:Z

    .line 351
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 352
    invoke-static {v1}, Lcom/android/settings/Utils;->getNowDensity(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mDensity:I

    .line 353
    invoke-static {v1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 354
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mSensorProperties:Ljava/util/List;

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hw_auth_token"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    .line 358
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "challenge"

    const-wide/16 v5, -0x1

    .line 359
    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mChallenge:J

    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v4, "authenticate_sidecar"

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    if-nez v2, :cond_0

    .line 364
    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-direct {v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;-><init>()V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    .line 366
    invoke-virtual {v2, v5, v4}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 368
    :cond_0
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 371
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v4, "removal_sidecar"

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    if-nez v2, :cond_1

    .line 373
    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;-><init>()V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    .line 375
    invoke-virtual {v2, v5, v4}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 378
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    invoke-virtual {v2, v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;)V

    .line 380
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-class v4, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    .line 381
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;

    if-eqz v2, :cond_2

    .line 383
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->setDeleteInProgress(Z)V

    .line 386
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const-string v4, "mFingerprintsRenaming"

    .line 390
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    .line 391
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-string v3, "launched_confirm"

    .line 393
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 396
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 397
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "android.intent.extra.USER_ID"

    .line 396
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 400
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    if-nez p1, :cond_4

    .line 401
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    .line 402
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->launchChooseOrConfirmLock()V

    :cond_4
    const/16 p1, 0x20

    .line 406
    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-static {v1, p1, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 408
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    new-instance v3, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;Landroid/app/Activity;)V

    const-string v4, "admin_details"

    invoke-direct {p1, v4, v3}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getHelpResource()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-static {v1, v3, v4}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 414
    new-instance v4, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v5, "url"

    invoke-direct {v4, v1, v5, v3}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v3, :cond_5

    .line 418
    sget v3, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_disclaimer_lockscreen_disabled:I

    goto :goto_0

    .line 419
    :cond_5
    sget v3, Lcom/android/settings/R$string;->security_settings_fingerprint_v2_home_screen:I

    .line 416
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    aput-object v4, v5, v2

    aput-object p1, v5, v0

    invoke-static {v1, v3, v5}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Landroid/content/Context;Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFooterTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public onDeleteClick(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;)V
    .locals 5

    .line 722
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    .line 723
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 724
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    if-eqz v2, :cond_2

    .line 727
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "FingerprintSettings"

    const-string p1, "Fingerprint delete in progress, skipping"

    .line 728
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 731
    :cond_1
    invoke-static {p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;->newInstance(Landroid/hardware/fingerprint/Fingerprint;Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;

    move-result-object p1

    .line 732
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$DeleteFingerprintDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 734
    :cond_2
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;-><init>()V

    .line 736
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    .line 737
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "fingerprint"

    .line 738
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "isProfileChallengeUser"

    .line 739
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 740
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 741
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 742
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;

    .line 743
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 742
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 841
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 842
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    iget-wide v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mChallenge:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 645
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 646
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 647
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 771
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fingerprint_enable_keyguard_toggle"

    .line 772
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "unlock_device_with_fingerprint"

    .line 774
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 776
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDevice:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/PrimarySwitchPreference;->isChecked()Z

    move-result v0

    .line 775
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 777
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateUnlockDeviceSwitchState()V

    goto :goto_0

    .line 779
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown key:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 675
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_fingerprint_add"

    .line 676
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 677
    iput-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mEnrollClicked:Z

    .line 678
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 679
    const-class v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    .line 680
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings"

    .line 679
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 682
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v0, 0xa

    .line 683
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 684
    :cond_0
    instance-of v1, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    if-eqz v1, :cond_1

    .line 685
    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;

    .line 686
    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object p1

    .line 687
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->showRenameDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_1

    :cond_1
    const-string p1, "unlock_device_with_fingerprint"

    .line 689
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 690
    sget-boolean v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->sSUPPORT_WAKEUP_LUNLOCK:Z

    if-eqz v0, :cond_2

    .line 691
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;

    .line 692
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 v0, 0x0

    .line 693
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 694
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 v0, 0x0

    .line 695
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 696
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    .line 698
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDevice:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/PrimarySwitchPreference;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 698
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 701
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateUnlockDeviceSwitchState()V

    goto :goto_1

    :cond_3
    const-string p1, "fingerprint_animation"

    .line 702
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 703
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings.action.FOD_SENSEOR_ANIMATION"

    .line 704
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const-string p1, "fingerprint_indicator"

    .line 706
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 707
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings.action.FOD_SENSEOR_INDICATOR"

    .line 708
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_1
    return v2
.end method

.method public onResume()V
    .locals 2

    .line 595
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mInFingerprintLockout:Z

    .line 599
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mDensity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mDensity:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setDensity(Landroid/app/Activity;I)V

    .line 600
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updatePreferences()V

    .line 601
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    if-eqz v0, :cond_1

    .line 602
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mRemovalListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;)V

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mUnlockDevice:Lcom/android/settings/widget/PrimarySwitchPreference;

    if-eqz v0, :cond_2

    .line 605
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 606
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->updateUnlockDeviceSwitchState()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 669
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mLaunchedConfirm:Z

    const-string v1, "launched_confirm"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 670
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mFingerprintsRenaming:Ljava/util/HashMap;

    const-string v0, "mFingerprintsRenaming"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 659
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method protected removeFingerprintPreference(I)V
    .locals 3

    .line 440
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "FingerprintSettings"

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v2, "fingerprint_management"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroup;

    .line 445
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 446
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove preference with key "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find preference to remove: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
