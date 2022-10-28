.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintSettingsConfirmFragment"
.end annotation


# instance fields
.field mAuthenticateListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;

.field private mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

.field private final mFingerprintLockoutReset:Ljava/lang/Runnable;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mInFingerprintLockout:Z

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 173
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mAuthenticateListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;

    .line 200
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mHandler:Landroid/os/Handler;

    .line 469
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$5;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;)Landroid/os/Handler;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;I)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->highlightFingerprintItem(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->retryFingerprint()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mInFingerprintLockout:Z

    return p1
.end method

.method private addFingerprintItemPreferences(Landroidx/preference/PreferenceGroup;)V
    .locals 8

    .line 368
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 369
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 372
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    .line 373
    new-instance v5, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintPreference;-><init>(Landroid/content/Context;)V

    .line 374
    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->genKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {v5, v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 377
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/settings/R$drawable;->asus_ic_fingerprint_ic_white:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v6, -0x7f000001

    .line 380
    invoke-static {v4, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 382
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 383
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    sget v1, Lcom/android/settings/R$drawable;->preference_highlight_fingerprint_confirm:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 437
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private highlightFingerprintItem(I)V
    .locals 5

    .line 441
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->genKey(I)Ljava/lang/String;

    move-result-object p1

    .line 442
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintPreference;

    .line 443
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 445
    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintPreference;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v1

    int-to-float v2, v2

    .line 449
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 450
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 458
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment$4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;Landroid/view/View;)V

    const-wide/16 p0, 0x4b0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private retryFingerprint()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 259
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mInFingerprintLockout:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->startAuthentication(I)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mAuthenticateListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;

    invoke-virtual {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;)V

    :cond_2
    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 403
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->retryFingerprint()V

    return-void
.end method


# virtual methods
.method public createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 1

    .line 344
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 348
    :cond_0
    sget v0, Lcom/android/settings/R$xml;->security_settings_fingerprint_confirm:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 349
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 351
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->addFingerprintItemPreferences(Landroidx/preference/PreferenceGroup;)V

    .line 353
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-object v0
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

    goto :goto_0

    .line 238
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mInFingerprintLockout:Z

    goto :goto_0

    .line 230
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mInFingerprintLockout:Z

    .line 232
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 233
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mFingerprintLockoutReset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7918

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mInFingerprintLockout:Z

    if-eqz p1, :cond_3

    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 246
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 249
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->retryFingerprint()V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 272
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 275
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "authenticate_sidecar"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    if-nez p1, :cond_0

    .line 280
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-direct {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    .line 282
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 284
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 288
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    .line 287
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mUserId:I

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 424
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 408
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 409
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 410
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->setListener(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;)V

    .line 411
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mAuthenticateSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->stopAuthentication()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 394
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->mInFingerprintLockout:Z

    .line 398
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettingsConfirm$FingerprintSettingsConfirmFragment;->updatePreferences()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 293
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 295
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    if-nez p2, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 297
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    .line 299
    invoke-virtual {p2, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 300
    invoke-static {p0, v0}, Lcom/android/settingslib/widget/ThemeUtils;->setLightStatusBar(Landroid/app/Activity;Z)V

    .line 301
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 304
    invoke-static {p2, v1}, Lcom/android/settingslib/widget/ThemeUtils;->setViewBackgroundColor(Landroid/view/View;I)V

    .line 305
    sget p2, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/android/settingslib/widget/ThemeUtils;->setViewBackgroundColor(Landroid/view/View;I)V

    .line 306
    invoke-static {p1, v1}, Lcom/android/settingslib/widget/ThemeUtils;->setViewBackgroundColor(Landroid/view/View;I)V

    .line 309
    :cond_0
    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    .line 310
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    sget p2, Lcom/android/settings/R$id;->collapsing_toolbar:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/asus/commonresx/widget/AdjustableToolbarLayout;

    const/4 p2, -0x1

    .line 313
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleColor(I)V

    .line 314
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(I)V

    .line 315
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getChildCount()I

    move-result p0

    if-ge v0, p0, :cond_2

    .line 318
    invoke-virtual {p1, v0}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 319
    instance-of v1, p0, Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 321
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 323
    check-cast p0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected refreshAdapter()V
    .locals 1

    .line 417
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 419
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
