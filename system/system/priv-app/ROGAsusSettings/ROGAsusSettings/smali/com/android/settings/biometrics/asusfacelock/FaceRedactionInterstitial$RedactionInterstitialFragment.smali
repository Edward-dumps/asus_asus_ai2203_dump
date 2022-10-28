.class public Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FaceRedactionInterstitial.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedactionInterstitialFragment"
.end annotation


# instance fields
.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

.field private mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;)Landroid/content/Intent;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->getFinishIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private checkNotificationFeaturesAndSetDisabled(Lcom/android/settings/RestrictedRadioButton;I)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 151
    invoke-static {v0, p2, p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 153
    invoke-virtual {p1, p0}, Lcom/android/settings/RestrictedRadioButton;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method private getFinishIntent()Landroid/content/Intent;
    .locals 2

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private loadFromSettings()V
    .locals 6

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v2, "lock_screen_show_notifications"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v5, "lock_screen_allow_private_notifications"

    invoke-static {v2, v5, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 161
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "facelock_reveal_notify"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v3, v1

    .line 164
    :cond_2
    sget v1, Lcom/android/settings/R$id;->hide_all:I

    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    .line 166
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {v0}, Lcom/android/settings/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    sget v1, Lcom/android/settings/R$id;->show_all:I

    goto :goto_2

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {v0}, Lcom/android/settings/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_4

    .line 169
    sget v1, Lcom/android/settings/R$id;->redact_sensitive:I

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 174
    sget v1, Lcom/android/settings/R$id;->use_bio:I

    .line 177
    :cond_5
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method private setHeader(Landroid/widget/TextView;Landroid/widget/ImageView;I)V
    .locals 0

    .line 202
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintImageView(Landroid/widget/ImageView;I)V

    .line 204
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4a

    return p0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    .line 182
    sget p1, Lcom/android/settings/R$id;->show_all:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 183
    :goto_0
    sget v2, Lcom/android/settings/R$id;->hide_all:I

    if-eq p2, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 184
    :goto_1
    sget v3, Lcom/android/settings/R$id;->use_bio:I

    if-ne p2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 186
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 187
    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v3, "lock_screen_allow_private_notifications"

    .line 186
    invoke-static {p2, v3, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 189
    iget p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v1, "lock_screen_show_notifications"

    .line 188
    invoke-static {p1, v1, v2, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "facelock_reveal_notify"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 84
    sget p0, Lcom/android/settings/R$layout;->redaction_interstitial_bio:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 85
    invoke-static {}, Lcom/android/settings/Utils;->isSupportFlipCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    sget p1, Lcom/android/settings/R$id;->radio_group:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    .line 87
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->removeViewAt(I)V

    :cond_0
    return-object p0
.end method

.method public onResume()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/settings/RestrictedRadioButton;I)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/settings/RestrictedRadioButton;I)V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->loadFromSettings()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    sget p2, Lcom/android/settings/R$id;->title_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/android/settings/R$id;->unlock_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    sget v1, Lcom/android/settings/R$string;->lockscreen_settings_title:I

    invoke-direct {p0, p2, v0, v1}, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->setHeader(Landroid/widget/TextView;Landroid/widget/ImageView;I)V

    .line 98
    sget p2, Lcom/android/settings/R$id;->radio_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 99
    sget p2, Lcom/android/settings/R$id;->show_all:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/RestrictedRadioButton;

    iput-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    .line 100
    sget p2, Lcom/android/settings/R$id;->redact_sensitive:I

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/RestrictedRadioButton;

    iput-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    .line 103
    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    invoke-static {p2, v0}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 107
    sget p2, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifications_interstitial_message_profile:I

    .line 108
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_show_profile:I

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setText(I)V

    .line 110
    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifications_summary_hide_profile:I

    .line 111
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setText(I)V

    .line 114
    sget p2, Lcom/android/settings/R$id;->hide_all:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/high16 v0, 0x4000000

    .line 118
    invoke-virtual {p2, v0}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 119
    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 122
    sget p2, Lcom/android/settings/R$id;->redaction_done_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 124
    new-instance p2, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment$1;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FaceRedactionInterstitial$RedactionInterstitialFragment;Landroid/widget/Button;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
