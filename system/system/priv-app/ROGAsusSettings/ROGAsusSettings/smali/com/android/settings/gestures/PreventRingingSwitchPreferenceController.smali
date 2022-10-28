.class public Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PreventRingingSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field mSwitch:Lcom/android/settings/widget/AsusresMainSwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$OckRmGiTU-3B8CTb4VVeKqC26I4(Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->lambda$displayPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroidx/preference/Preference;)Z
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "volume_hush_gesture"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 63
    :goto_0
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/2addr p1, v1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    check-cast p1, Lcom/android/settings/widget/AsusresMainSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/AsusresMainSwitchPreference;

    .line 70
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->prevent_ringing_main_switch_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/asus/commonresx/widget/MainSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/AsusresMainSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/asus/commonresx/widget/MainSwitchPreference;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/AsusresMainSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "gesture_prevent_ringing_switch"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "config_volumeHushGestureEnabled"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 92
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "volume_hush_gesture"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    .line 104
    :goto_0
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/AsusresMainSwitchPreference;

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/asus/commonresx/widget/MainSwitchPreference;->updateStatus(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "volume_hush_gesture"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 87
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/gestures/PreventRingingSwitchPreferenceController;->setChecked(Z)V

    return-void
.end method
